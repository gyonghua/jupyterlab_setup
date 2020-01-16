# this script is not tested, use this as a reference for setting up plotly for use in jupyterlab

set NODE_OPTIONS=--max-old-space-size=4096
$scriptOutput = ''
$scriptOutput.text = jupyter labextension install @jupyter-widgets/jupyterlab-manager@1.1 --no-build
if $scriptOutput.text -like 'ValueError*' {
    echo $scriptOutput.text
    echo '@jupyter-widgets/jupyterlab-manager@1.1 FAIL'
    exit
}

$scriptOutput.text = jupyter labextension install jupyterlab-plotly@1.4.0 --no-build
if $scriptOutput.text -like 'ValueError*' {
    echo $scriptOutput.text
    echo 'installing jupyterlab-plotly@1.4.0 FAIL'
    exit
}

$scriptOutput.text = jupyter labextension install plotlywidget@1.4.0 --no-build
if $scriptOutput.text -like 'ValueError*' {
    echo $scriptOutput.text
    echo 'installing plotlywidget@1.4.0 FAIL'
    exit
}
jupyter lab build
PAUSE
set NODE_OPTIONS=