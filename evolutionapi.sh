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
echo -e "\e[97m                \e[32m                                                                              \e[0m"
echo -e "\e[97m     _          \e[32m _______                _                 _                  _______  ______   _ \e[0m"
echo -e "\e[97m    | |         \e[32m(_______)              | |           _   (_)                (_______)(_____ \ | |\e[0m"
echo -e "\e[97m  __| | _____   \e[32m _____    _   _   ___  | |  _   _  _| |_  _   ___   ____     _______  _____) )| |\e[0m"
echo -e "\e[97m / _  |(____ |  \e[32m|  ___)  | | | | / _ \ | | | | | |(_   _)| | / _ \ |  _ \   |  ___  ||  ____/ | |\e[0m"
echo -e "\e[97m( (_| |/ ___ |  \e[32m| |_____  \ V / | |_| || | | |_| |  | |_ | || |_| || | | |  | |   | || |      | |\e[0m"
echo -e "\e[97m \____|\_____|  \e[32m|_______)  \_/   \___/  \_)|____/    \__)|_| \___/ |_| |_|  |_|   |_||_|      |_|\e[0m"
echo -e "\e[97m                \e[32m                                                                                 \e[0m"
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
echo -e "\e[93mPasso \e[33m1/3\e[0m"
read -p "Digite seu dominio para acessar a api (ex: api.dominio.com): " dominio
echo ""
#echo -e "\e[93mPasso \e[33m2/5\e[0m"
#read -p "Digite a porta da api (padrão: 8080): " porta
#echo ""
echo -e "\e[93mPasso \e[33m2/3\e[0m"
read -p "Digite o nome da sua empresa (ex: MNOzap): " client
echo ""
echo -e "\e[93mPasso \e[33m3/3\e[0m"
#echo "crie sua ApiKey no link: https://codebeautify.org/generate-random-hexadecimal-numbers"
chave_hexadecimal=$(openssl rand -hex 16)
read -p "Digite a Api Global Key (sugestão gerada aleatóriamente: $chave_hexadecimal): " key
echo ""
#echo -e "\e[93mPasso \e[33m5/5\e[0m"
#read -p "Digite seu email (ex: contato@dominio.com | sera usado no proxy reverso): " mail
#echo ""

#
# FIM DAS PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

nome_principal="evolution"  #nome do app
sufixo_app=$(date | md5sum | head -c7)
nome_app=$nome_principal$sufixo_app

clear

echo ""
echo -e "Dominio: \e[33m$dominio\e[0m"
#echo -e "Porta: \e[33m$porta\e[0m"
echo -e "Nome da Empresa: \e[33m$client\e[0m"
echo -e "Api Global Key: \e[33m$key\e[0m"
#echo -e "Seu Email: \e[33m$mail\e[0m"
echo ""
echo ""
read -p "As informações estão certas? (y/n): " confirma2
if [ "$confirma2" == "y" ]; then

#
# FIM DE VERIFICAÇÃO DE DADOS
#
#########################################################


#######################################################
#
#  INSTALANDO O EVOLUTION
#

cd

cd
clear


cat > $nome_app.yaml << EOL

