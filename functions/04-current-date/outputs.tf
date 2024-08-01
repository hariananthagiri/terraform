output "date" {
  value = local.current_date
}

output "time" {
  value = timestamp()
}


# date = "2024-08-01-05-27-20"
# time = "2024-08-01T05:27:20Z"
