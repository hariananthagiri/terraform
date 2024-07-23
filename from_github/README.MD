# Featching the data from github to directly use the code from github to terraform
## syntax 
* source = "git::git-hub-link?ref=main"

### example
* source = "git::https://github.com/shivaananthagiri/Terraform.git?ref=main"

* instad of writeing the code we directly use the code from git repository by using its https link

#### to use sub-directories use "//"
#### to use sub-directories haveing folders again "//folder1/folder2/folder3"

* source = "git::git-hub-link//folder-name?ref=main"
* if SUB-FOLDER has folders again
* source = "git::git-hub-link//folder-name/give folder/pathsllike-this?ref=main"
#### NOTE
##### ONLY ONE PROVIDER MUST BE THERE TWO PROVIDERS THROUGH YOU AN ERROR



