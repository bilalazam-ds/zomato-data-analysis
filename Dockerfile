FROM jupyter/base-notebook

WORKDIR /app

COPY . /app

RUN pip install numpy
RUN pip install seaborn 
RUN pip install geopandas
RUN pip install matplotlib
RUN pip install scikit-learn 

# Expose the default Jupyter port
EXPOSE 8888

# Start the Jupyter Notebook server
CMD ["start-notebook.sh", "--NotebookApp.token=''"]