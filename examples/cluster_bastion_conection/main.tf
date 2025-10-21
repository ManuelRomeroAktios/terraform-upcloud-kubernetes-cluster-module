# Create a network for the Kubernetes cluster
resource "upcloud_network" "example" {
  name = "example-network-${var.customer}"
  zone = var.zone
  ip_network {
    address = "172.16.1.0/24"
    dhcp    = true
    family  = "IPv4"
  }

  # UpCloud Kubernetes Service will add a router to this network to ensure cluster networking is working as intended.
  # You need to ignore changes to it, otherwise TF will attempt to detach the router on subsequent applies
  lifecycle {
    ignore_changes = [router]
  }
  
}

module "kubernetes-cluster-module" {
  source  = "manuelromeroaktios/kubernetes-cluster-module/upcloud"
  version = "v1.0.4"

  # Restrict access to the cluster control plane to the internal IPs of the load balancer
  cluster_name = "exampleapp-cluster-${var.customer}"
  # Attach the cluster to the network resource (not the load balancer resource id)
  network_id      = upcloud_network.example.id
  zone            = var.zone
  node_count      = 2
  node_group_name = "exampleapp-nodegroup-${var.customer}"
  plan            = "dev-md"

  labels = {
    managedBy = "terraform"
  }

}

# Example server resource as Bastion host to access the Kubernetes cluster
resource "upcloud_server" "example" {
  hostname = "bastion-${var.customer}"
  zone     = var.zone
  plan     = "1xCPU-1GB"

  # The metadata service must be enabled when using recent cloud-init based templates.
  metadata = true

  template {
    storage = "Ubuntu Server 24.04 LTS (Noble Numbat)"
    size    = 25
  }

  network_interface {
    type = "public"
  }
  network_interface {
    type    = "private"
    network = upcloud_network.example.id
  }

}
