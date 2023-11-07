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
echo -e "\e[97m                \e[33m                                                                              \e[0m"
echo -e "\e[97m     _          \e[33m _______                       _                   \e[0m"
echo -e "\e[97m    | |         \e[33m(_______)                     | |              _   \e[0m"
echo -e "\e[97m  __| |  ___    \e[33m    _     _   _  ____   _____ | |__    ___   _| |_ \e[0m"
echo -e "\e[97m / _  | / _ \   \e[33m   | |   | | | ||  _ \ | ___ ||  _ \  / _ \ (_   _)\e[0m"
echo -e "\e[97m( (_| || |_| |  \e[33m   | |   | |_| || |_| || ____|| |_) )| |_| |  | |_ \e[0m"
echo -e "\e[97m \____| \___/   \e[33m   |_|    \__  ||  __/ |_____)|____/  \___/    \__)\e[0m"
echo -e "\e[97m                \e[33m         (____/ |_|                                \e[0m"
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
#echo -e "\e[93mPasso \e[33m1/13\e[0m"
#read -p "Digite a versão que deseja instalar (ex: latest | main | 2.16.0): " version
#echo ""
echo -e "\e[93mPasso \e[33m1/9\e[0m"
read -p "Link do Builder (ex: typebot.seudominio.com): " builder
echo ""
#echo -e "\e[93mPasso \e[33m3/13\e[0m"
#read -p "Porta do Builder (padrão: 3001): " portabuilder
#echo ""
echo -e "\e[93mPasso \e[33m2/9\e[0m"
read -p "Link do Viewer (ex: bot.seudominio.com): " viewer
echo ""
#echo -e "\e[93mPasso \e[33m5/13\e[0m"
#read -p "Porta do Viewer (padrão: 3002): " portaviewer
#echo ""
echo -e "\e[93mPasso \e[33m3/9\e[0m"
read -p "Link do Storage (ex: storage.seudominio.com): " storage
echo ""
#echo -e "\e[93mPasso \e[33m7/13\e[0m"
#read -p "Porta do Storage (padrão: 9000): " portastorage
#echo ""
echo -e "\e[93mPasso \e[33m4/9\e[0m"
read -p "Seu Email (ex: contato@dominio.com): " email
echo ""
echo -e "\e[93mPasso \e[33m5/9\e[0m"
read -p "Senha do seu Email (se for gmail, precisa ser a senha de aplicativo): " senha
echo ""
echo -e "\e[93mPasso \e[33m6/9\e[0m"
read -p "SMTP do seu email (ex: smtp.hostinger.com): " smtp
echo ""
echo -e "\e[93mPasso \e[33m7/9\e[0m"
read -p "Porta SMTP (ex: 465): " portasmtp
echo ""
echo -e "\e[93mPasso \e[33m8/9\e[0m"
read -p "SMTP_SECURE (Se a porta SMTP for 465, digite true, caso contrario,digite false): " SECURE
echo ""
echo -e "\e[93mPasso \e[33m9/9\e[0m"
echo "crie sua ApiKey no link: https://codebeautify.org/generate-random-hexadecimal-numbers"
read -p "Chave secreta de 32 caracteres: (ex: c56f3775313440c3edce57529a0f02b4): " key

#
# FIM DE PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#


nome_principal="typebot"  #nome do app
sufixo_app=$(date | md5sum | head -c7)
nome_app=$nome_principal$sufixo_app
postgres_password=$(grep -oP '(?<=POSTGRES_PASSWORD=).+' /root/postgres.yaml)
container_id=$(docker ps -qf name=postgres)
docker exec -it $container_id psql -U postgres -d postgres -c "CREATE  DATABASE $nome_app;" 


clear

echo ""
#echo -e "Versão: \e[33m$version\e[0m"
echo -e "Link do Builder: \e[33m$builder\e[0m"
#echo -e "Porta do Builder: \e[33m$portabuilder\e[0m"
echo -e "Link do Viewer: \e[33m$viewer\e[0m"
#echo -e "Porta do Viewer: \e[33m$portaviewer\e[0m"
echo -e "Link do Storage: \e[33m$storage\e[0m"
#echo -e "Porta do Storage: \e[33m$portastorage\e[0m"
echo -e "Seu Email: \e[33m$email\e[0m"
echo -e "Senha do seu Email: \e[33m$senha\e[0m"
echo -e "SMTP do seu email: \e[33m$smtp\e[0m"
echo -e "Porta SMTP: \e[33m$portasmtp\e[0m"
echo -e "SMTP_SECURE: \e[33m$SECURE\e[0m"
echo -e "Chave secreta: \e[33m$key\e[0m"
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
#########################################################



#######################################################
#
#  INSTALANDO O TYPEBOT
#

cd

cd
clear


