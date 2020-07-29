# Adding BGinfo Extention to a VM in Azure

$vm = 
$rg =
$location =

Set-AzVMExtension -ExtensionName BGInfo `
    -Publisher Microsoft.Compute `
    -Version 2.1 `
    -ExtensionType BGInfo `
    -Location $location `
    -ResourceGroupName $rg `
    -VMName $vm