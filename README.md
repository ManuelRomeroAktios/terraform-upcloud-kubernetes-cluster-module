# Terraform Module: Kubernetes Cluster on UpCloud ☁️

This module deploys a **fully managed Kubernetes cluster** on UpCloud with a configurable node group.

---

## 🚀 Requirements

| Name                                                                         | Version |
| ---------------------------------------------------------------------------- | ------- |
| [upcloud](https://registry.terraform.io/providers/UpCloudLtd/upcloud/latest) | 5.28.0  |

---

## 🔌 Providers

| Name                                                                         | Version |
| ---------------------------------------------------------------------------- | ------- |
| [upcloud](https://registry.terraform.io/providers/UpCloudLtd/upcloud/latest) | 5.28.0  |

---

## 🧩 Modules

No external modules are used.

---

## 📦 Resources

| Name                                                                                                                                         | Type     |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [upcloud_kubernetes_cluster.main](https://registry.terraform.io/providers/UpCloudLtd/upcloud/5.28.0/docs/resources/kubernetes_cluster)       | resource |
| [upcloud_kubernetes_node_group.main](https://registry.terraform.io/providers/UpCloudLtd/upcloud/5.28.0/docs/resources/kubernetes_node_group) | resource |

---

## ⚙️ Inputs

| Name                      | Description                                                    | Type           | Default                | Required |
| ------------------------- | -------------------------------------------------------------- | -------------- | ---------------------- | :------: |
| `anti_affinity`           | Indicates whether anti-affinity should be applied to the nodes | `bool`         | `false`                |    no    |
| `cluster_name`            | Name of the Kubernetes cluster                                 | `string`       | n/a                    |   yes    |
| `control_plane_ip_filter` | IP filtering for the control plane                             | `list(string)` | `["0.0.0.0/0"]`        |    no    |
| `labels`                  | Labels for the Kubernetes cluster                              | `map(string)`  | `{}`                   |    no    |
| `network_cidr`            | CIDR for the cluster network                                   | `string`       | n/a                    |   yes    |
| `network_id`              | Network ID for the cluster                                     | `string`       | n/a                    |   yes    |
| `node_count`              | Number of nodes in the group                                   | `number`       | `2`                    |    no    |
| `node_group_name`         | Name of the node group                                         | `string`       | `"default-node-group"` |    no    |
| `node_plan`               | Node plan (CPU/Memory configuration)                           | `string`       | `"1xCPU-2GB"`          |    no    |
| `plan`                    | Cluster plan (e.g., development or production)                 | `string`       | `"dev-md"`             |    no    |
| `private_node_groups`     | Indicates if the node groups are private                       | `bool`         | `true`                 |    no    |
| `ssh_keys`                | SSH keys for node access                                       | `set(string)`  | `[]`                   |    no    |
| `storage_encryption`      | Indicates if storage is encrypted                              | `string`       | `"data-at-rest"`       |    no    |
| `storage_size`            | Storage size for each node (GB)                                | `number`       | `50`                   |    no    |
| `tags`                    | Tags applied to the resources                                  | `list(string)` | `[]`                   |    no    |
| `uks_version`             | Kubernetes version for the cluster                             | `string`       | `"1.32"`               |    no    |
| `upgrade_strategy_type`   | Cluster upgrade strategy                                       | `string`       | `"manual"`             |    no    |
| `utility_network_access`  | Indicates if nodes have access to the utility network          | `bool`         | `true`                 |    no    |
| `zone`                    | Zone where the cluster will be deployed                        | `string`       | n/a                    |   yes    |

---

## 🎯 Outputs

| Name            | Description              |
| --------------- | ------------------------ |
| `cluster_id`    | Kubernetes cluster ID    |
| `cluster_name`  | Kubernetes cluster name  |
| `cluster_state` | Kubernetes cluster state |
| `node_group_id` | Node group ID            |
