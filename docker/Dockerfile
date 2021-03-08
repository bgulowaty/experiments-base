FROM jupyter/datascience-notebook:dc9744740e12

ADD requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

CMD ["start-notebook.sh", "--NotebookApp.token=''"]