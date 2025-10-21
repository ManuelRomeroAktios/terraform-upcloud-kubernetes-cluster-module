# -------------------------------
# Kubernetes Cluster Outputs
# -------------------------------

output "cluster_id" {
  description = "The unique identifier (ID) of the Kubernetes cluster. Useful for referencing the cluster in other modules or API calls."
  value       = upcloud_kubernetes_cluster.main.id
}

output "cluster_name" {
  description = "The name of the Kubernetes cluster. Can be used for display purposes, tagging, or cross-module references."
  value       = upcloud_kubernetes_cluster.main.name
}

output "cluster_state" {
  description = "The current state of the Kubernetes cluster (e.g., running, stopped). Useful for automation scripts or conditional logic."
  value       = upcloud_kubernetes_cluster.main.state
}

# -------------------------------
# Kubernetes Node Group Outputs
# -------------------------------

output "node_group_id" {
  description = "The unique identifier (ID) of the node group. Can be used to manage or reference the node group in other modules or scripts."
  value       = upcloud_kubernetes_node_group.main.id
}
