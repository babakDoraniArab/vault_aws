resource "vault_aws_secret_backend" "aws" {
    access_key = data.aws_ssm_parameter.access_key.value
    secret_key = data.aws_ssm_parameter.secret_key.value
    path =  "aws"
    region = var.region
    default_lease_ttl_seconds = 3600
    max_lease_ttl_seconds =  7200
  
}