FROM jupyter/scipy-notebook

# cria e define o diretório de trabalho
WORKDIR /home/jovyan/work

# Copiar todos os arquivos do projeto para dentro do container
COPY . /home/jovyan/work

# Expor a porta para o Jupyter Notebook
EXPOSE 8888

# Comando para iniciar e rodar o Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]


