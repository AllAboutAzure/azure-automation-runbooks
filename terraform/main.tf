terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.88.0"
    }
  }
}

provider "azurerm" {
  # Configuration options  
  # these variables can be configured in the Terraform CLOUD 
  # the mentioned variables are the information related to service principal which is created in Azure Cloud for deploying terraform
  # az ad sp create-for-rbac --role='Contributor' --scopes = '<<subscription Scope>>' --> Run this cmd in azure cli to generate spn
  subscription_id = var.subscriptionID
  client_id= var.clientID
  client_secret = var.clientSecret
  tenant_id = var.tenantID
}
