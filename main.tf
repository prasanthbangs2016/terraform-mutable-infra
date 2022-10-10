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

#module "docdb" {
#    source = "./vendor/modules/docdb"
#    env     = var.env
#    engine_version = var.engine_version
#    apps_subnets_id = local.apps_subnets_id
#    vpc_id          = module.vpc.vpc_id
#    vpc_cidr_block  = var.vpc_cidr_block
#    instance_count  = var.docdb_cluster_instance_count
#    #docdb_instance_class = var.instance_class
#
#
#}


#output "out" {
#    value = module.vpc.out
#
#}

#output "out" {
#    value = module.vpc.out
#}

#(var.subnet_ids["${var.name}"].out[*].id)

#locals {
#    apps_subnet_ids = module.vpc.out["apps"].id
#}



#output "out" {
#    value = module.vpc.out["apps"]["out"][*].id
#}

#output "out" {
#    value = local.apps_subnet_ids
#
#}
