# terraform-aws-ecr

Creates/configures an ECR repo.

## Usage

```
module "ecr" {
  name = "printn-money"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes (e.g. `1`) | list | `<list>` | no |
| environment | Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT' | string | `dev` | no |
| max_image_count | How many Docker Image versions AWS ECR will store | string | `7` | no |
| name | Resource grouping name, e.g. 'myapp' or 'jenkins' | string | `` | no |
| namespace | Namespace, which could be your organization name or abbreviation, e.g. 'es' | string | `es` | no |
| roles | Principal IAM roles to provide with access to the ECR | list | `<list>` | no |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| policy_login_arn | The IAM Policy ARN to be given access to login in ECR |
| policy_login_name | The IAM Policy name to be given access to login in ECR |
| policy_read_arn | The IAM Policy ARN to be given access to pull images from ECR |
| policy_read_name | The IAM Policy name to be given access to pull images from ECR |
| policy_write_arn | The IAM Policy ARN to be given access to push images to ECR |
| policy_write_name | The IAM Policy name to be given access to push images to ECR |
| registry_arn | Registry ARN |
| registry_id | Registry ID |
| repository_name | Repository Name |
| repository_url | Repository URL |
| role_arn | Assume Role ARN to get registry access |
| role_name |Assume Role name to get registry access | 

## Authors

[Darrell Davis](https://github.com/darrelldavis)

## License
MIT Licensed. See LICENSE for full details.
