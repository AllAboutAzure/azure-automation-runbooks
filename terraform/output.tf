output "runbooks-created" {
  value = { for val in  : val.name => {
    id      = val.id
    name    = val.name
    runbookType = val.runbook_type
  } }
  descriptions = "details of the runbooks created"
}
