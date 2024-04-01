# You can write your azure powershell scripts inline here. 
# You can also pass predefined and custom variables to this script using arguments

$triggersADF = Get-AzDataFactoryV2Trigger -DataFactoryName "lens-adf-3450" -ResourceGroupName "rg-lens-prod"

$triggersADF | ForEach-Object { Start-AzDataFactoryV2Trigger -ResourceGroupName "rg-lens-prod" -DataFactoryName "lens-adf-3450" -Name $_.name -Force }