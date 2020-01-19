Terraform template should be executed with:

Terraform v0.12.19
+ provider.aws v2.45.0

Clone repository and add AWS access keys to gorilla_data.tfvars file

Command to execute template:

terraform init
terraform plan -var-file=gorilla_data.tfvars
terraform apply -var-file=gorilla_data.tfvars