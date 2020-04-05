# :whale: Conceitos iniciais do Docker:

## O que é Docker? :whale2:
O docker é uma ferramenta de conteinerização, na qual é possível criar vários contêiners que podem servir para diversas razões.

Você pode criar um contêiner que poderá rodar toda sua aplicação! Isso torna o ambiente **inteiro** portável para qualquer outro Host que tenha o docker instalado.

A utilização do docker pode reduzir o tempo de deloy da aplicação. Tendo em vista que, depois que o ambiente é configurado, teoricamente, não haverá necessidade de reajustes para o correto funcionamento do serviço, o ambiente sempre será o mesmo!

## Instalação: :arrow_down:
Para instalar o docker, siga o paso-a-paso da documentação oficial clicando [aqui](https://docs.docker.com/install/).

## Utilizando o *Dockerfile*:
Para ver um exemplo de *dockerfile* comentado, clique [aqui](./Dockerfile).

## Rodando nosso projeto: :heavy_check_mark:
Depois do *dockerfile* configurado, rode o comando:

```bash
docker build -t image_name path_to_dockerfile
```

Por exmeplo:

```bash
docker build -t joao/dockertest .
```

Nesse exemplo, o nome do contêiner será `joao/dockertest` e esse comando foi dado no mesmo diretório do *dockerfile*.

Depois disso, todas as configurações que foram feitas no *dockerfile* serão executadas.

- **Para rodar o projeto, rode o comando:**

```bash
docker run -p port1:port2 -d image_name
```

`port1:` É a porta que será executada, por exemplo, no nosso navegador com `localhost/*3000*`.

`port2:` Porta do contêiner que vai ser chamada quando entrarmos na `port1`.

Por exemplo:

```bash
docker run -p 8000:8000 -d joao/dockertest
```

Quando eu entrar na posta *8000*, no meu navegador, será executada a porta *8000* do contêiner que foi criado.

## Conhecendo o *Docker Composer*:
O *docker composer* é um orquestrador dos contêiners doker.

Para instalar o *docker compose* clique [aqui](https://docs.docker.com/compose/install/#install-compose).

Para ver as configurações comentadas de um arquivo *docker compose*, clique [aqui](./docker-compose.yml).

Depois de configurar o arquivo *docker file*, rode o comando:

```bash
docker-compose up
```

## Comandos gerais do *Docker*:
Os passos anteriores eram para criar imagens e contêiners no *docker*, os comandos a seguir são para consumir imagens e contêiners já criados:

- Baixando outros contêiners:

```bash
docker pull conteiner
```

`conteiner`: Vai ser o nome do contêiner.

Exemplo: Para instalar um contêiner **PostgreSQL**, troque por *postgres*. Para instalar um contêiner **MongoBD**, troque por *mongo*.

- Subindo um novo contêiner com base no que foi baixado:

```bash
docker run --name container_name -p port1:port2 -d container
```

`container_name`: nome que o contêiner vai ter na sua máquina local.

`port1:` É a porta que será executada, por exemplo, no nosso navegador com `localhost/*3000*`.

`port2:` Porta do contêiner que vai ser chamada quando entrarmos na `port1`. No caso de bancos de dados, cada um tem uma porta específica.

Por exemplo: A porta do **PostgreSQL** é a **5432**. A do **MySQL** é **3306**. A do **MongoDB** é **27017**.

- Vendo quais imagens estão rodando na sua máquina:

```bash
docker ps
```

- Vendo todas as portas que estão ou que foram rodadas na máquina:

```bash
docker ps -a
```

- Iniciando um contêiner:

```bash
docker start container_name
```

`container_name`: nome que o contêiner vai ter na sua máquina local.

- Parando um contêiner:

```bash
docker stop container_name
```

- Removendo um contêiner:

```bash
docker rm container_name
```

---

## 🤔 Como contribuir:

- Faça um fork desse repositório;
- Cria uma branch com a sua feature: `git checkout -b minha-feature`;
- Faça commit das suas alterações: `git commit -m 'feat: Minha nova feature'`;
- Faça push para a sua branch: `git push origin minha-feature`.

Depois que o merge da sua pull request for feito, você pode deletar a sua branch.

---

Feito com ❤ por João Pedro Araújo. [Veja meu Linkedin!](https://www.linkedin.com/in/jo%C3%A3o-pedro-731ab61a5/)