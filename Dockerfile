# Usa a imagem oficial do Python como base
FROM python:3.9-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de requisitos e instala as dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do codigo para o diretorio de trabalho
COPY . .

# Expõe a porta que a aplicacao usa
EXPOSE 5000

# Define o comando para rodar a aplicacao
CMD ["python3", "app.py"]
