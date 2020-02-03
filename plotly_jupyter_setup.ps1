# this script is not tested, use this as a reference for setting up plotly for use in jupyterlab
echo 'setting node option'
set NODE_OPTIONS=--max-old-space-size=4096
$scriptOutput = ''
echo 'installing jupyter-manager'
$scriptOutput = &'jupyter' 'labextension' 'install' '@jupyter-widgets/jupyterlab-manager@1.1' '--no-build' | Out-String
# Write-Host "scriptOutput is $scriptOutput"
if ($scriptOutput -like 'ValueError*' -or $scriptOutput -like 'CRITICAL*') {
    echo $scriptOutput
    echo '@jupyter-widgets/jupyterlab-manager@1.1 FAIL'
    exit
}

echo 'installing jupyterlab-plotly'
$scriptOutput = &'jupyter' 'labextension' 'install' 'jupyterlab-plotly@1.4.0' '--no-build' | Out-String
# Write-Host "scriptOutput is $scriptOutput"
if ($scriptOutput -like 'ValueError*' -or $scriptOutput -like 'CRITICAL*') {
    echo $scriptOutput
    echo 'installing jupyterlab-plotly@1.4.0 FAIL'
    exit
}

echo 'installing plotlywidget'
$scriptOutput = &'jupyter' 'labextension' 'install' 'plotlywidget@1.4.0' '--no-build' | Out-String
# Write-Host "scriptOutput is $scriptOutput"
if ($scriptOutput -like 'ValueError*' -or $scriptOutput -like 'CRITICAL*') {
    echo $scriptOutput
    echo 'installing plotlywidget@1.4.0 FAIL'
    exit
}

jupyter lab build
PAUSE
set NODE_OPTIONS=
echo 'setup complete'
