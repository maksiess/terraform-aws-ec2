resource "aws_instance" "web" {
  #count = 10
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  key_name      = "${aws_key_pair.class.key_name}"
  #user_data     = "${file("userdata.sh")}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  availability_zone = "${var.region}a"
  availability_zone = "${var.region}b"
  availability_zone = "${var.region}c"


    tags = {
        Name = "HelloDevOps"
        Env = "Development"
        Client = "panera_bread"
        Team = "DevOps"
        Created_by = "Maksatbek"
    }

}
