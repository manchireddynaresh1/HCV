terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version =  "2.89.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = var.subscription-id
  tenant_id = var.tenant-id
}