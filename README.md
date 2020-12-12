# TERRAFORM IAAC CODE FOR AWS EC2 INSTANCE

## In order to create an instance, you need to create a module.tf file
### Inside the module.tf file copy the source from the provisioner and paste into the file
### After that paste the following information inside the module.tf file inside the module source curly brackets:
#### It should look like this:
```
module "ec2" {
  source  = "maksiess/ec2/aws"
  version = "1.1.0"
  region = "your_region"           #us-east-2
  key_name = "your_key_pair"       #i.e. ec2-key
  image_owner = "Owner_ID"         #285398391915 for CentOS
  ami = "AMI_ID"                   #ami-02ad6b83fd606d009 CentOS AMI for us-east-2 
}
```

# DO NOT FORGET TO PUT YOUR CREDENTIALS

## After this run the following command to download necessary plugins:
``` terraform init ```


## In order to create the infrastructure, run the following command:
``` terraform apply ``` 
#### Write ``` terraform apply -auto-approve ``` in order to run automatically
