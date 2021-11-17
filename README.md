# terraform-random_pet-module
Example Terraform Module to demonstrate TFC/TFE module publishing workflow.


## Usage
```hcl
module "pet" {
    source = "tfcarl.is.hashicorpdemo.com/pet/random"
    string_length = 5
}

```


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_pet.nickname](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_string_length"></a> [string\_length](#input\_string\_length) | The character length of the string. | `number` | `10` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_random_pet_nickname"></a> [random\_pet\_nickname](#output\_random\_pet\_nickname) | Random Pet Nickname generated |
| <a name="output_random_string_output"></a> [random\_string\_output](#output\_random\_string\_output) | Random String generated |
<!-- END_TF_DOCS -->