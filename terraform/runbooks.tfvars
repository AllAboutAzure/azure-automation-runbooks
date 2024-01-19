runbooks = [
    {
        name                = "python-test-runbook"
        description         = "This is a runbook for python scripts"
        runbook_type        = "Python3"
        file_content        = "../runbooks/python/test.py"
        tags                = {}
    },
    {
        name                = "powershell-test-runbook"
        description         = "This is a runbook for powershell scripts"
        runbook_type        = "PowerShell"
        file_content        = "../runbooks/powershell/test.ps1"
        tags                = {}
    }
]
