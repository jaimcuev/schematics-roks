variable "project" {
  default = "demo"
  description = "Nombre del proyecto"
}

variable "environment" {
  default = "dev"
  description = "Ambiente del proyecto"
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