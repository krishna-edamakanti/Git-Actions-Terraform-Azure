terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformD"
    storage_account_name = "tfstorage1"
    container_name       = "tfcontainer"
    key                  = "cool.tf file"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
