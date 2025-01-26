terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-sam"
    storage_account_name = "teststorage1981"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

