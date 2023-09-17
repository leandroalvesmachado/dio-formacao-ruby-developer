# Use a imagem base do Ubuntu 22.04
FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ARG NODE_VERSION=18

# Atualize o sistema e instale as dependências necessárias
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y ca-certificates curl gnupg2 software-properties-common \
    && apt-get install -y zip \
    && apt-get install -y git \
    && apt-get clean \ 
    && apt-get install -y tzdata \
    && apt-get install -y build-essential \
    && apt-get install -y libpq-dev \
    && apt-get install -y ruby-dev \
    && apt-get install -y ruby \
    && apt-get install -y postgresql postgresql-contrib \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_VERSION.x nodistro main" > /etc/apt/sources.list.d/nodesource.list \
    && apt-get update \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create a directory for PostgreSQL data
RUN mkdir -p /var/lib/postgresql/data

# Crie um usuário PostgreSQL
RUN useradd -ms /bin/bash postgres_user

# Configure o PostgreSQL para aceitar conexões locais
RUN echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/14/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/14/main/postgresql.conf

# Verifique se o Ruby foi instalado corretamente
RUN ruby --version

# Instale a gem Rails
RUN gem install rails -v 7.0.8

# Instale a gem bundler
RUN gem install bundler

# Instale a gem os
RUN gem install os

# Instale a gem cpf_cnpj
RUN gem install cpf_cnpj

# Define o diretório de trabalho dentro do contêiner
WORKDIR /var/www/html

# Copie seu código Ruby para o contêiner
COPY . .

# Exponha a porta padrão do Rails
EXPOSE 3000

# Exponha a porta padrão do PostgreSQL
EXPOSE 5432

# Comando padrão para iniciar o servidor Rails
# CMD ["rails", "server", "-b", "0.0.0.0"]

# Start PostgreSQL when the container starts
# CMD ["/etc/init.d/postgresql", "start"]