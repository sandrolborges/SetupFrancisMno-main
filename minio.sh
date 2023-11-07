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
echo -e "\e[97m     _          \e[33m          _         _                            \e[0m"
echo -e "\e[97m    | |         \e[33m         (_)       (_)                           \e[0m"
echo -e "\e[97m  __| |  ___    \e[33m   ____   _  ____   _   ___                      \e[0m"
echo -e "\e[97m / _  | / _ \   \e[33m  |    \ | ||    \ | | / _ \                     \e[0m"
echo -e "\e[97m( (_| || |_| |  \e[33m  | | | || || | | || || |_| |                    \e[0m"
echo -e "\e[97m \____| \___/   \e[33m  |_|_|_||_||_| |_||_| \___/                     \e[0m"
echo -e "\e[97m                \e[33m                                                 \e[0m"
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
read -p "Link do Painel (ex: admins3.seudominio.com): " painel
echo ""
echo -e "\e[93mPasso \e[33m2/4\e[0m"
read -p "Link Publico (ex: s3.seudominio.com): " publico
echo ""
echo -e "\e[93mPasso \e[33m3/4\e[0m"
read -p "Usuario do Minio (ex: Seu Nome): " usuariominio
echo ""
echo -e "\e[93mPasso \e[33m4/4\e[0m"
read -p "Senha do Minio (ex: senha de acesso. use senha segura: " senhaminio
echo ""


#
# FIM DE PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

nome_principal="minio"  #nome do app
sufixo_app=$(date | md5sum | head -c7)
nome_app=$nome_principal$sufixo_app
sufixo_public="_public"
sufixo_console="_console"
nome_app_public=$nome_app$sufixo_public
nome_app_console=$nome_app$sufixoconsole


clear

echo ""
echo -e "Link do Painel: \e[33m$painel\e[0m"
echo -e "Link Publico: \e[33m$publico\e[0m"
echo -e "Usuario do Minio: \e[33m$usuariominio\e[0m"
echo -e "Senha do Minio: \e[33m$senhaminio\e[0m"
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
#  INSTALANDO O MINIO
#

cd

cd
clear


cat > $nome_app.yaml << EOL

version: "3.7"

services:
  # Define a service named minio
  $nome_app:
    # Usa a imagem do MinIO no Quay.io
    image: quay.io/minio/minio
    # Define o Comando de inicio do servidor do Minio
    command: server /data --console-address ":9001"
    # Define a rede que o container vai usar
    networks:
      - network_public
    # Define o volume que irá armazenar os dados do minio
    volumes:
      - $nome_app-data:/data
    # Define as variaveis de ambiente que o container vai usar
    environment:
      # Define o usuario root do Minio
      - MINIO_ROOT_USER=$usuariominio
      # Define a senha root do Minio
      - MINIO_ROOT_PASSWORD=$senhaminio
      # Define o endereço do console do Minio
      - MINIO_BROWSER_REDIRECT_URL=https://$painel
      # Define o endereço público do Minio
      - MINIO_SERVER_URL=https://$publico
    deploy:
      # Define o modo de deploy do container
      mode: replicated
      # Define o numero de replicas do container (sempre 1)
      replicas: 1
      # Define o local de execução do container
      placement:
        constraints:
          - node.role == manager
      labels:
        # Habilita o Traefik
        - traefik.enable=true
        # Define o endereço publico do Minio
        - traefik.http.routers.$nome_app_public.rule=Host(\`$publico\`)
        # Redireciona o endereço para HTTPS
        - traefik.http.routers.$nome_app_public.entrypoints=websecure
        # Define o certificado SSL
        - traefik.http.routers.$nome_app_public.tls.certresolver=letsencryptresolver
        # Define a porta do servidor publico do Minio
        - traefik.http.services.$nome_app_public.loadbalancer.server.port=9000
        # Define os Headers que o Minio vai usar
        - traefik.http.services.$nome_app_public.loadbalancer.passHostHeader=true
        # Define o serviço que irá ser usado
        - traefik.http.routers.$nome_app_public.service=$nome_app_public
        # Define o endereço do console do Minio
        - traefik.http.routers.$nome_app_console.rule=Host(\`$painel\`)
        # Redireciona o endereço para HTTPS
        - traefik.http.routers.$nome_app_console.entrypoints=websecure
        # Define o certificado SSL
        - traefik.http.routers.$nome_app_console.tls.certresolver=letsencryptresolver
        # Define a porta do servidor do console do Minio
        - traefik.http.services.$nome_app_console.loadbalancer.server.port=9001
        # Define os Headers que o Minio vai usar
        - traefik.http.services.$nome_app_console.loadbalancer.passHostHeader=true
        # Define o serviço que irá ser usado
        - traefik.http.routers.$nome_app_console.service=$nome_app_console

volumes:
  $nome_app-data:
    external: true
    name: $nome_app-data

networks:
  network_public:
    external: true
    name: network_public




EOL

docker stack deploy --prune --resolve-image always -c $nome_app.yaml $nome_app

clear

# FIM DE INSTALANDO O MINIO
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
echo -e "\e[32mAcesse o seu Minio através do link: https://$painel\e[0m"
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
