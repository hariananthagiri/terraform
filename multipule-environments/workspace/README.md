# workspace
* terraform mangement is used to manage the multi-environment with single code
* when we are using terraform workspace terraform with give a default variable called "terraform.workspace"  

#### terraform.workspace
* based on the environment variable(i.e terraform.workspace) change its value

* if we are in dev the variable value is dev
#### terraform.workspace -------------------------> dev

* if we are in prod the variable value is prod
#### terraform.workspace -------------------------> prod

### terraform workspace contains some simple commands

#### terraform workspace help
* it will show all the commands related to terraform workspace

#### terraform workspace list
* it will list all the workspaces in  terraform 

#### terraform workspace show
* to see at which workspace we are working now

#### terraform workspace select "workspace_name"
* to switch between one workspace to another workspace

#### terraform workspace new "workspace_name"
* to create a new workspace we use above command

#### terraform workspace delete "workspace_name"
* to delete a existing workspace we use above command

