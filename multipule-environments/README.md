# multipule environments
* to create multipule environments we have 3 ways in terraform
* tfvars
* workspaces
* different repos

## tfvars
### pros
* same code
### cons
* same code for multiple env you need to be very careful because whatever changes you do that will apply to all

## workspaces
### pros
* same code
### cons
* same code for multiple env you need to be very careful because whatever changes you do that will apply to all
* terraform is maintaining same bucket that may cause errors and difficult to maintain variables

## different repos
### pros
* since everything is in different repo no need to worry
### cons
* code duplication you need to maintain repos 

### NOTE
* it will use single bucket for workspace
* for every workspace it create new folder in env folder in same bucket
* here code is same but variable paly key role variable changes depends on workspace


