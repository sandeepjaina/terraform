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


variable "string" {
  default = "sandeep"
}
variable "number" {
   value =  100
}

variable "boolen" {
  value = false
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