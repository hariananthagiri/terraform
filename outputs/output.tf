output "instance_private_ip" {
value = aws_instance.web.private_ip  
# description = "optional"  # it describes about the information about output
# sensitive = true/false  # it makes the information visable or disable if content is sensitive
 }

output "example" {
  value = "show in output"
}