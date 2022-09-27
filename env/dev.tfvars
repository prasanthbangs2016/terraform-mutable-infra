vpc_cidr_block = "10.100.0.0/16"
#subnets are multiple hence map
subnets = {
    public = {
        name = "public"
        subnet_cidr = ["10.100.0.0/24", "100.100.10.0/24"]
        
    }

    apps = {
        name = "apps-private"
        subnet_cidr = ["10.100.2.0/24", "100.100.30.0/24"]
        
    }

     db = {
        name = "db-private"
        subnet_cidr = ["10.100.4.0/24", "100.100.50.0/24"]
       
    }
}

env = "dev"
AZ  = ["us-east-1a", "us-east-1b"]
