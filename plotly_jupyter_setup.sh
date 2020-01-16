# this script is incomplete, use it as reference for setting up plotly for use in Jupyterlab
export NODE_OPTIONS=--max-old-space-size=4096
jupyter labextension install @jupyter-widgets/jupyterlab-manager@1.1 --no-build
jupyter labextension install jupyterlab-plotly@1.4.0 --no-build
jupyter labextension install plotlywidget@1.4.0 --no-build
jupyter lab build
unset NODE_OPTIONS