# resource "aws_security_group" "alb_jenkinsterraform" {
#   name        = "ALB sec group automation"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = [aws_vpc.main.cidr_block]
#     ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "allow_tls"
#   }
# }


# # sec group from ALB
# resource "aws_security_group" "alb_jenkinsterraform" {
#   name        = "ALB sec group automation"
#   description = "to allow traffic from outside on 80"
#   # vpc_id      = main.aws_cloudformation_export.vpc_id.value


# #incoming
#   ingress {
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }
# #outging
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "to allow traffic from outside on 80"
#   }
# }

# #security group for ecs cluster

# resource "aws_security_group_rule" "ecs" {
#   type              = "ingress"
#   from_port         = 0
#   to_port           = 65535
#   protocol          = "tcp"
#   # cidr_blocks      = ["0.0.0.0/0"]
#   # ipv6_cidr_blocks = ["::/0"]
#   source_security_group_id = aws_security_group.alb_jenkinsterraform.id
#   security_group_id        = aws_security_group.ecs_jenkinsterraform.id
# }


# resource "aws_security_group" "ecs_jenkinsterraform" {
#   name        = "ECS sec group automation"
#   description = "to allow traffic from ALB"

# #outging
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "to allow traffic from ALB"
#   }
# }