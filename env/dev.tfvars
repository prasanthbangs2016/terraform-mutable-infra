#vpc
vpc_cidr_block = "10.100.0.0/16"

#subnets are multiple hence map
subnets = {
    public = {
        name = "public"
        #256 ips /24
        subnet_cidr = ["10.100.0.0/24", "10.100.1.0/24"]
        #since it is public subnet hence internet gateway is set to true
        igw         = true
        #since it is structured data hence we are saying natgateway is false
#        ngw         = false
        
    }

    apps = {
        name = "apps"
        subnet_cidr = ["10.100.2.0/24", "10.100.3.0/24"]
      #since it is private subnet hence nat gateway is set to true
        ngw         = true
#        igw         = false
        
    }

     db = {
        name = "db"
        subnet_cidr = ["10.100.4.0/24", "10.100.5.0/24"]
       #since it is private subnet hence nat gateway is set to true
        ngw         = true
#        igw         = false
       
    }
}

env = "dev"
AZ  = ["us-east-1a", "us-east-1b"]
default_vpc_id = "vpc-002e2deffd048729c"
default_vpc_cidr = "172.31.0.0/16"
default_route_table_id = "rtb-0c74baf4fd12941aa"

#docdb(mongodb)

engine_version  = "4.0"


