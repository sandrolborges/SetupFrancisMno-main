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
echo -e "\e[97m                \e[33m                                                                        \e[0m"
echo -e "\e[97m     _          \e[33m                           _         _                            \e[0m"
echo -e "\e[97m    | |         \e[33m                          | |       (_)                           \e[0m"
echo -e "\e[97m  __| |  ___    \e[33m  ____    ___   _____   __| | ____   _  ____                      \e[0m"
echo -e "\e[97m / _  | / _ \   \e[33m |  _ \  / _ \ (____ | / _  ||    \ | ||    \                     \e[0m"
echo -e "\e[97m( (_| || |_| |  \e[33m | |_| || |_| |/ ___ |( (_| || | | || || | | |                    \e[0m"
echo -e "\e[97m \____| \___/   \e[33m |  __/  \___/|\_____| \____||_|_|_||_||_| |_|                    \e[0m"
echo -e "\e[97m                \e[33m |_|    (____/                                                    \e[0m"
echo -e "\e[97m\e[0m"
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
echo -e "\e[93mPasso \e[33m1/4\e[0m"
read -p "Link do Pgadmin4 (ex: pga.seudominio.com): " painelpga
echo ""
echo -e "\e[93mPasso \e[33m4/4\e[0m"
read -p "Seu Email (ex: seunome@dominio.com: " emailpga
echo ""
echo -e "\e[93mPasso \e[33m3/4\e[0m"
read -p "Senha do Pgadmin4 (ex: A@-gdhRtuipoo): " senhapga
echo ""


#
# FIM DE PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

nome_principal="pgadmin4"  #nome do app
sufixo_app=$(date | md5sum | head -c7)
nome_app=$nome_principal$sufixo_app


clear

echo ""
echo -e "Link do Pgadmin4: \e[33m$painelpga\e[0m"
echo -e "Seu Email \e[33m$emailpga\e[0m"
echo -e "Senha do Pgadmin4 \e[33m$senhapga\e[0m"
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
#########################################################



#######################################################
#
#  INSTALANDO O PGADMIN4
#

cd

cd
clear


cat > $nome_app.yaml << EOL

version: "3.7"
services:
  $nome_app:
    image: dpage/pgadmin4:latest
    networks:
      - network_public
    volumes:
      - pgadmin-data:/var/lib/pgadmin
    environment:
      - PGADMIN_DEFAULT_EMAIL=$emailpga
      - PGADMIN_DEFAULT_PASSWORD=$senhapga
      - PGADMIN_CONFIG_ENHANCED_COOKIE_PROTECTION=True
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
          #- node.hostname == worker1
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.$nome_app.rule=(Host(\`$painelpga\`))"
        - "traefik.http.routers.$nome_app.entrypoints=websecure"
        - "traefik.http.routers.$nome_app.priority=1"
        - "traefik.http.routers.$nome_app.tls.certresolver=letsencryptresolver"
        - "traefik.http.services.$nome_app.loadbalancer.server.port=80"
        - "traefik.http.routers.$nome_app.service=$nome_app"
      resources:
        limits:
          cpus: "1"
          memory: 1024M

volumes:
  pgadmin-data:
    external: true
    name: pgadmin-data

networks:
  network_public:
    external: true
    name: network_public





EOL

docker stack deploy --prune --resolve-image always -c $nome_app.yaml $nome_app

clear

# FIM DE INSTALANDO O PGADMIN4
#
#######################################################


#
# MENSAGEM DE INSTLADO + DADOS
#

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
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mAcesse o PgaAdmin4 através do link: https://$painelpga\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mInscreva-se no meu Canal: https://www.youtube.com/c/FrancisMNO\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mSugestões ou duvidas: https://wa.me/+5511968162690\e[0m"
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
