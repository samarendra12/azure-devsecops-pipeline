terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  # Production remote backend configuration.
  # Values are supplied dynamically during CI/CD 'terraform init'
  backend "azurerm" {}
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }

  # Subscription ID is parameterized or inferred via ARM_SUBSCRIPTION_ID environment variable
  subscription_id = var.azure_subscription_id
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.azure_region

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Project     = "Axion-Cloud"
  }
}
