terraform {
  required_providers {
    upcloud = {
      source  = "UpCloudLtd/upcloud"
      version = "5.28.0"
    }
  }
}

# Cluster Kubernetes
resource "upcloud_kubernetes_cluster" "main" {
  name    = var.cluster_name
  network = var.network_id
  zone    = var.zone
  plan    = var.plan # Development, Production

  control_plane_ip_filter = var.control_plane_ip_filter

  labels = var.labels

  private_node_groups   = var.private_node_groups
  storage_encryption    = var.storage_encryption
  upgrade_strategy_type = var.upgrade_strategy_type

  version = var.uks_version

}

# Grupo de nodos del cluster
resource "upcloud_kubernetes_node_group" "main" {
  cluster                = upcloud_kubernetes_cluster.main.id
  name                   = var.node_group_name
  node_count             = var.node_count
  plan                   = var.node_plan
  anti_affinity          = var.anti_affinity
  storage_encryption     = var.storage_encryption
  utility_network_access = var.utility_network_access

  # Configuración de SSH
  ssh_keys = var.ssh_keys

  labels = {
    nodegroup = var.node_group_name
  }
}
