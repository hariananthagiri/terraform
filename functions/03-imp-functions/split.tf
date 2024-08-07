output "function1" {
  value = split(",", join(",", var.number1))
}
