output "runbooks-created" {
  value = { for val in azurerm_automation_runbook.aa-runbooks : val.name => {
    id      = val.id
    name    = val.name
    runbookType = val.runbook_type
  } }
  description = "details of the runbooks created"
}
