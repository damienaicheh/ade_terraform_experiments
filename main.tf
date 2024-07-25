resource "azurerm_resource_group" "this" {
  name     = format("rg-%s", "crazy")
  location = "francecentral"
  tags     = {
    "tag1": "value1"
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.113.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }

  backend "local" {}
  # backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
