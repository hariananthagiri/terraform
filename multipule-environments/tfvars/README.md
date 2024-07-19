# tfvars
* here we switch the files using tfvars
* we creted two backend files for prod and dev

### backend
#### terraform init -backend-config=path/of/file
* from above syntax we are switching between the folders 
* after swching with other folder we have to reconfigure the terraform and mention the path of backend file
#### terraform init -reconfigure -backend-config=path/of/file

### files

* to use the variables in multiple files use below syntax
#### terraform plan -var-file=path/of/file-name.tfvars

* for apply also we have to mention file path otherwise it takes default
#### terraform apply -var-file=path/of/file-name.tfvars

#### path
* while mentioning the path we can use prod or dev as per our requirements
