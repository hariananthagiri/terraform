# Terraform
* terraform is a IAC model
* it use infrastructure as code
* ansible is used as configureation as code (CAC)
* AWS provides many services all that services we can create by using terraform configureation thats the reson why we call terraform as IAC

#### infrastructure creation --------------->  server creation
#### configuration management ---------------> server configuration
### setup
* to get the infrastructure whatever we created in terraform to our aws account do fallowing setup
* **login to aws account ===> IAM ===> uses ===> create user ===> set permission bu attaching requied policys ===> finally click on create user**
* **click on created user ===> select security crredentials ===> crete access keys ===> select CLI ===> click on create access keys**
* now copy the access key and secret access key values and give in aws console by using below command
* **syntax**
```
aws configure
```
* or we can provide it in terraform providers it is confidential credentials not recommended to give it openly 
##### after running terraform apply and now doing changes in code  before editing anything in terraform distroy it first

### terraform commands

* to inistialise terraform
    * **terraform init**
* to backend configureation is changed in terraform
    * **terraform init -reconfigure**
* to see what is going to create and syntax errors
    * **terraform validate**
* to check syntax errors
    * **terraform plan**
* to create the infrastucture
    * **terraform apply -auto-approve**
* to destroy the infrastucture what is created 
    * **terraform destroy -auto-approve**
* to re run the file what is actually created by using terraform apply command it is taken from terraform state list after taint run terraform apply to crete it again 
    * **terraform taint**
* to mange the indentation
    * **terraform fmt**
* to list all state files
    * **terraform state list**
* to run a particular state file
    * **terraform apply -target="statefile in list"**
* to lock the state file
    * **terraform state lock**
* to lock the un lock the locked state file
    * **terraform force-unlock**
* to import the existing infrastucture  
    * **terraform import state-file instace-id**



