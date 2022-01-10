terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo"
    storage_account_name = "terraformcodeops"
    container_name       = "tfstatefile"
    key                  = "krish.fiserv"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location

