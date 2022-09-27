vpc_cidr_block = "10.100.0.0/16"
#subnets are multiple hence map
subnets = {
    public = {
        name = "public"
        subnet_cidr = ["10.100.0.0/24", "10.100.10.0/24"]
        igw         = true
        #since it is structured data hence we are saying natgateway is fals
        ngw         = false
        
    }

    apps = {
        name = "apps-private"
        subnet_cidr = ["10.100.2.0/24", "10.100.30.0/24"]
        ngw         = true
        igw         = false
        
    }

     db = {
        name = "db-private"
        subnet_cidr = ["10.100.4.0/24", "10.100.50.0/24"]
        ngw         = true
        igw         = false
       
    }
}

env = "dev"
AZ  = ["us-east-1a", "us-east-1b"]

