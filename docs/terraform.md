## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7 |
| <a name="requirement_mongodbatlas"></a> [mongodbatlas](#requirement\_mongodbatlas) | ~> 2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mongodbatlas"></a> [mongodbatlas](#provider\_mongodbatlas) | 2.10.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tags"></a> [tags](#module\_tags) | cloudopsworks/tags/local | 1.0.9 |

## Resources

| Name | Type |
|------|------|
| [mongodbatlas_privatelink_endpoint.this](https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/privatelink_endpoint) | resource |
| [mongodbatlas_network_container.this](https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/data-sources/network_container) | data source |
| [mongodbatlas_project.this](https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/data-sources/project) | data source |
| [mongodbatlas_roles_org_id.current](https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/data-sources/roles_org_id) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_atlas_container_id"></a> [atlas\_container\_id](#input\_atlas\_container\_id) | (Required) The ID of the MongoDB Atlas network container. Used to determine the cloud provider and region for the PrivateLink endpoint. | `string` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to add to the resources | `map(string)` | `{}` | no |
| <a name="input_is_hub"></a> [is\_hub](#input\_is\_hub) | Is this a hub or spoke configuration? | `bool` | `false` | no |
| <a name="input_org"></a> [org](#input\_org) | Organization details | <pre>object({<br/>    organization_name = string<br/>    organization_unit = string<br/>    environment_type  = string<br/>    environment_name  = string<br/>  })</pre> | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | (Optional) The ID of the MongoDB Atlas project. Mutually exclusive with project\_name; provide one or the other. | `string` | `""` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | (Optional) The name of the MongoDB Atlas project. Used to resolve the project\_id when project\_id is not provided. Mutually exclusive with project\_id. | `string` | `""` | no |
| <a name="input_spoke_def"></a> [spoke\_def](#input\_spoke\_def) | Spoke ID Number, must be a 3 digit number | `string` | `"001"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint_privatelink_id"></a> [endpoint\_privatelink\_id](#output\_endpoint\_privatelink\_id) | n/a |
| <a name="output_endpoint_privatelink_service_name"></a> [endpoint\_privatelink\_service\_name](#output\_endpoint\_privatelink\_service\_name) | n/a |
| <a name="output_endpoint_status"></a> [endpoint\_status](#output\_endpoint\_status) | n/a |
