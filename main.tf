# -------------------------------
# Kubernetes Cluster Resource
# -------------------------------
# This resource creates a managed Kubernetes cluster in UpCloud.
# Key configurations include network, zone, plan, version, and control plane access restrictions.
resource "upcloud_kubernetes_cluster" "main" {
  # The name of the Kubernetes cluster.
  name = var.cluster_name

  # The network ID where the cluster will be deployed.
  network = var.network_id

  # The availability zone for the cluster.
  zone = var.zone

  # The plan for the control plane nodes (e.g., development, production).
  plan = var.plan

  # Optional: Restrict access to the control plane by IP addresses.
  control_plane_ip_filter = var.control_plane_ip_filter

  # Optional: User-defined labels for organizational purposes.
  labels = var.labels

  # Whether the node groups are private (no public IPs).
  private_node_groups = var.private_node_groups

  # Type of storage encryption applied to cluster volumes.
  storage_encryption = var.storage_encryption

  # Cluster upgrade strategy: manual or automatic.
  upgrade_strategy_type = var.upgrade_strategy_type

  # Kubernetes version to deploy.
  version = var.uks_version

  # Ensure external dependencies (like network/router) are created before the cluster.
  depends_on = var.network_depends_on
}

# -------------------------------
# Kubernetes Node Group Resource
# -------------------------------
# This resource creates a group of nodes attached to the Kubernetes cluster.
# Each node group can have its own plan, size, and access policies.
resource "upcloud_kubernetes_node_group" "main" {
  # Associate this node group with the main Kubernetes cluster.
  cluster = upcloud_kubernetes_cluster.main.id

  # Name of the node group.
  name = var.node_group_name

  # Number of nodes in this group.
  node_count = var.node_count

  # Plan for the nodes (CPU, memory configuration).
  plan = var.node_plan

  # Whether nodes should avoid running on the same physical host (anti-affinity).
  anti_affinity = var.anti_affinity

  # Encryption applied to node storage volumes.
  storage_encryption = var.storage_encryption

  # Access to UpCloud utility network (for internal services).
  utility_network_access = var.utility_network_access

  # -------------------------------
  # SSH Key Configuration
  # -------------------------------
  # SSH keys for secure access to the nodes.
  ssh_keys = var.ssh_keys

  # Labels for node group identification and organization.
  labels = {
    nodegroup = var.node_group_name
  }
}
