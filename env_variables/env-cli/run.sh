export TF_VAR_ami=ami-0fb391cce7a602d1f
export TF_VAR_type=t2.micro
terraform init
terraform plan -out "myplan"
terraform apply "myplan"
terraform destroy