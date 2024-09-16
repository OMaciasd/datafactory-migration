$resourceGroupName = "<resourceGroup>"
$dataFactoryName = "<dataFactoryName>"
$pipelineName = "<pipelineName>"

Start-AzDataFactoryV2Pipeline -ResourceGroupName $resourceGroupName -DataFactoryName $dataFactoryName -PipelineName $pipelineName

$status = Get-AzDataFactoryV2PipelineRun -ResourceGroupName $resourceGroupName -DataFactoryName $dataFactoryName -PipelineRunId $pipelineRunId
while($status.Status -eq "InProgress") {
    Start-Sleep -Seconds 10
    $status = Get-AzDataFactoryV2PipelineRun -ResourceGroupName $resourceGroupName -DataFactoryName $dataFactoryName -PipelineRunId $pipelineRunId
}

if($status.Status -ne "Succeeded") {
    throw "Pipeline failed"
}
