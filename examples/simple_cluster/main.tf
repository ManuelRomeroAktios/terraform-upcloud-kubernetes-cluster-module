# examples/simple_cluster/main.tf
# -------------------------------
# Example usage of the Kubernetes Cluster module
# -------------------------------

provider "upcloud" {
  # Ensure credentials are set via environment variables:
  # UPCLOUD_USERNAME and UPCLOUD_PASSWORD
}

module "k8s_cluster" {
  source       = "manuelromeroaktios/kubernetes-cluster-module/upcloud"
  version      = "v1.0.2"
  cluster_name = "example-cluster"
  zone         = "fi-hel1"
  network_id   = "123456"
  network_cidr = "10.0.0.0/24"

  node_count          = 3
  node_group_name     = "worker-nodes"
  node_plan           = "2xCPU-4GB"
  private_node_groups = true
  uks_version         = "1.32"

  ssh_keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCy..."
  ]

  labels = {
    environment = "dev"
    team        = "cloud"
  }

  tags = ["k8s", "upcloud", "example"]
}

output "cluster_id" {
  description = "The Kubernetes cluster ID"
  value       = module.k8s_cluster.cluster_id
}

output "node_group_id" {
  description = "The node group ID"
  value       = module.k8s_cluster.node_group_id
}
