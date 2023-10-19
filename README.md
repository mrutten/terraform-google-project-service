# Table of Contents

- [Table of Contents](#table-of-contents)
- [Introduction](#introduction)
  - [Requirements](#requirements)
  - [Providers](#providers)
  - [Modules](#modules)
  - [Resources](#resources)
  - [Inputs](#inputs)
  - [Outputs](#outputs)

# Introduction

This is a Terraform module that enables a number of APIs in a project.

## Requirements

| Name                                                                      | Version |
| ------------------------------------------------------------------------- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_google"></a> [google](#requirement\_google)          | 5.2.0   |

## Providers

| Name                                                       | Version |
| ---------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | 5.2.0   |

## Modules

No modules.

## Resources

| Name                                                                                                                                     | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_project_service.project_services](https://registry.terraform.io/providers/hashicorp/google/5.2.0/docs/resources/project_service) | resource |

## Inputs

| Name                                                                                                                      | Description                                                                                                                | Type           | Default | Required |
| ------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------- | ------- | :------: |
| <a name="input_disable_dependent_services"></a> [disable\_dependent\_services](#input\_disable\_dependent\_services)      | Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed. | `bool`         | `true`  |    no    |
| <a name="input_disable_services_on_destroy"></a> [disable\_services\_on\_destroy](#input\_disable\_services\_on\_destroy) | Whether project services will be disabled when the resources are destroyed.                                                | `bool`         | `true`  |    no    |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id)                                                        | The GCP project you want to enable APIs on.                                                                                | `string`       | n/a     |   yes    |
| <a name="input_services"></a> [services](#input\_services)                                                                | The list of apis to activate within the project.                                                                           | `list(string)` | `[]`    |    no    |

## Outputs

| Name                                                                                                       | Description                                 |
| ---------------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| <a name="output_enabled_api_identities"></a> [enabled\_api\_identities](#output\_enabled\_api\_identities) | Enabled API identities in the project       |
| <a name="output_enabled_apis"></a> [enabled\_apis](#output\_enabled\_apis)                                 | Enabled APIs in the project                 |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id)                                       | The GCP project you want to enable APIs on. |
