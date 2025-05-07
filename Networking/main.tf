################################################################
## defaults
################################################################

module "tags" {
  source      = "sourcefuse/arc-tags/aws"
  version     = "1.2.5"
  environment = var.environment
  project     = var.project_name

  extra_tags = {
    MonoRepo     = "True"
    MonoRepoPath = "terraform/network"
  }
}



module "network" {
  source                      = "sourcefuse/arc-network/aws"
  version                     = "3.0.0"

  namespace   = var.namespace
  environment = var.environment

  name                    = "${var.namespace}-${var.environment}-vpc"
  create_internet_geteway = true
  subnet_map              = local.subnet_map
  cidr_block              = var.cidr_block
  vpc_endpoint_data = [
    {
      service            = "s3"
      route_table_filter = "private"
    },
    {
      service            = "dynamodb"
      route_table_filter = "private"
    }
  ]

  tags = module.tags.tags

}