version: "3.7"
services:
  $nome_app:
    image: davidsongomes/evolution-api:latest

    hostname: $nome_app
    volumes:
    - $nome_app-instances:/evolution/instances
    - $nome_app-store:/evolution/store
    - $nome_app-views:/evolution/views
    networks:
    - network_public
    environment:
    - SERVER_URL=https://$dominio
    - DOCKER_ENV=true
    - LOG_LEVEL=ERROR,WARN,DEBUG,INFO,LOG,VERBOSE,DARK,WEBHOOKS
    - DEL_INSTANCE=false
    - AUTHENTICATION_TYPE=apikey
    - AUTHENTICATION_API_KEY=$key
    - AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true
    - WEBHOOK_GLOBAL_ENABLED=false
    - WEBHOOK_GLOBAL_URL=
    - WEBHOOK_GLOBAL_WEBHOOK_BY_EVENTS=false
    - WEBHOOK_EVENTS_STATUS_INSTANCE=true
    - WEBHOOK_EVENTS_QRCODE_UPDATED=true
    - WEBHOOK_EVENTS_MESSAGES_SET=false
    - WEBHOOK_EVENTS_MESSAGES_UPDATE=true
    - WEBHOOK_EVENTS_MESSAGES_UPSERT=true
    - WEBHOOK_EVENTS_SEND_MESSAGE=true
    - WEBHOOK_EVENTS_CONTACTS_SET=false
    - WEBHOOK_EVENTS_CONTACTS_UPSERT=true
    - WEBHOOK_EVENTS_CONTACTS_UPDATE=true
    - WEBHOOK_EVENTS_PRESENCE_UPDATE=false
    - WEBHOOK_EVENTS_CHATS_SET=false
    - WEBHOOK_EVENTS_CHATS_UPSERT=true
    - WEBHOOK_EVENTS_CHATS_UPDATE=true
    - WEBHOOK_EVENTS_CONNECTION_UPDATE=true
    - WEBHOOK_EVENTS_GROUPS_UPSERT=true
    - WEBHOOK_EVENTS_GROUPS_UPDATE=true
    - WEBHOOK_EVENTS_GROUP_PARTICIPANTS_UPDATE=true
    - CONFIG_SESSION_PHONE_CLIENT=$client
    - CONFIG_SESSION_PHONE_NAME=Chrome
    - QRCODE_LIMIT=30
    - REDIS_ENABLED=false
    - REDIS_URI=redis://redis:6379
    - WEBHOOK_EVENTS_ERRORS=false
    - DATABASE_ENABLED=false
    - DATABASE_CONNECTION_URI=mongodb://root:root@mongodb:27017/?authSource=admin&readPreference=primary&ssl=false&directConnection=true
    - DATABASE_CONNECTION_DB_PREFIX_NAME=evolution
    - DATABASE_SAVE_DATA_INSTANCE=false
    - DATABASE_SAVE_DATA_NEW_MESSAGE=false
    - DATABASE_SAVE_MESSAGE_UPDATE=false
    - DATABASE_SAVE_DATA_CONTACTS=false
    - DATABASE_SAVE_DATA_CHATS=false
    - RABBITMQ_ENABLED=false
    #- RABBITMQ_URI=amqp://p2rYBtv9Wa:QggPhp8JcMlmhtU4@rabbitmqp7n453l:5672/default
    - CLEAN_STORE_CLEANING_INTERVAL=7200
    - CLEAN_STORE_MESSAGES=false
    - CLEAN_STORE_MESSAGE_UP=false
    - CLEAN_STORE_CONTACTS=false
    - CLEAN_STORE_CHATS=false
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
      - traefik.enable=1
      - traefik.http.routers.$nome_app.rule=Host(\`$dominio\`)
      - traefik.http.routers.$nome_app.entrypoints=websecure
      - traefik.http.routers.$nome_app.priority=1
      - traefik.http.routers.$nome_app.tls.certresolver=letsencryptresolver
      - traefik.http.routers.$nome_app.service=$nome_app
      - traefik.http.services.$nome_app.loadbalancer.server.port=8080
      - traefik.http.services.$nome_app.loadbalancer.passHostHeader=1
volumes:
  $nome_app-instances:
    external: true
    name: $nome_app-instancesd
  $nome_app-store:
    external: true
    name: $nome_app-stored
  $nome_app-views:
    external: true
    name: $nome_app-viewsd
networks:
  network_public:
    name: network_public
    external: true


EOL

docker stack deploy --prune --resolve-image always -c $nome_app.yaml $nome_app

clear

# FIM DE INSTALANDO O EVOLUTION
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
echo -e "${amarelo}Api Url:${reset}: ${branco}https://$dominio${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Global Api Key${reset}: ${branco}$key${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Manager${reset}: ${branco}https://$dominio/manager${reset}"
echo -e "\e[32m\e[0m"
echo -e "${amarelo}Docs${reset}: ${branco}https://$dominio/docs${reset}"
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
# FIM DE MENSAGEM DE INSTLADO + DADOS
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
