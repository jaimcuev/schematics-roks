variable "project" {
  default = "demo"
  description = "Nombre del proyecto"
}

variable "environment" {
  default = "dev"
  description = "Ambiente del proyecto"
}

variable "ibmcloud_api_key" {
  default = ""
  description = "IBM Cloud API Key"
}

variable "ibm_region" {
  description = "Región de la cuenta de IBM Cloud"
  default = "eu-de"
}

variable "resource_group" {
  default = ""
  description = "Nombre del resource group donde se desea crear los recursos"
}

variable "zone" {
  default = "eu-de-3"
  description = "Zona donde se crearan los recursos"
}

variable "kube_version" {
  type = string
  description = "Versión de Kubernetes"
  default = null
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

variable "entitlement_wp" {
  type = string
  description = "Entitlement de IBM Cloud"
}
