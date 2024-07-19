### desired state == current state
* whatever we write terraform should create it this nothing but desired state
* what terraform is created is nothing but current state
* Terraform ultimate resposibulity is to equal desired state and current state
* desired state == current state
### terraform tfstate and terraform lock
#### terraform tfstate
* terraform tfstate file is created after terraform apply command
* tfstate file contatins the information of resourses that terraform has created
* whatever we create in terraform tfstate file it must be there in cloud
*  terraform automatically craete a backup of tfstate file before makeing any changes to tf state
* we can not open or edit the tfstate file after at the time of terraform apply command because if u edit anything in terraform     tfstate terraform will gets confused what to create
#### terraform lockfile
* terraform lock file is named as "Terraform.lock.hcl" it will be genreted by terraform itself
* it is used to lock the dependencys and versions of the provider plugins and modules being used in our terraform configuration
* it is a reference point accross all executions

#### purpose
* we have two users user1 and user2 now these two users pushed same code from github
* two users are running terraform apply 
* in this case duplicates may come and some resourses got error as alrady exit
* to avide this WE USE S3 BUCKET
##### s3 bucket
* we are storeing tfstate file in s3 bucket
#### dynamo DB
* we have storeing terraform.lock.hcl file in dynamo DB table
* while createing dynamo DB table use keyword "LockID"