cat > $nome_app.yaml << EOL

version: "3.7"
services:
  $nome_app-builder:
    image: baptistearno/typebot-builder:latest
    networks:
    - network_public
    environment:
    - POSTGRESDB_DATABASE=$nome_app
    - POSTGRESDB_HOST=postgres
    - POSTGRESDB_PORT=5432
    - POSTGRESDB_USER=postgres
    - POSTGRESDB_PASSWORD=$postgres_password
    - ENCRYPTION_SECRET=$key
    - DATABASE_URL=postgresql://postgres:$postgres_password@postgres:5432/$nome_app
    - NEXTAUTH_URL=https://$builder
    - NEXT_PUBLIC_VIEWER_URL=https://$viewer
    - ADMIN_EMAIL=$email
    - DISABLE_SIGNUP=false
    - SMTP_AUTH_DISABLED=false
    - NEXTAUTH_URL_INTERNAL=http://localhost:3000
    - SMTP_USERNAME=$email
    - SMTP_PASSWORD=$senha
    - SMTP_HOST=$smtp
    - SMTP_PORT=$portasmtp
    - NEXT_PUBLIC_SMTP_FROM='Typebot' <$email>
    - SMTP_SECURE=$SECURE
    #- GOOGLE_CLIENT_ID=
    #- GOOGLE_CLIENT_SECRET=
    - S3_ACCESS_KEY=FpLGNhtTERvWugZV2Bhl
    - S3_SECRET_KEY=CQYcvpjGD9wUCdiS28kajlI8KDjqnV82pUBwjEHh
    - S3_BUCKET=typebot
    - S3_ENDPOINT=$storage
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
      - traefik.enable=1
      - traefik.http.routers.$nome_app-builder.rule=(Host(\`$builder\`))
      - traefik.http.routers.$nome_app-builder.entrypoints=websecure
      - traefik.http.routers.$nome_app-builder.priority=1
      - traefik.http.routers.$nome_app-builder.tls.certresolver=letsencryptresolver
      - traefik.http.routers.$nome_app-builder.service=$nome_app-builder
      - traefik.http.services.$nome_app-builder.loadbalancer.server.port=3000
      - traefik.http.services.$nome_app-builder.loadbalancer.passHostHeader=1
  $nome_app-viewer:
    image: baptistearno/typebot-viewer:latest
    networks:
    - network_public
    environment:
    - POSTGRESDB_DATABASE=$nome_app
    - POSTGRESDB_HOST=postgres
    - POSTGRESDB_PORT=5432
    - POSTGRESDB_USER=postgres
    - POSTGRESDB_PASSWORD=$postgres_password
    - ENCRYPTION_SECRET=$key
    - DATABASE_URL=postgresql://postgres:pQQQhgeR0RuBHiJS@postgres:5432/typebotfrancis
    - NEXTAUTH_URL=https://$builder
    - NEXT_PUBLIC_VIEWER_URL=https://$viewer
    - ADMIN_EMAIL=$email
    - DISABLE_SIGNUP=false
    - SMTP_AUTH_DISABLED=false
    - NEXTAUTH_URL_INTERNAL=http://localhost:3000
    - SMTP_USERNAME=$email
    - SMTP_PASSWORD=$senha
    - SMTP_HOST=$smtp
    - SMTP_PORT=$portasmtp
    - NEXT_PUBLIC_SMTP_FROM='Typebot' <$email>
    - SMTP_SECURE=$SECURE
    #- GOOGLE_CLIENT_ID=
    #- GOOGLE_CLIENT_SECRET=
    - S3_ACCESS_KEY=FpLGNhtTERvWugZV2Bhl
    - S3_SECRET_KEY=CQYcvpjGD9wUCdiS28kajlI8KDjqnV82pUBwjEHh
    - S3_BUCKET=typebot
    - S3_ENDPOINT=$storage
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
      - traefik.enable=1
      - traefik.http.routers.$nome_app-viewer.rule=(Host(\`$viewer\`))
      - traefik.http.routers.$nome_app-viewer.entrypoints=websecure
      - traefik.http.routers.$nome_app-viewer.priority=1
      - traefik.http.routers.$nome_app-viewer.tls.certresolver=letsencryptresolver
      - traefik.http.routers.$nome_app-viewer.service=$nome_app-viewer
      - traefik.http.services.$nome_app-viewer.loadbalancer.server.port=3000
      - traefik.http.services.$nome_app-viewer.loadbalancer.passHostHeader=1
networks:
  network_public:
    external: true
    name: network_public





EOL

docker stack deploy --prune --resolve-image always -c $nome_app.yaml $nome_app

clear

# FIM DE INSTALANDO O TYPEBOT
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
echo -e "\e[32mAcesse o seu Typebot através do link: https://$builder\e[0m"
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
