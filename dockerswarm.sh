#########################################################
#
#    LOADING
#

loading() {
    local duration=2
    local width=$2 
    local interval=0.04
    local progress=0     

    while [ $progress -le 100 ]; do
        local bar=$(printf "[%-${width}s]" $(printf "=%.0s" $(seq 1 $(($progress  / 4)))))
        printf "\rCarregando... $bar%3d%%    " $progress
        sleep $interval
        progress=$((progress + 1))
    done

    clear
}

width=25

loading1() {
    local duration=2
    local width=$2 
    local interval=0.04
    local progress=0     

    while [ $progress -le 100 ]; do
        local bar=$(printf "[%-${width}s]" $(printf "=%.0s" $(seq 1 $(($progress  / 4)))))
        printf "\rIniciando.. $bar%3d%%     " $progress
        sleep $interval
        progress=$((progress + 1))
    done

    clear
}

amarelo="\e[33m"   # Amarelo
branco="\e[97m"    # Branco
reset="\e[0m"      # Reseta

#
# FIM DE LOADING
#
#########################################################
#
# CREDITOS
#

clear

echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m ______             _____                              _       \e[0m"
echo -e "\e[32m(____  \           / ____                             (_)      \e[0m"
echo -e "\e[32m ____)  ) _   _   | |____   ____  _____  ____   ____   _   ___ \e[0m"
echo -e "\e[32m|  __  ( | | | |  |  ____  / ___)(____ ||  _ \ / ___| | | /___)\e[0m"
echo -e "\e[32m| |__)  )| |_| |  | |     | |    / ___ || | | || ___  | ||___ |\e[0m"
echo -e "\e[32m|______/  \__  |  | |     |_|    \_____||_| |_|\____| |_|(___/ \e[0m"
echo -e "\e[32m         (____/                                                \e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

loading 2 $width

#
# FIM DE CREDITOS
#
#########################################################
#
# NOME DO PROGRAMA
#

clear

echo -e "\e[97m\e[0m"
echo -e "\e[97m _______                         _                             _              _               \e[0m"
echo -e "\e[97m(_______)          _            | |                _          | |            | |              \e[0m"
echo -e "\e[97m _______  _   _  _| |_   ___    | | ____    ___  _| |_  _____ | |  _____   __| |  ___    ____ \e[0m"
echo -e "\e[97m|  ___  || | | |(_   _) / _ \   | ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \  / ___)\e[0m"
echo -e "\e[97m| |   | || |_| |  | |_ | |_| |  | || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| || |    \e[0m"
echo -e "\e[97m|_|   |_||____/    \__) \___/   |_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ |_|    \e[0m"
echo -e "\e[32m                                                                                              \e[0m"
echo -e "\e[32m _____                 _                                                                      \e[0m"
echo -e "\e[32m(____ \               | |   _                                                                 \e[0m"
echo -e "\e[32m _   \ \   ___   ____ | | / / _____   ____       ___  _   _    _  _____   ____  ____          \e[0m"
echo -e "\e[32m| |   | | / _ \ / ___|| |/ / | ___ | / ___)     /___)| | | |  | |(____ | / ___)|    \         \e[0m"
echo -e "\e[32m| |__/ / | |_| || ___ | |\ \ | ____|| |        |___ | \ V /\ V / / ___ || |    | | | |        \e[0m"
echo -e "\e[32m|_____/   \___/ \____||_| \ \|_____)|_|        (___/   \_/  \_/  \_____||_|    |_|_|_|        \e[0m"
echo -e "\e[32m"   

#
# FIM DE NOME DO PROGRAMA
#
#########################################################
#
# PERGUNTAS PARA VARIAVEIS
#


echo -e "Para o instalador funcionar perfeitamente pela primeira vez,"
echo -e "você deverá prosseguir com a instalação  do ambiente inicial."
echo -e "Recomendamos que a instalação seja realizada em servidor com"
echo -e "com Debian 11 ou 12 zerado, sem outros aplicativos "
echo -e "\e[93m==========================================================================\e[0m"
echo -e "\e[93m=              \e[33mPARTE INICIAL: INSTALAÇÃO OBRIGATÓRIA DO DOCKER SWARM     =\e[0m"
echo -e "\e[93m=              \e[33mPreencha as informações solicitadas abaixo.               =\e[0m"
echo -e "\e[93m=              \e[33mSerão Instalados no Docker Swarm: o Portainer,            =\e[0m"
echo -e "\e[93m=              \e[33mo Traefik, o Postgres, o Mongodb e o Redis                =\e[0m"
echo -e "\e[93m=              \e[33mIMPORTANTE - Continue apenas após concluir o              =\e[0m"
echo -e "\e[93m=              \e[33mapontamento DNS do dominio do Portainer e a               =\e[0m"
echo -e "\e[93m=              \e[33mrespectiva propagação já ter ocorrido                     =\e[0m"
echo -e "\e[93m==========================================================================\e[0m"
echo ""
echo -e "\e[93mPasso \e[33m1/5\e[0m"
read -p "Digite seu dominio para acessar o Portainer (ex: admin.dominio.com): " dominio
echo ""
echo -e "\e[93mPasso \e[33m2/5\e[0m"
read -p "Digite seu email (ex: contato@dominio.com | sera usado no proxy reverso): " mail
echo ""
echo -e "\e[93mPasso \e[33m3/5\e[0m"
read -p "Crie a senha do Postgres (obs: anote p/ nao esquecer): " postgres_senha
echo ""
echo -e "\e[93mPasso \e[33m4/5\e[0m"
read -p "Crie o usuario do Mongodb (ex: seu nome): " user_mongodb
echo ""
echo -e "\e[93mPasso \e[33m5/5\e[0m"
read -p "Crie a senha do Mongodb (obs: anote p/ não esquecer): " mongodb_senha
echo ""

#
# FIM DAS PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

clear

echo ""

echo -e "Dominio Portainer: \e[33m$dominio\e[0m"

echo -e "Seu Email: \e[33m$mail\e[0m"
echo -e "Senha do Postgres: \e[33m$postgres_senha\e[0m"
echo -e "Usuario do Mongodb: \e[33m$user_mongodb\e[0m"
echo -e "Senha do Mongodb: \e[33m$mongodb_senha\e[0m"
echo ""
echo ""
read -p "As informações estão certas? (y/n) Antes de confirmar, anote as senhas em lugar seguro: " confirma2
if [ "$confirma2" == "y" ]; then

#
# FIM DE VERIFICAÇÃO DE DADOS
#
#########################################################
#
#  INSTALANDO AS DEPENDENCIAS E DOCKER SWARM
#

clear

sudo apt-get update -y
apt install -y sudo gnupg2 wget ca-certificates apt-transport-https curl gnupg nano htop
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://get.docker.com | bash
#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo timedatectl set-timezone America/Sao_Paulo
ip=$(curl ifconfig.me)
sudo docker swarm init --advertise-addr=$ip
docker network create --driver=overlay network_public
sudo apt-get install -Y ca-certificates curl gnupg lsb-release
curl -fsSL https://azlux.fr/repo.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/azlux-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian \
  $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/azlux.list >/dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ctop
clear
cd
cd


#
# FIM DE INSTALANDO AS DEPENDENCIAS E DOCKER SWARM
#
#######################################################

#######################################################
#
#  INSTALANDO O TRAEFIK
#
cd
cd
cat > traefik.yaml << EOL

version: '3.7'
services:
    traefik:
        image: traefik:latest
        command:
            - "--providers.docker.swarmMode=true"
            - "--providers.docker.endpoint=unix:///var/run/docker.sock"
            - "--providers.docker.exposedbydefault=false"
            - "--providers.docker.network=network_public"
            - "--entrypoints.web.address=:80"
            - "--entrypoints.web.http.redirections.entryPoint.to=websecure"
            - "--entrypoints.web.http.redirections.entryPoint.scheme=https"
            - "--entrypoints.web.http.redirections.entrypoint.permanent=true"
            - "--entrypoints.websecure.address=:443"
            - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge=true"
            - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge.entrypoint=web"
            - "--certificatesresolvers.letsencryptresolver.acme.email=$mail"
            - "--certificatesresolvers.letsencryptresolver.acme.storage=/etc/traefik/letsencrypt/acme.json"
            - "--log.level=DEBUG"
            - "--log.format=common"
            - "--log.filePath=/var/log/traefik/traefik.log"
            - "--accesslog=true"
            - "--accesslog.filepath=/var/log/traefik/access-log"
        deploy:
            placement:
                constraints:
                    - node.role == manager
            labels:
                - "traefik.enable=true"
                - "traefik.http.middlewares.redirect-https.redirectscheme.scheme=https"
                - "traefik.http.middlewares.redirect-https.redirectscheme.permanent=true"
                - "traefik.http.routers.http-catchall.rule=hostregexp(\`{host:.+}\`)"
                - "traefik.http.routers.http-catchall.entrypoints=web"
                - "traefik.http.routers.http-catchall.middlewares=redirect-https@docker"
                - "traefik.http.routers.http-catchall.priority=1"
        volumes:
            - "/var/run/docker.sock:/var/run/docker.sock:ro"
            - "vol_certificates:/etc/traefik/letsencrypt"
        ports:
            - target: 80
              published: 80
              mode: host
            - target: 443
              published: 443
              mode: host
        networks:
            - network_public
volumes:
    vol_shared:
        external: true
        name: volume_swarm_shared
    vol_certificates:
        external: true
        name: volume_swarm_certificates
networks:
    network_public:
        external: true
        name: network_public

EOL

docker stack deploy --prune --resolve-image always -c traefik.yaml traefik

clear

# FIM DE INSTALANDO O TRAEFIK
#
#######################################################


#######################################################
#
#  INSTALANDO O PORTAINER
#

cat > portainer.yaml << EOL

version: "3.7"

services:

  agent:
    image: portainer/agent:latest
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - /var/lib/docker/volumes:/var/lib/docker/volumes
    networks:
      - network_public
    deploy:
      mode: global
      placement:
        constraints: [node.platform.os == linux]

  portainer:
    image: portainer/portainer-ce:latest
    command: -H tcp://tasks.agent:9001 --tlsskipverify
    volumes:
      - portainer_data:/data
    networks:
      - network_public
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints: [node.role == manager]
      labels:
        - "traefik.enable=true"
        - "traefik.docker.network=network_public"
        - "traefik.http.routers.portainer.rule=Host(\`$dominio\`)"
        - "traefik.http.routers.portainer.entrypoints=websecure"
        - "traefik.http.routers.portainer.priority=1"
        - "traefik.http.routers.portainer.tls.certresolver=letsencryptresolver"
        - "traefik.http.routers.portainer.service=portainer"
        - "traefik.http.services.portainer.loadbalancer.server.port=9000"

networks:
  network_public:
    external: true
    attachable: true
    name: network_public

volumes:
  portainer_data:
    external: true
    name: portainer_data





EOL

docker stack deploy --prune --resolve-image always -c portainer.yaml portainer

clear

# FIM DE INSTALANDO O PORTAINER
#
#######################################################


#######################################################
#
#  INSTALANDO O POSTGRES
#

cat > postgres.yaml << EOL

version: "3.7"

services:
  postgres:
    image: postgres:14
    environment:
      - POSTGRES_PASSWORD=$postgres_senha
    networks:
      - network_public
    ports:
      - 5432:5432
    volumes:
      - postgres_data:/var/lib/postgresql/data
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
          #- node.hostname == worker1
      resources:
        limits:
          cpus: "4"
          memory: 2048M

volumes:
  postgres_data:
    external: true
    name: postgres_data

networks:
  network_public:
    external: true
    name: network_public



EOL

docker stack deploy --prune --resolve-image always -c postgres.yaml postgres

clear

# FIM DE INSTALANDO O POSTGRES
#
#######################################################


#######################################################
#
#  INSTALANDO O REDIS
#

cat > redis.yaml << EOL

version: '3.7'
services:
    redis:
        image: redis:latest
        networks:
            - network_public
        volumes:
            - redis29_data:/data
        deploy:
            placement:
                constraints: [node.role == manager]
        command: ["redis-server", "--appendonly", "yes"]
volumes:
    redis29_data:
networks:
    network_public:
        external: true
        name: network_public



EOL

docker stack deploy --prune --resolve-image always -c redis.yaml redis

clear

# FIM DE INSTALANDO O REDIS
#
#######################################################


#######################################################
#
#  INSTALANDO O MONGODB
#

cat > mongodb.yaml << EOL

version: '3.7'
services:
    mongodb:
        image: mongo:6
        command: mongod --port 27077
        environment:
            - MONGO_INITDB_ROOT_USERNAME=$user_mongodb
            - MONGO_INITDB_ROOT_PASSWORD=$mongodb_senha
            - PUID=1000
            - PGID=1000
        volumes:
            - mongodb_data:/data/db
            - mongodb_configdb_data:/data/configdb
        networks:
            - network_public
        deploy:
            mode: replicated
            replicas: 1
            placement:
                constraints:
                    - node.role == manager
volumes:
    mongodb_data:
        external: true
        name: mongodb_data
    mongodb_configdb_data:
        external: true
        name: mongodb_configdb_data
networks:
    network_public:
        external: true
        name: network_public


EOL

docker stack deploy --prune --resolve-image always -c mongodb.yaml mongodb

clear

# FIM DE INSTALANDO O MONGODB
#
#######################################################


#
# MENSAGEM DE INSTLADO + DADOS
#

cd
cd
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m _                             _              _        \e[0m"
echo -e "\e[32m| |                _          | |            | |       \e[0m"
echo -e "\e[32m| | ____    ___  _| |_  _____ | |  _____   __| |  ___  \e[0m"
echo -e "\e[32m| ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \ \e[0m"
echo -e "\e[32m| || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| |\e[0m"
echo -e "\e[32m|_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ \e[0m"
echo -e "\e[32m                                                       \e[0m"              
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Portainer (URL):${reset}: ${branco}https://$dominio${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Inscreva-se no meu Canal${reset}: ${branco}https://www.youtube.com/c/FrancisMNO${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Sugestões ou duvidas${reset}: ${branco}https://wa.me/+5511968162690${reset}"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

#
# FIM DE MENSAGEM DE INSTALADO + DADOS
#
#########################################################
#
# USUARIO PREENCHEU DADOS ERRADOS
#

elif [ "$confirma2" == "n" ]; then
    echo "Encerrando a instalação, por favor, inicie a instalação novamente."
    exit 0
else
    echo "Resposta inválida. Digite 'y' para confirmar ou 'n' para encerrar a instalação."
    exit 1
fi

#
# FIM DE USUARIO PREENCHEU DADOS ERRADOS
#
#########################################################
