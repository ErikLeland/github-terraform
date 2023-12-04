terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.83.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "rg-backend-ejl"
    storage_account_name = "sabackendu6qkm922pl"
    container_name       = "tfstate"
    key                  = "web.terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

resource "azurerm_resource_group" "rg-web" {
    name = "rg-web-ejl"
    location = "west europe"
}