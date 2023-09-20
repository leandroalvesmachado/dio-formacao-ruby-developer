# Use a imagem base do Ubuntu 22.04
FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ARG NODE_VERSION=18
ARG POSTGRES_VERSION=15
ARG RUBY_VERSION=3.1.2
ARG RUBYONRAILS_VERSION=7.0.4

ENV TZ=America/Sao_Paulo

# Atualize o sistema e instale as dependências necessárias
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y ca-certificates curl gnupg2 software-properties-common autoconf autotools-dev apt-utils \
    && apt-get clean \ 
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_VERSION.x nodistro main" > /etc/apt/sources.list.d/nodesource.list \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /etc/apt/keyrings/yarn.gpg >/dev/null \
    && echo "deb [signed-by=/etc/apt/keyrings/yarn.gpg] https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && curl -sS https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | tee /etc/apt/keyrings/pgdg.gpg >/dev/null \
    && echo "deb [signed-by=/etc/apt/keyrings/pgdg.gpg] http://apt.postgresql.org/pub/repos/apt jammy-pgdg main" > /etc/apt/sources.list.d/pgdg.list \
    && apt-get update \
    && apt-get install -y zip \
    && apt-get install -y git \
    && apt-get install -y tzdata \
    && apt-get install -y build-essential \
    && apt-get install -y libpq-dev \
    && apt-get install -y ruby-dev \
    && apt-get install -y ruby \
    && apt-get install -y nodejs \
    && apt-get install -y sqlite3 \
    && apt-get install -y postgresql-$POSTGRES_VERSION postgresql-contrib-$POSTGRES_VERSION postgresql-client-$POSTGRES_VERSION \
    && apt-get install libyaml-dev \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set the timezone to America/Fortaleza (or your desired Brazilian timezone)
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Create a directory for PostgreSQL data
RUN mkdir -p /var/lib/postgresql/data

# Configure o PostgreSQL para aceitar conexões locais
RUN echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/$POSTGRES_VERSION/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/$POSTGRES_VERSION/main/postgresql.conf

# Verifique se o Ruby foi instalado corretamente
RUN ruby --version

# Instale a gem Rails
RUN gem install rails -v $RUBYONRAILS_VERSION \
    && gem install bundler \
    && gem install os \
    && gem install cpf_cnpj

# Define o diretório de trabalho dentro do contêiner
WORKDIR /var/www/html

# Copie seu código Ruby para o contêiner
COPY . .

# Exponha a porta padrão do Rails
EXPOSE 3000

# Exponha a porta padrão do PostgreSQL
EXPOSE 5432

# Crie um usuário chamado "user"
RUN useradd -m user

# Add "user" to the "root" group
RUN usermod -aG root user

# Mude para o usuário "user"
# Defina o usuário padrão para "myuser"
# USER user

# Conceda permissões ao usuário "user" no caminho "/var/lib"
# RUN chown -R user:user /var/lib

# Crie um usuário PostgreSQL
# RUN useradd -ms /bin/bash postgres_user

# Comando padrão para iniciar o servidor Rails
# CMD ["rails", "server", "-b", "0.0.0.0"]

# Start PostgreSQL when the container starts
# CMD ["/etc/init.d/postgresql", "start"]

# Inicie o serviço do PostgreSQL automaticamente
# CMD ["service", "postgresql", "start"]