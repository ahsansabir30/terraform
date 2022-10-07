terraform init
terraform plan -var='ami=ami-0fb391cce7a602d1f' -var='type=t2.micro' -out "myplan"
terraform apply "myplan"
terraform destroy -var='ami=ami-0fb391cce7a602d1f' -var='type=t2.micro'
