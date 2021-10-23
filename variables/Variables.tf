variable "name" {
  default = "Sample1"
}

output "name1" {
  value = var.name
}

output "sample2" {
  value = "${var.name}"
}

variable "sample2" {}

output "name33" {
  value = var.sample2
}