# Adding BGinfo Extention to a VM in Azure

$json = Get-Content -Raw -Path bginfo.json | ConvertFrom-Json

Set-AzVMExtension -ExtensionName BGInfo `
    -Publisher Microsoft.Compute `
    -Version 2.1 `
    -ExtensionType BGInfo `
    -Location $json[0].bginfo.location `
    -ResourceGroupName $json[0].bginfo.resourcegroupe. `
    -VMName $json[0].bginfo.location.vmname