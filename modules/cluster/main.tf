data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

resource "ibm_resource_instance" "cos_instance" {
  name              = "cos-${var.project}-${var.environment}-001"
  resource_group_id = data.ibm_resource_group.resource_group.id
  service           = "cloud-object-storage"
  plan              = "standard"
  location          = "global"
}

resource "ibm_container_vpc_cluster" "cluster" {
  name              = "oc-${var.project}-${var.environment}-001"
  vpc_id            = var.vpc_id
  cos_instance_crn  = ibm_resource_instance.cos_instance.id
  kube_version      = var.kube_version
  flavor            = var.flavor
  worker_count      = var.worker_count
  entitlement       = var.entitlement_wp
  resource_group    = data.ibm_resource_group.resource_group.id
  wait_till         = "OneWorkerNodeReady"
  zones {
    subnet_id = var.vpc_subnet_id
    name      = var.zone
  }
}