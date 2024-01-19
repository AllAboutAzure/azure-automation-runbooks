#### Resource Group ####
resource "azurerm_resource_group" "resource-group" {
  name     = "testing-rg"
  location = "West Europe"
}

#### Automation Account ####
resource "azurerm_automation_account" "automation_account" {
  name                = "aa-test-automation-account"
  location            = azurerm_resource_group.resource-group.location
  resource_group_name = azurerm_resource_group.resource-group.name
  sku_name            = "Basic"
  tags = {
    environment = "development"
  }
}
