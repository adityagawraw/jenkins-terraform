resource "aws_security_group" "jenkins_sg" {
 name = "jenkins-sg-2"
}

# resource "aws_vpc_security_group_ingress_rule" "allow_custom_tcp" {
#   security_group_id = aws_security_group.jenkins_sg.id
#   cidr_ipv4 = "0.0.0.0/0"
#   from_port = 8080
#   ip_protocol = "tcp"
#   to_port = 8080
# }

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.jenkins_sg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 80
  ip_protocol = "tcp"
  to_port = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.jenkins_sg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 22
  ip_protocol = "tcp"
  to_port = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound_traffic_ipv4" {
  security_group_id = aws_security_group.jenkins_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound_traffic_ipv6" {
  security_group_id = aws_security_group.jenkins_sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1"
}