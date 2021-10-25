resource "aws_spot_instance_request" "roboshop" {
  count = length(var.components)
  spot_price    = "0.031"
  ami = "ami-0e4e4b2f188e91845"
  instance_type = "t2.micro"
  wait_for_fulfillment = true
  tags = {
    Name = element(var.components, count.index)
  }

}
 resource "aws_security_group_rule" "SG_ingress" {
   count            = length(var.components)
   from_port         = 22
   protocol          = "tcp"
   security_group_id = element(aws_spot_instance_request.roboshop.security_groups,count.index)
   to_port           = 0
   type              = "ingress"
 }




resource "aws_ec2_tag" "tagname" {
  count = length(var.components)
  key         = "Name"
  resource_id = element(aws_spot_instance_request.roboshop.*.spot_instance_id, count.index)
  value       = element(var.components, count.index)
}


#resource "null_resource" "provisioning" {
#  count = length(var.components)
#
#  provisioner "remote-exec" {
#    connection {
#      host = element(aws_spot_instance_request.roboshop.*.public_ip, count.index)
#      user = "centos"
#      password = "DevOps321"
#    }
#    inline = [
#      "cd /home/centos/",
#      "git clone https://DevOps-Batches@dev.azure.com/DevOps-Batches/DevOps57/_git/shell-scripting",
#      "cd shell-scripting/roboshop",
#      "sudo set-hostname ${element(var.components, count.index)}"
#
#    ]
#
#  }
#}

output "securitygroups" {
  value = aws_spot_instance_request.roboshop.*.security_groups
}
variable "components" {}