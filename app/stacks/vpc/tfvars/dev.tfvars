#VPC
cidr_block         = "10.0.0.0/16"
instance_tenancy   = "default"
tags               = {
    Name = "main"
  }

# Subnet1
subnet_cidr_block="10.0.0.0/18"
subnet_tags={
    Name = "Subnet1"
  }

  # Subnet2
subnet2_cidr_block="10.0.1.0/18"
subnet2_tags={
    Name = "Subnet2"
  }