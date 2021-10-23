variable "name" {
  default = "Sample1"
}

output "name1" {
  value = var.name
}

output "sample2" {
  value = "${var.name}"
}

variable "Input" {}

output "name33" {
  value = var.Input
}


variable "string" {
  default = "sandeep"
}
variable "number" {
   default =  100
}

variable "boolen" {
  default = false
}

output "string1" {
  value = var.string
}

output "number2" {
  value = "${var.number}"
}

output "boolen" {
  value = var.boolen
}

output "values" {
  value = "string = ${var.string}, Number = ${var.number}, boolen = ${var.boolen}"
}