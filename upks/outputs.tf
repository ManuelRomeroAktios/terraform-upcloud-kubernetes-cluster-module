output "cluster_id" {
  description = "ID del cluster Kubernetes"
  value       = upcloud_kubernetes_cluster.main.id
}

output "cluster_name" {
  description = "Nombre del cluster Kubernetes"
  value       = upcloud_kubernetes_cluster.main.name
}

output "cluster_state" {
  description = "Estado del cluster Kubernetes"
  value       = upcloud_kubernetes_cluster.main.state
}

output "node_group_id" {
  description = "ID del grupo de nodos"
  value       = upcloud_kubernetes_node_group.main.id
}
