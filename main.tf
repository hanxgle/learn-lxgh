terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    # The name of your Terraform Cloud organization.
    organization = "hanxgle"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "new-learn-lxgh"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "new-learn-lxgh"
  location = "southeastasia"
}

resource "azurerm_service_plan" "plan" {
  name                = "app-service-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type = "Windows"
  sku_name = "F1"
}
