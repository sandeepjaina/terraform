variable "single_value" {
  default = "sandeep"
}

variable "list" {
  default = ["hello", "world"]
}

variable "maps" {
  default = {
    Training = "Terraform"
    trainer =  "Raghu"
    Course = " Devops"
  }
}

output "default" {
  value = var.single_value
}

output "list" {
  value = var.list[2]
}

output "maps" {
  value = var.maps.Course
}