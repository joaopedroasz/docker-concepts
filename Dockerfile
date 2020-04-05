# Escolhendo o tipo de máquina que vai rodar o projeto:
# A opção 'alpine' é um contêiner apenas com o node, tendo pouquíssimas funcionalidades, porém sendo bem mais leve.
FROM node:alpine

# Diretório da máquina no qual o nosso projeto vai rodar:
WORKDIR /home/joaopedroasz/Documentos/Desenvolvimento

# Copiando o arquivo 'package.json' para o caminho acima e rodando 'yarn'.
COPY package*.json ./
RUN yarn

# Copiando o resto dos arquivos:
COPY . .

# Qual porta que o servidor docker precisa expor para que a máquina local possa ouvir:
EXPOSE 8000

# Comando *único* por cada dockerfile.
# Qual o comando que será execitado para rodar a nossa aplicação:
CMD [ "yarn", "start" ]