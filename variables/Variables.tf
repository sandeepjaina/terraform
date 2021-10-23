variable "name" {
  default = "Sample1"
}

output "name1" {
  value = var.name
}

output "sample2" {
  value = "${var.name}"
}