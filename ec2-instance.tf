resource "aws_instance" "jenkins_instance" {
    ami = var.ami_id
    instance_type = "t2.micro"
    key_name = var.instance_key_pair

    tags = {
      Name = "jenkins-server"
    }
    vpc_security_group_ids = [ aws_security_group.jenkins_sg.id ]
}