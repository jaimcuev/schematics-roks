module "cluster" {
  source = "./modules/cluster"
  
  project = var.project
  environment = var.environment
  ibm_region = var.ibm_region
  resource_group = var.resource_group
  vpc_id = module.networking.vpc_id
  vpc_subnet_id = module.networking.vpc_subnet_id
  zone = var.zone
  kube_version = var.kube_version
  flavor = var.flavor
  worker_count = var.worker_count
  entitlement_wp = var.entitlement_wp

  depends_on = [module.networking]
}
