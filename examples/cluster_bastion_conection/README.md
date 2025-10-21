## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_upcloud"></a> [upcloud](#requirement\_upcloud) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_upcloud"></a> [upcloud](#provider\_upcloud) | 5.28.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kubernetes_cluster_module"></a> [kubernetes\_cluster\_module](#module\_kubernetes\_cluster\_module) | manuelromeroaktios/kubernetes-cluster-module/upcloud | v1.0.3 |

## Resources

| Name | Type |
|------|------|
| [upcloud_network.example_network](https://registry.terraform.io/providers/UpCloudLtd/upcloud/latest/docs/resources/network) | resource |
| [upcloud_router.example_router](https://registry.terraform.io/providers/UpCloudLtd/upcloud/latest/docs/resources/router) | resource |
| [upcloud_server.example](https://registry.terraform.io/providers/UpCloudLtd/upcloud/latest/docs/resources/server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | The name of the customer. | `string` | `"scloud-75"` | no |
| <a name="input_upcloud_password"></a> [upcloud\_password](#input\_upcloud\_password) | The password for the UpCloud account. | `string` | `"glHsRS5@Dibu&I"` | no |
| <a name="input_upcloud_username"></a> [upcloud\_username](#input\_upcloud\_username) | The username for the UpCloud account. | `string` | `"aktiosmanuelromero"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The UpCloud zone to deploy resources in. | `string` | `"es-mad1"` | no |

## Outputs

No outputs.
