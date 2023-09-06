variable "project" {
  default = "demo"
  description = "Nombre del proyecto"
}

variable "environment" {
  default = "dev"
  description = "Ambiente del proyecto"
}

variable "resource_group" {
  default = ""
  description = "Nombre del resource group donde se desea crear los recursos"
}

variable "ibm_region" {
  description = "Región de la cuenta de IBM Cloud"
  default = "eu-de"
}

variable "vpc_id" {
  type = string
  description = "ID del VPC"
}

variable "vpc_subnet_id" {
  type = string
  description = "ID del Subnet"
}

variable "zone" {
  default = "eu-de-3"
  description = "Zona donde se crearan los recursos"
}

variable "cluster_id" {
  type = string
  description = "ID del cluster"
}

variable "entitlement_wp" {
  type = string
  description = "Entitlement de IBM Cloud"
}

variable "worker_pool_name" {
  type = string
  description = "Nombre del worker pool"
}

variable "flavor" {
  type = string
  description = "Flavor de los nodos"
}

variable "worker_count" {
  type = number
  description = "Cantidad de nodos"
  default = 3
}