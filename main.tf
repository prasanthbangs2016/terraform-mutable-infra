module "vpc" {
    source = "./vendor/modules/vpc"
    cidr_block = var.vpc_cidr_block
    subnets = var.subnets
    env     = var.env
    AZ      = var.AZ
    default_vpc_id  = var.default_vpc_id
    default_vpc_cidr = var.default_vpc_cidr
    default_route_table_id = var.default_route_table_id
}


#output "out" {
#    value = module.vpc.out
#
#}

output "out" {
    value = module.vpc.out
}

