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

#### Automation Runbooks ####
resource "azurerm_automation_runbook" "aa-runbooks" {
  for_each = {for inst in runbooks: inst.name => inst}
  name                    = each.value.name
  location                = azurerm_resource_group.resource-group.location
  resource_group_name     = azurerm_resource_group.resource-group.name
  automation_account_name = azurerm_automation_account.automation_account.name
  log_verbose             = "true"
  log_progress            = "true"
  description             = each.value.description
  runbook_type            = each.value.runbook_type
  content                 = file(each.value.file_content)
}
