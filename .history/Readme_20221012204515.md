Comandos de docker devém estar em root

--- Depois de Vagrant ssh ---

sudo su - => Entrar em root
mkdir => Criar pasta
docker build -t devops/node-app . => criar imagem docker com build
docker run --name redis-server -d redis => subir container redis
docker run devops/node-app => container node-app
docker network create devops => criar rede de comunicação entre containers
docker rm -f redis-server => remover container
docker run --net devops --name redis-server -d redis => subir container em network
docker run --net devops -p 8080:8081 -d devops/node-app => subir container node-app network
docker logs -f redis-server => verificar logs do docker
curl http://localhost:8080/ => testar app