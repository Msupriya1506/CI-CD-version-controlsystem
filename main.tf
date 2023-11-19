terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

#providers
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

#Resource - aws - ec2
resource "aws_instance" "supriya_jenkins" {
  ami                  = "ami-0fc5d935ebf8bc3bc"
  instance_type        = "t2.micro"
  key_name             = "bts_keypair"
  subnet_id            = "subnet-03222dbd0d4c453b6"
  security_groups      = ["sg-05abaf5e6ad1d2091"]
  iam_instance_profile = "supriya"
  user_data            = file("./jenkins.sh")

  #user_data = <<-EOF
  #sudo apt-get update
  #EOF

  tags = {
    Name        = "jenkins_server"
    Environment = "Dev"
    ProjectName = "Cloud Binary"
    ProjectID   = "2023"
    CreatedBy   = "IaC Terraform"
  }
}

#Resource - aws - ec2
resource "aws_instance" "supriya_sonarqube" {
  ami                  = "ami-0fc5d935ebf8bc3bc"
  instance_type        = "t2.micro"
  key_name             = "bts_keypair"
  subnet_id            = "subnet-03222dbd0d4c453b6"
  security_groups      = ["sg-05abaf5e6ad1d2091"]
  iam_instance_profile = "supriya"
  user_data            = file("./sonarqube.sh")

  #user_data = <<-EOF
  #sudo apt-get update
  #EOF

  tags = {
    Name        = "sonarqube_server"
    Environment = "Dev"
    ProjectName = "Cloud Binary"
    ProjectID   = "2023"
    CreatedBy   = "IaC Terraform"
  }
}

#Resource - aws - ec2
resource "aws_instance" "supriya_jfrog" {
  ami                  = "ami-0fc5d935ebf8bc3bc"
  instance_type        = "t2.micro"
  key_name             = "bts_keypair"
  subnet_id            = "subnet-03222dbd0d4c453b6"
  security_groups      = ["sg-05abaf5e6ad1d2091"]
  iam_instance_profile = "supriya"
  user_data            = file("./jfrog.sh")

  #user_data = <<-EOF
  #sudo apt-get update
  #EOF

  tags = {
    Name        = "jfrog_server"
    Environment = "Dev"
    ProjectName = "Cloud Binary"
    ProjectID   = "2023"
    CreatedBy   = "IaC Terraform"
  }
}

#Resource - aws - ec2
resource "aws_instance" "supriya_tomcat" {
  ami                  = "ami-0fc5d935ebf8bc3bc"
  instance_type        = "t2.micro"
  key_name             = "bts_keypair"
  subnet_id            = "subnet-03222dbd0d4c453b6"
  security_groups      = ["sg-05abaf5e6ad1d2091"]
  iam_instance_profile = "supriya"
  user_data            = file("./tomcat.sh")

  #user_data = <<-EOF
  #sudo apt-get update
  #EOF

  tags = {
    Name        = "tomcat_server"
    Environment = "Dev"
    ProjectName = "Cloud Binary"
    ProjectID   = "2023"
    CreatedBy   = "IaC Terraform"
  }
}
