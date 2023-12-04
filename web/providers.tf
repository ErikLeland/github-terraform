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
    key                  = "web-demo.terraform.tfstate"
  }
}

provider "azurerm" { 
  features{}
}

provider "random" {
  # Configuration options
}