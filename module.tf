module "ec2" {
    source = "/home/ec2-user/maksiess/ec-reusable/EC2_instance"
    region = "us-west-2"
    key_name = "test-key"
    image_owner = "285398391915"
    ami = "ami-018e347dfe0c44534"
    # availability_zone = "us-west-1"
}