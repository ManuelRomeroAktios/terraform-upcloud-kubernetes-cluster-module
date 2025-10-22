# -------------------------------
# Required Cluster Variables
# -------------------------------

variable "cluster_name" {
  description = "The name of the Kubernetes cluster."
  type        = string
}

variable "zone" {
  description = "The availability zone where the cluster will be deployed."
  type        = string
}

variable "network_id" {
  description = "ID of the network where the cluster will reside."
  type        = string
}

# -------------------------------
# Node Group Configuration
# -------------------------------

variable "node_group_name" {
  description = "Name of the node group."
  type        = string
  default     = "default-node-group"
}

variable "node_count" {
  description = "Number of nodes in the node group."
  type        = number
  default     = 2
}

variable "node_plan" {
  description = "Compute plan for the nodes (CPU/Memory configuration)."
  type        = string
  default     = "1xCPU-2GB"
}

variable "plan" {
  description = "Cluster plan type (e.g., development or production)."
  type        = string
  default     = "dev-md"
}

variable "storage_size" {
  description = "Disk size (GB) for each node."
  type        = number
  default     = 50
}

# -------------------------------
# Cluster Metadata
# -------------------------------

variable "tags" {
  description = "List of tags applied to all resources for identification or billing purposes."
  type        = list(string)
  default     = []
}

variable "labels" {
  description = "Map of labels applied to the Kubernetes cluster."
  type        = map(string)
  default     = {}
}

# -------------------------------
# Security and Access Control
# -------------------------------

variable "control_plane_ip_filter" {
  description = "List of IP addresses allowed to access the Kubernetes control plane."
  type        = list(string)
  default     = ["0.0.0.0/0"] # Allow all by default, restrict in production!
}

variable "private_node_groups" {
  description = "Whether node groups are private (no public IP addresses)."
  type        = bool
  default     = true
}

variable "ssh_keys" {
  description = "Set of SSH public keys for node access."
  type        = set(string)
  default     = []
}

variable "anti_affinity" {
  description = "Enable anti-affinity to distribute nodes across physical hosts."
  type        = bool
  default     = false
}

variable "utility_network_access" {
  description = "Whether nodes have access to the UpCloud utility network."
  type        = bool
  default     = true
}

# -------------------------------
# Cluster Management
# -------------------------------

variable "storage_encryption" {
  description = "Type of storage encryption for node volumes (e.g., data-at-rest)."
  type        = string
  default     = "data-at-rest"
}

variable "upgrade_strategy_type" {
  description = "Cluster upgrade strategy: manual or automatic."
  type        = string
  default     = "manual"
}

variable "uks_version" {
  description = "Kubernetes version to deploy for the cluster."
  type        = string
  default     = "1.32"
}
