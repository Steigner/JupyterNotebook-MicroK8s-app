FROM quay.io/jupyter/pytorch-notebook:cuda12-latest

EXPOSE 8888

CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]