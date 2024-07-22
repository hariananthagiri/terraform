# local_file
* it is used to create a local file in our pc
* it will be created by using terraform command

## syntax
* resource "local_file" "file_name" {     
*  filename = "path/and/file"
*  content = "what to there in file"
* }