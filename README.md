# Terraform Module: Kubernetes Cluster en UpCloud ☁️

Este módulo despliega un **cluster Kubernetes** completo en UpCloud con un grupo de nodos configurable.

---

## 🚀 Requirements

| Name | Version |
|------|---------|
| [upcloud](https://registry.terraform.io/providers/UpCloudLtd/upcloud/latest) | 5.28.0 |

---

## 🔌 Providers

| Name | Version |
|------|---------|
| [upcloud](https://registry.terraform.io/providers/UpCloudLtd/upcloud/latest) | 5.28.0 |

---

## 🧩 Modules

No se utilizan módulos externos.

---

## 📦 Resources

| Name | Type |
|------|------|
| [upcloud_kubernetes_cluster.main](https://registry.terraform.io/providers/UpCloudLtd/upcloud/5.28.0/docs/resources/kubernetes_cluster) | resource |
| [upcloud_kubernetes_node_group.main](https://registry.terraform.io/providers/UpCloudLtd/upcloud/5.28.0/docs/resources/kubernetes_node_group) | resource |

---

## ⚙️ Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `anti_affinity` | Indica si se debe aplicar afinidad anti a los nodos | `bool` | `false` | no |
| `cluster_name` | Nombre del cluster Kubernetes | `string` | n/a | yes |
| `control_plane_ip_filter` | Filtrado de IP para el plano de control | `list(string)` | `["0.0.0.0/0"]` | no |
| `labels` | Etiquetas para el cluster Kubernetes | `map(string)` | `{}` | no |
| `network_cidr` | CIDR para la red del cluster | `string` | n/a | yes |
| `network_id` | ID de la red para el cluster | `string` | n/a | yes |
| `node_count` | Número de nodos en el grupo | `number` | `2` | no |
| `node_group_name` | Nombre del grupo de nodos | `string` | `"default-node-group"` | no |
| `node_plan` | Plan de los nodos | `string` | `"1xCPU-2GB"` | no |
| `plan` | Plan de los nodos | `string` | `"dev-md"` | no |
| `private_node_groups` | Indica si los grupos de nodos son privados | `bool` | `true` | no |
| `ssh_keys` | Clave SSH para acceso a los nodos | `set(string)` | `[]` | no |
| `storage_encryption` | Indica si el almacenamiento está encriptado | `string` | `"data-at-rest"` | no |
| `storage_size` | Tamaño del almacenamiento para cada nodo (GB) | `number` | `50` | no |
| `tags` | Etiquetas para los recursos | `list(string)` | `[]` | no |
| `uks_version` | Versión de Kubernetes para el cluster | `string` | `"1.32"` | no |
| `upgrade_strategy_type` | Estrategia de actualización del cluster | `string` | `"manual"` | no |
| `utility_network_access` | Indica si los nodos tienen acceso a la red de utilidades | `bool` | `true` | no |
| `zone` | Zona donde desplegar el cluster | `string` | n/a | yes |

---

## 🎯 Outputs

| Name | Description |
|------|-------------|
| `cluster_id` | ID del cluster Kubernetes |
| `cluster_name` | Nombre del cluster Kubernetes |
| `cluster_state` | Estado del cluster Kubernetes |
| `node_group_id` | ID del grupo de nodos |
