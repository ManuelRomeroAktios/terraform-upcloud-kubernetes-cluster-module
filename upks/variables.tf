variable "cluster_name" {
  description = "Nombre del cluster Kubernetes"
  type        = string
}

variable "zone" {
  description = "Zona donde desplegar el cluster"
  type        = string
}

variable "network_cidr" {
  description = "CIDR para la red del cluster"
  type        = string
}

variable "network_id" {
  description = "ID de la red para el cluster"
  type        = string
}
variable "node_group_name" {
  description = "Nombre del grupo de nodos"
  type        = string
  default     = "default-node-group"
}

variable "node_count" {
  description = "Número de nodos en el grupo"
  type        = number
  default     = 2
}

variable "plan" {
  description = "Plan de los nodos"
  type        = string
  default     = "dev-md"
}

variable "storage_size" {
  description = "Tamaño del almacenamiento para cada nodo (GB)"
  type        = number
  default     = 50
}

variable "tags" {
  description = "Etiquetas para los recursos"
  type        = list(string)
  default     = []
}

variable "control_plane_ip_filter" {
  description = "Filtrado de IP para el plano de control"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "node_plan" {
  description = "Plan de los nodos"
  type        = string
  default     = "1xCPU-2GB"
}

variable "labels" {
  description = "Etiquetas para el cluster Kubernetes"
  type        = map(string)
  default     = {}
}

variable "private_node_groups" {
  description = "Indica si los grupos de nodos son privados"
  type        = bool
  default     = true
}

variable "storage_encryption" {
  description = "Indica si el almacenamiento está encriptado"
  type        = string
  default     = "data-at-rest"
}

variable "upgrade_strategy_type" {
  description = "Estrategia de actualización del cluster"
  type        = string
  default     = "manual"
}

variable "uks_version" {
  description = "Versión de Kubernetes para el cluster"
  type        = string
  default     = "1.32"
}

variable "anti_affinity" {
  description = "Indica si se debe aplicar afinidad anti a los nodos"
  type        = bool
  default     = false
}

variable "utility_network_access" {
  description = "Indica si los nodos tienen acceso a la red de utilidades"
  type        = bool
  default     = true
}

variable "ssh_keys" {
  description = "Clave SSH para acceso a los nodos"
  type        = set(string)
  default     = []
}
