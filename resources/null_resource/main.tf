resource "null_resource" "null" {
  triggers = {
    id = aws_instance.web.id
    # id = timestamp()
    }
  provisioner "local-exec" {
    command = "echo hello world"
  }
}