data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

resource "ibm_container_vpc_worker_pool" "worker" {
  cluster           = var.cluster_id
  worker_pool_name  = var.worker_pool_name
  flavor            = var.flavor
  vpc_id            = var.vpc_id
  worker_count      = var.worker_count
  resource_group_id = data.ibm_resource_group.resource_group.id
  entitlement       = var.entitlement_wp
  zones {
    subnet_id = var.vpc_subnet_id
    name      = var.zone
  }
}