resource "aws_instance" "web-op" {
  #count = 10
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  key_name      = "${data.aws_key_pair.key_name.name}"
  user_data     = "${file("userdata.sh")}"
  vpc_security_group_ids = ["${data.aws_security_group.allow_ssh.id}"]
  # availability_zone = "${var.region}a"
  # availability_zone = "${var.region}b"
  # availability_zone = "${var.region}c"


    tags = {
        Name = "go_VA_Z_OP"
        jira = "ZEO-28357"
        serviceowner = "Flynn Zheng"
        systemowner = "narotham.chilkuri"
        bizaaregion = "VA"
        bizcluster = "GO"
        bizcomponent = "APP"
        bizgroup = "GROUP1"
        bizservice = "OP"
        bizunit = "GO"
        dept = "OPS"
        service = "WEB"
        Standby = "No"
    }

}
