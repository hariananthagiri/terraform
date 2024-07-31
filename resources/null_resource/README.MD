# NULL_RESOURCE
* resource will not exists in our cloud  the reson is there is no terraform state assosiated with it due to you can update the null_resource inside the terraform file as many times as you can 
* if we are using null resource when you run terraform apply command then no resource will be provisioned to that particular cloud envirment
#### usecase
* whenever you defined a null resource then you need to define provisioner, datasource, e.t.c
* it is used to execute shell-script, ansible playbook, python script, exexute commands, e.t.c
* it can also used for terraform module, count, datasources, outputblocks, variables 
### triggers
* it is optional you can run null _resource with out giveing it
* there are certain conditions that where this trigger is going to happen
* when ever there is a change in the value given in trigger (i.e id in below example) then trigger will execute
* when there is no change in trigger value then trigger wont execute and code below trigger also wont execute
#### NOTE
* whenever you execute the null resource for first time but whenever you try to execute the same null resource for second time then it will  not exexute 
* to avide this we use trigger
### SYNTAX
''' terraform
resource "null_resource" "null" {
  triggers = {
    id = aws_instance.web.id  # *** if value is changed ***
    }
  provisioner "local-exec" {   # *** it will execute if value changed ***
    command = "echo hello world" 
  }
}
...
'''