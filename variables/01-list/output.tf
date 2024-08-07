# # reading all elements in list at a time
# output "instance_types" {
#   value = var.instance_type[*]
# }

# # reading last elements in a list
# output "instance_types" {
#   value = element(var.instance_type, length(var.instance_type)-1)
# }

# # reading elements in a list in reverse order
# output "instance_types" {
#   value = reverse(var.instance_type[*])
# }

