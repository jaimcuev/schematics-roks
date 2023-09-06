data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

resource "ibm_is_vpc" "vpc" {
  name = "vpc-${var.project}-${var.environment}-001"
  resource_group = data.ibm_resource_group.resource_group.id
}

resource "ibm_is_public_gateway" "vpc_gateway" {
  name = "gateway-${var.project}-${var.environment}-001"
  vpc  = ibm_is_vpc.vpc.id
  zone = var.zone
  resource_group = data.ibm_resource_group.resource_group.id
}

data "ibm_is_vpc_default_routing_table" "vpc_routing_table" {
  vpc = ibm_is_vpc.vpc.id
}

resource ibm_is_subnet "vpc_subnet" {
  name = "subnet-${var.project}-${var.environment}-001"
  vpc = ibm_is_vpc.vpc.id
  zone = var.zone
  total_ipv4_address_count = 256
  routing_table   = data.ibm_is_vpc_default_routing_table.vpc_routing_table.default_routing_table
  resource_group = data.ibm_resource_group.resource_group.id
  public_gateway  = ibm_is_public_gateway.vpc_gateway.id
  
  timeouts {
    create = "90m"
    delete = "30m"
  }
}