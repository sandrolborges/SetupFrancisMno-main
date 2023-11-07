#########################################################
#
# LOADING
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
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m _______                         _                             _              _               \e[0m"
echo -e "\e[97m(_______)          _            | |                _          | |            | |              \e[0m"
echo -e "\e[97m _______  _   _  _| |_   ___    | | ____    ___  _| |_  _____ | |  _____   __| |  ___    ____ \e[0m"
echo -e "\e[97m|  ___  || | | |(_   _) / _ \   | ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \  / ___)\e[0m"
echo -e "\e[97m| |   | || |_| |  | |_ | |_| |  | || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| || |    \e[0m"
echo -e "\e[97m|_|   |_||____/    \__) \___/   |_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ |_|    \e[0m"
echo -e "\e[97m                                                                                              \e[0m"
echo -e "\e[97m     _          \e[36m _______  _                                               \e[0m"
echo -e "\e[97m    | |         \e[36m(_______)| |              _                           _   \e[0m"
echo -e "\e[97m  __| |  ___    \e[36m _       | |__   _____  _| |_  _ _ _   ___    ___   _| |_ \e[0m"
echo -e "\e[97m / _  | / _ \   \e[36m| |      |  _ \ (____ |(_   _)| | | | / _ \  / _ \ (_   _)\e[0m"
echo -e "\e[97m( (_| || |_| |  \e[36m| |_____ | | | |/ ___ |  | |_ | | | || |_| || |_| |  | |_ \e[0m"
echo -e "\e[97m \____| \___/   \e[36m \______)|_| |_|\_____|   \__) \___/  \___/  \___/    \__)\e[0m"
echo -e "\e[97m                \e[36m                                                          \e[0m"
echo -e "\e[97m\e[0m"
echo -e "\e[97m\e[0m"

#
# FIM DE NOME DO PROGRAMA
#
#########################################################
#
# PERGUNTAS PARA VARIAVEIS
#

echo ""
echo -e "\e[93m==============================================================================\e[0m"
echo -e "\e[93m=                                                                            =\e[0m"
echo -e "\e[93m=                 \e[33mPreencha as informações solicitadas abaixo\e[93m                 =\e[0m"
echo -e "\e[93m=                                                                            =\e[0m"
echo -e "\e[93m==============================================================================\e[0m"
echo ""
echo ""
echo ""
echo -e "\e[93mPasso \e[33m1/7\e[0m"
read -p "Digite o dominio para acessar o Chatwoot (ex: app.dominio.com): " dominiochat
echo ""
echo -e "\e[93mPasso \e[33m2/7\e[0m"
read -p "Digite o nome da sua empresa (ex: Mnozap): " empresachatwoot
echo ""
echo -e "\e[93mPasso \e[33m3/7\e[0m"
read -p "Digite seu email de admin (ex: contato@dominio.com): " emailchat
echo ""
echo -e "\e[93mPasso \e[33m4/7\e[0m"
read -p "Digite o Dominio do seu SMTP (ex: mnozap.art.br | ex: gmail.com): " dominiosmtpchatwoot
echo ""
echo -e "\e[93mPasso \e[33m5/7\e[0m"
read -p "Digite o Host SMTP (ex: smtp.hostinger.com): " smtpchatwoot
echo ""
echo -e "\e[93mPasso \e[33m6/7\e[0m"
read -p "Digite a Porta SMTP (ex: 465): " portachatwoot
echo ""
echo -e "\e[93mPasso \e[33m7/7\e[0m"
read -p "Senha do seu Email (se for Gmail precisa ser senha de aplicativo): " senhaemailchatwoot
echo ""

#
# FIM DE PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

# Criando variaveis e banco

nome_principal="chatwoot"  #nome do app
sufixo_app=$(date | md5sum | head -c7)
nome_app=$nome_principal$sufixo_app
sufixo_traefik="_sslheader"
nome_app_sslheader=$nome_app$sufixo_traefik
postgres_password=$(grep -oP '(?<=POSTGRES_PASSWORD=).+' /root/postgres.yaml)
container_id=$(docker ps -qf name=postgres)
docker exec -it $container_id psql -U postgres -d postgres -c "CREATE  DATABASE $nome_app;" 


clear
echo ""
echo -e "\e[93m==============================================================================\e[0m"
echo -e "\e[93m=                                                                            =\e[0m"
echo -e "\e[93m=                 \e[33mVerifique se os dados abaixos estao certos\e[93m                 =\e[0m"
echo -e "\e[93m=                                                                            =\e[0m"
echo -e "\e[93m==============================================================================\e[0m"
echo ""
echo ""
echo -e "Link do chatwoot: \e[33m$dominiochat\e[0m"
echo -e "Nome da empresa: \e[33m$empresachatwoot\e[0m"
echo -e "Email admin: \e[33m$emailchat\e[0m"
echo -e "Dominio SMTP: \e[33m$dominiosmtpchatwoot\e[0m"
echo -e "Host SMTP: \e[33m$smtpchatwoot\e[0m"
echo -e "Porta SMTP: \e[33m$portachatwoot\e[0m"
echo -e "Senha do Email: \e[33m$senhaemailchatwoot\e[0m"
#echo -e "Senha Postgres: \e[33m$postgres_password\e[0m"
echo ""
echo ""
read -p "As informações estão certas? (y/n): " confirma1
if [ "$confirma1" == "y" ]; then

#
# FIM DE VERIFICAÇÃO DE DADOS
#
#########################################################
#
# MENSAGEM DE INSTALANDO
#

clear

echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m _                             _                     _                 \e[0m"
echo -e "\e[32m| |                _          | |                   | |                \e[0m"
echo -e "\e[32m| | ____    ___  _| |_  _____ | |  _____  ____    __| |  ___           \e[0m"
echo -e "\e[32m| ||  _ \  /___)(_   _)(____ || | (____ ||  _ \  / _  | / _ \          \e[0m"
echo -e "\e[32m| || | | ||___ |  | |_ / ___ || | / ___ || | | |( (_| || |_| | _  _  _ \e[0m"
echo -e "\e[32m|_||_| |_|(___/    \__)\_____| \_)\_____||_| |_| \____| \___/ (_)(_)(_)\e[0m"
echo -e "\e[32m                                                                       \e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

loading1 2 $width

#
# FIM DE MENSAGEM DE INSTALANDO
#
#######################################################
#
#  INSTALANDO O CHATWOOT
#

cd

cd
clear


cat > $nome_app.yaml << EOL

version: "3.7"
services:
  $nome_app-admin:
    image: chatwoot/chatwoot:latest
    hostname: $nome_app
    entrypoint: docker/entrypoints/rails.sh
    command: bundle exec rails s -p 3000 -b 0.0.0.0
    volumes:
    - $nome_app-6data:/app/storage
    - $nome_app-6logos3:/app/public
    networks:
    - network_public
    environment:
    - MAILER_SENDER_EMAIL=$emailchat
    - INSTALLATION_NAME=$nome_app
    - NODE_ENV=production
    - RAILS_ENV=production
    - INSTALLATION_ENV=docker
    - SECRET_KEY_BASE=F7iviLvLDGe4NfRz
    - FRONTEND_URL=https://$dominiochat
    - DEFAULT_LOCALE=pt_BR
    - FORCE_SSL=true
    - ENABLE_ACCOUNT_SIGNUP=true
    - REDIS_URL=redis://redis:6379
    - POSTGRES_DATABASE=$nome_app
    - POSTGRES_HOST=postgres
    - POSTGRES_PORT=5432
    - POSTGRES_USERNAME=postgres
    - POSTGRES_PASSWORD=$postgres_password
    - RAILS_MAX_THREADS=5
    - ACTIVE_STORAGE_SERVICE=local
    - RAILS_LOG_TO_STDOUT=true
    - USE_INBOX_AVATAR_FOR_BOT=true
    - SMTP_DOMAIN=$dominiosmtpchatwoot
    - SMTP_ADDRESS=$smtpchatwoot
    - SMTP_PORT=$portachatwoot
    - SMTP_USERNAME=$emailchat
    - SMTP_PASSWORD=$senhaemailchatwoot
    - SMTP_AUTHENTICATION=login
    - SMTP_TLS=true
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
      - traefik.enable=1
      - traefik.http.routers.$nome_app.rule=Host(\`$dominiochat\`)
      - traefik.http.routers.$nome_app.entrypoints=websecure
      - traefik.http.routers.$nome_app.priority=1
      - traefik.http.routers.$nome_app.tls.certresolver=letsencryptresolver
      - traefik.http.routers.$nome_app.service=$nome_app
      - traefik.http.services.$nome_app.loadbalancer.server.port=3000
      - traefik.http.services.$nome_app.loadbalancer.passHostHeader=1
      - traefik.http.middlewares.$nome_app_sslheader.headers.customrequestheaders.X-Forwarded-Proto=https
      - traefik.http.routers.$nome_app.middlewares=$nome_app_sslheader@docker
  $nome_app-sidekiq:
    image: chatwoot/chatwoot:latest
    hostname: $nome_app
    command: bundle exec sidekiq -C config/sidekiq.yml
    volumes:
    - $nome_app-6data:/app/storage
    - $nome_app-6logos3:/app/public
    networks:
    - network_public
    environment:
    - MAILER_SENDER_EMAIL=$emailchat
    - INSTALLATION_NAME=$nome_app
    - NODE_ENV=production
    - RAILS_ENV=production
    - INSTALLATION_ENV=docker
    - SECRET_KEY_BASE=F7iviLvLDGe4NfRz
    - FRONTEND_URL=https://$dominiochat
    - DEFAULT_LOCALE=pt_BR
    - FORCE_SSL=true
    - ENABLE_ACCOUNT_SIGNUP=true
    - REDIS_URL=redis://redis:6379
    - POSTGRES_DATABASE=$nome_app
    - POSTGRES_HOST=postgres
    - POSTGRES_PORT=5432
    - POSTGRES_USERNAME=postgres
    - POSTGRES_PASSWORD=$postgres_password
    - RAILS_MAX_THREADS=5
    - ACTIVE_STORAGE_SERVICE=local
    - RAILS_LOG_TO_STDOUT=true
    - USE_INBOX_AVATAR_FOR_BOT=true
    - SMTP_DOMAIN=$dominiosmtpchatwoot
    - SMTP_ADDRESS=$smtpchatwoot
    - SMTP_PORT=$portachatwoot
    - SMTP_USERNAME=$emailchat
    - SMTP_PASSWORD=$senhaemailchatwoot
    - SMTP_AUTHENTICATION=login
    - SMTP_TLS=true
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
volumes:
  $nome_app-6data:
    external: true
    name: $nome_app-6datad
  $nome_app-6logos3:
    external: true
    name: $nome_app-6logos3d
networks:
  network_public:
    name: network_public
    external: true





EOL

docker stack deploy --prune --resolve-image always -c $nome_app.yaml $nome_app

clear

# FIM DE INSTALANDO O CHATWOOT
#
#######################################################


# FINALIZANDO INSTALACAO E LIBERANDO BRAND NO INSTALLATION CONFIGS
#
#######################################################

max_wait_time=600  #ajuste do tempo máximo de espera

wait_interval=60

elapsed_time=0

while [ $elapsed_time -lt $max_wait_time ]; do
	CONTAINER_ID=$(docker ps -qf name=$nome_app-admin)
	if [ -n "$CONTAINER_ID" ]; then
		break
	fi
	sleep $wait_interval
	elaapsed_time=$((elaapsed_time + wait_interval))
done

if [ -z "$CONTAINER_ID" ]; then
	echo "O container não foi encontrado após $max_wait_time segundos."
	exit 1
fi

docker exec -it "$CONTAINER_ID" bundle exec rails db:chatwoot_prepare

sleep 30

CONTAINER_ID=$(docker ps -qf name=postgres)

if [ -z "$CONTAINER_ID" ]; then
	echo "Nenhum container Postgres com 'postgres' no nome encontrado."
	exit 1
fi

docker exec -i $CONTAINER_ID psql -U postgres <<EOF
\c $nome_app;
update installation_configs set locked = false;
\q
EOF


# FIM DE FINALIZANDO INSTALACAO E LIBERANDO BRAND NO INSTALLATION CONFIGS
#
#######################################################


cd
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
echo -e "${amarelo}Acesse seu Chatwoot${reset}: ${branco}https://$dominiochat${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Senha postgres${reset}: ${branco}https://$postgres_password${reset}"
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
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

#
# FIM DE MENSAGEM DE INSTLADO + DADOS
#
#########################################################
#
# USUARIO PREENCHEU DADOS ERRADOS
#

elif [ "$confirma1" == "n" ]; then
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
