﻿param ($dataFactoryName, $resourceGroupName)

$triggersADF = Get-AzDataFactoryV2Trigger -DataFactoryName dataFactoryName -ResourceGroupName $resourceGroupName
$triggersADF | ForEach-Object { Start-AzDataFactoryV2Trigger -ResourceGroupName $resourceGroupName -DataFactoryName $dataFactoryName -Name $_.name -Force }