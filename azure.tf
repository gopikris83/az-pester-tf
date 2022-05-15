terraform {
  required_version = ">=1.0"
  backend "azurerm" {
    subscription_id      = "05668dbd-b4a9-47bf-9be0-f93a45c7ca62"
    resource_group_name  = "azactivedirectory-rg"
    storage_account_name = "azadmysql2022"
    container_name       = "tfstate"
    key                  = "dev.terraform.state"
    tenant_id            = "1579c998-5e46-4c96-8a84-3ba995b0aea1"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.67.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}