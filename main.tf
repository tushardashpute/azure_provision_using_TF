terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = "2b175706-033b-4b26-bb13"
  tenant_id         = "f7a68658-d61c-4625-a70b"
  client_id         = "2f9b799e-c39a-470f-a349"
  client_secret     = "NB88Q~G92pDNAXaiCxscNaJX~Om"
}

# Your code goes here

module "resourcegroup" {
  source         = "./modules/resources"
  name           = var.name
  location       = var.location
}

module "networking" {
  source         = "./modules/networking"
  location       = module.resourcegroup.location_id
  resource_group = module.resourcegroup.resource_group_name
  vnetcidr       = var.vnetcidr
  websubnetcidr  = var.websubnetcidr
  appsubnetcidr  = var.appsubnetcidr
  dbsubnetcidr   = var.dbsubnetcidr
}
