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
      name = "learn-lxgh"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}
