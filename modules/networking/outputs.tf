output "vpc_id" {
  value = ibm_is_vpc.vpc.id
}

output "vpc_subnet_id" {
  value = ibm_is_subnet.vpc_subnet.id
}