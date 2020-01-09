# About
The jupyterlab notebook in this folder has been configured for:
- plots using plotly
- database access using sqlalchemy
- basic machine learning with scikit-learn
- pretty printing for dataframe that is not the last line
# Notable libraries installed
- plotly
- pylint
- scikit-learn
- sqlalchemy
- pandas
- numpy (pandas dependency)
# Setup
conda create -y --name jupyterlab python==3.7
conda activate jupyterlab
conda install -c conda-forge --file requirements.txt

## Additional setup for using plotly in jupyter lab
follow the instructions at https://plot.ly/python/getting-started/#jupyterlab-support-python-35 