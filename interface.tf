variable "name" {
  type        = string
  description = "Resource grouping name, e.g. 'myapp' or 'vpc'"
}

variable "environment" {
  type        = string
  description = "Run-time environment (e.g. staging)"
  default     = ""
}

variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "roles" {
  type        = list
  description = "Principal IAM roles to provide with access to the ECR"
  default     = []
}

variable "max_image_count" {
  type        = string
  description = "How many Docker Image versions AWS ECR will store"
  default     = "7"
}

output "registry_id" {
  value       = aws_ecr_repository.default.registry_id
  description = "Registry ID"
}

output "repository_url" {
  value       = aws_ecr_repository.default.repository_url
  description = "Registry URL"
}

output "repository_name" {
  value       = aws_ecr_repository.default.name
  description = "Repository name"
}

output "registry_arn" {
  value       = aws_ecr_repository.default.arn
  description = "Registry ARN"
}

output "role_name" {
  value       = join("", aws_iam_role.default.*.name)
  description = "Assume Role name to get registry access"
}

output "role_arn" {
  value       = join("", aws_iam_role.default.*.arn)
  description = "Assume Role ARN to get registry access"
}

output "policy_login_name" {
  value       = aws_iam_policy.login.name
  description = "The IAM Policy name to be given access to login in ECR"
}

output "policy_login_arn" {
  value       = aws_iam_policy.login.arn
  description = "The IAM Policy ARN to be given access to login in ECR"
}

output "policy_read_name" {
  value       = aws_iam_policy.read.name
  description = "The IAM Policy name to be given access to pull images from ECR"
}

output "policy_read_arn" {
  value       = aws_iam_policy.read.arn
  description = "The IAM Policy ARN to be given access to pull images from ECR"
}

output "policy_write_name" {
  value       = aws_iam_policy.write.name
  description = "The IAM Policy name to be given access to push images to ECR"
}

output "policy_write_arn" {
  value       = aws_iam_policy.write.arn
  description = "The IAM Policy ARN to be given access to push images to ECR"
}
