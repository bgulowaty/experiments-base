FROM jupyter/datascience-notebook:1386e2046833

RUN pip install 'tensorflow' 'keras' 'imbalanced-learn' 'scikit-multiflow' 'ipympl' 'palettable' 'mlxtend' 'plotly'

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-matplotlib
