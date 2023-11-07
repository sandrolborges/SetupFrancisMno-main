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
echo -e "\e[97m                                                                                              \e[0m"
echo -e "\e[97m     _          \e[31m _______   _____   _______ \e[0m"
echo -e "\e[97m    | |         \e[31m(_______) (_____) (_______)\e[0m"
echo -e "\e[97m  __| |  ___    \e[31m _     _   _____   _     _ \e[0m"
echo -e "\e[97m / _  | / _ \   \e[31m| |   | | / ___ \ | |   | |\e[0m"
echo -e "\e[97m( (_| || |_| |  \e[31m| |   | |( (___) )| |   | |\e[0m"
echo -e "\e[97m \____| \___/   \e[31m|_|   |_| \_____/ |_|   |_|\e[0m"
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
echo ""
echo -e "\e[93mPasso \e[33m1/2\e[0m"
read -p "Digite o dominio para acessar o admin N8N (ex: apiadmin.dominio.com): " dominioadmin
echo ""
echo -e "\e[93mPasso \e[33m2/2\e[0m"
read -p "Digite o dominio do Webhook do N8N (ex: webhook.dominio.com): " dominiowebhook
echo ""

#
# FIM DE PERGUNTAS PARA VARIAVEIS
#
#########################################################
#
# VERIFICAÇÃO DE DADOS
#

nome_editor="n8n_editor"  #nome do app
nome_webhook="n8n_webhook"
nome_worker="n8n_worker"
nome_databse="n8n"
sufixo_app=$(date | md5sum | head -c7)
nome_app_editor=$nome_editor$sufixo_app
nome_app_webhook=$nome_webhook$sufixo_app
nome_app_worker=$nome_worker$sufixo_app
nome_app_database=$nome_databse$sufixo_app
postgres_password=$(grep -oP '(?<=POSTGRES_PASSWORD=).+' /root/postgres.yaml)
container_id=$(docker ps -qf name=postgres)
docker exec -it $container_id psql -U postgres -d postgres -c "CREATE  DATABASE $nome_app_database;" 


clear

echo ""
echo -e "Link do Admin do N8N: \e[33m$dominioadmin\e[0m"
echo -e "Link do Webhook do N8N: \e[33m$dominiowebhook\e[0m"
echo ""
echo ""
read -p "As informações estão certas? (y/n): " confirma2
if [ "$confirma2" == "y" ]; then

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
#  INSTALANDO O n8n_editor
#

cd

cd
clear


cat > $nome_app_editor.yaml << EOL

version: "3.7"
# Definição dos Serviços
services:
  # Definição do Serviço do Editor
  $nome_app_editor:
    # imagem do docker
    image: n8nio/n8n:latest
    # comando padrão para subir o servidor web
    command: start
    # configura a rede do serviço
    networks:
      - network_public
    # configura as variáveis de ambiente
    environment:
      # Define o Tipo de Banco de Dados para Postgres
      - DB_TYPE=postgresdb
      # Configura o Nome do Banco de Dados
      - DB_POSTGRESDB_DATABASE=$nome_app_database
      # Configura o Host do Banco de Dados
      - DB_POSTGRESDB_HOST=postgres
      # Configura a Porta do Banco de Dados
      - DB_POSTGRESDB_PORT=5432
      # Configura o Usuário do Banco de Dados
      - DB_POSTGRESDB_USER=postgres
      # Configura a Senha do Banco de Dados
      - DB_POSTGRESDB_PASSWORD=$postgres_password
      # Cria uma chave de criptografia para o N8N
      # Gere uma nova aqui https://www.avast.com/random-password-generator#mac
      - N8N_ENCRYPTION_KEY=MgWdjwBbUsqYZ2mv
      # Configura o Host do Editor do N8N
      - N8N_HOST=$dominioadmin
      # Configura o Endereço competo do Editor
      - N8N_EDITOR_BASE_URL=https://$dominioadmin/
      # Força o uso de SSL
      - N8N_PROTOCOL=https
      # Configura o ambiente de execução
      - NODE_ENV=production
      # Configura o Endereço do Webhook
      - WEBHOOK_URL=https://$dominiowebhook/
      # Configura o modo de execução para fila
      - EXECUTIONS_MODE=queue
      # Configura o host do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      # Configura a porta do Redis
      - QUEUE_BULL_REDIS_PORT=6379
      # Configura o indice do banco de dados do Redis
      - QUEUE_BULL_REDIS_DB=11
      # Configura a senha do Redis (caso você use senha no redis)
      #- QUEUE_BULL_REDIS_PASSWORD=prww4IsPPswMuaNQ
      # Configura as bibliotecas externas que serão utilizadas
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      # Configura a limpeza dos dados de execução
      - EXECUTIONS_DATA_PRUNE=true
      # Configura o tempo máximo de armazenamento dos dados de execução
      - EXECUTIONS_DATA_MAX_AGE=336 # 2 semanas
      # Habilita as notificações de novas versões do N8N
      - N8N_VERSION_NOTIFICATIONS_ENABLED=true
      # Configura o N8N para exibir a documentação da API pública
      - N8N_PUBLIC_API_SWAGGERUI_DISABLED=false
      # Configuração dos E-mails para quem quer usar vários usuários
      # Modo de envio de e-mail
      # - N8N_EMAIL_MODE=smtp
      # Configura o Host do SMTP
      # - N8N_SMTP_HOST=smtp.sendgrid.com
      # Configura a Porta do SMTP
      # - N8N_SMTP_PORT=587
      # Configura o Usuário do SMTP
      # - N8N_SMTP_USER=apikey
      # Configura a Senha do SMTP
      # - N8N_SMTP_PASS=
      # Configura o E-mail de envio
      # - N8N_SMTP_SENDER=contato@synca.com.br
      # Configura o SSL do SMTP
      # - N8N_SMTP_SSL=true
    # Configura o Modo de Deploy da Aplicação
    volumes:
    - $nome_app_database-data:/data/backup
    deploy:
      # O editor será executado no modo de replicação
      mode: replicated
      # Vamos ter apenas uma instância do editor
      replicas: 1
      # Configura o local de execução
      placement:
        constraints:
          # Você pode rodar o Editor no Manager mesmo pois usa poucos recursos
          - node.role == manager
          # - node.hostname == worker1
          # - node.labels.app == http # nome do label: app, valor do label: http
      # Limitação
      resources:
        # Definição dos Limites de Recursos deste Serviço
        limits:
          # Define a quantidade de CPU para o N8N para evitar travamento do Host
          cpus: "4"
          # Define a quantidade de RAM para o N8N para evitar travamento do Host
          memory: 2048M
      labels:
        # Configura o Roteamento do Traefik
        - traefik.enable=true
        # Define o enderço do Editor do N8N
        - traefik.http.routers.$nome_app_editor.rule=Host(\`$dominioadmin\`)
        # Redireciona o endereço para HTTPS
        - traefik.http.routers.$nome_app_editor.entrypoints=websecure
        # Define o certificado SSL
        - traefik.http.routers.$nome_app_editor.tls.certresolver=letsencryptresolver
        # Define o serviço do Editor
        - traefik.http.routers.$nome_app_editor.service=$nome_app_editor
        # Define a porta do serviço do Editor
        - traefik.http.services.$nome_app_editor.loadbalancer.server.port=5678
        # Define o uso do Host Header
        - traefik.http.services.$nome_app_editor.loadbalancer.passHostHeader=true
volumes:
  $nome_app_database-data:
    external: true
    name: $nome_app_database-datad
networks:
  network_public:
    name: network_public  
    external: true


EOL

docker stack deploy --prune --resolve-image always -c $nome_app_editor.yaml $nome_app_editor

clear

# FIM DE INSTALANDO O n8n_editor
#
#######################################################

#######################################################
#
#  INSTALANDO O n8n_webhook
#

cd

cd
clear

cat > $nome_app_webhook.yaml << EOL

version: "3.7"
# Definição dos Serviços
services:
  $nome_app_webhook:
    # imagem do docker
    image: n8nio/n8n:latest
    # comando padrão para subir o servidor web
    command: webhook
    # configura a rede do serviço
    networks:
      - network_public
    # configura as variáveis de ambiente
    environment:
      # Define o Tipo de Banco de Dados para Postgres
      - DB_TYPE=postgresdb
      # Configura o Nome do Banco de Dados
      - DB_POSTGRESDB_DATABASE=$nome_app_database
      # Configura o Host do Banco de Dados
      - DB_POSTGRESDB_HOST=postgres
      # Configura a Porta do Banco de Dados
      - DB_POSTGRESDB_PORT=5432
      # Configura o Usuário do Banco de Dados
      - DB_POSTGRESDB_USER=postgres
      # Configura a Senha do Banco de Dados
      - DB_POSTGRESDB_PASSWORD=$postgres_password
      # Cria uma chave de criptografia para o N8N
      # Gere uma nova aqui https://www.avast.com/random-password-generator#mac
      - N8N_ENCRYPTION_KEY=MgWdjwBbUsqYZ2mv
      # Configura o Host do Editor do N8N
      - N8N_HOST=$dominioadmin
      # Configura o Endereço competo do Editor
      - N8N_EDITOR_BASE_URL=https://$dominioadmin/
      # Força o uso de SSL
      - N8N_PROTOCOL=https
      # Configura o ambiente de execução
      - NODE_ENV=production
      # Configura o Endereço do Webhook
      - WEBHOOK_URL=https://$dominiowebhook/
      # Configura o modo de execução para fila
      - EXECUTIONS_MODE=queue
      # Configura o host do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      # Configura a porta do Redis
      - QUEUE_BULL_REDIS_PORT=6379
      # Configura o indice do banco de dados do Redis
      - QUEUE_BULL_REDIS_DB=11
      # Configura a senha do Redis (caso você use senha no redis)
      #- QUEUE_BULL_REDIS_PASSWORD=prww4IsPPswMuaNQ
      # Configura as bibliotecas externas que serão utilizadas
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      # Configura a limpeza dos dados de execução
      - EXECUTIONS_DATA_PRUNE=true
      # Configura o tempo máximo de armazenamento dos dados de execução
      - EXECUTIONS_DATA_MAX_AGE=336 # 2 semanas
      # Habilita as notificações de novas versões do N8N
      - N8N_VERSION_NOTIFICATIONS_ENABLED=true
      # Configura o N8N para exibir a documentação da API pública
      - N8N_PUBLIC_API_SWAGGERUI_DISABLED=false
      # Configuração dos E-mails para quem quer usar vários usuários
      # Modo de envio de e-mail
      # - N8N_EMAIL_MODE=smtp
      # Configura o Host do SMTP
      # - N8N_SMTP_HOST=smtp.sendgrid.com
      # Configura a Porta do SMTP
      # - N8N_SMTP_PORT=587
      # Configura o Usuário do SMTP
      # - N8N_SMTP_USER=apikey
      # Configura a Senha do SMTP
      # - N8N_SMTP_PASS=
      # Configura o E-mail de envio
      # - N8N_SMTP_SENDER=contato@synca.com.br
      # Configura o SSL do SMTP
      # - N8N_SMTP_SSL=true
    # Configura o Modo de Deploy da Aplicação
    deploy:
      # O editor será executado no modo de replicação
      mode: replicated
      # Vamos ter apenas uma instância do editor
      replicas: 2
      # Configura o local de execução
      placement:
        # Você pode rodar o Editor no Manager mesmo pois usa poucos recursos
        constraints:
          - node.role == manager
          # - node.hostname == worker1
          # - node.labels.app == workers # nome do label: app, valor do label: workers
      resources:
        # Definição dos Limites de Recursos deste Serviço
        limits:
          # Define a quantidade de CPU para o N8N para evitar travamento do Host
          cpus: "1"
          # Define a quantidade de RAM para o N8N para evitar travamento do Host
          memory: 2048M
      labels:
        # Configura o Roteamento do Traefik
        - traefik.enable=true
        # Define o enderço do Webhook do N8N
        - traefik.http.routers.$nome_app_webhook.rule=Host(\`$dominiowebhook\`)
        # Redireciona o endereço para HTTPS
        - traefik.http.routers.$nome_app_webhook.entrypoints=websecure
        # Define o certificado SSL
        - traefik.http.routers.$nome_app_webhook.tls.certresolver=letsencryptresolver
        # Define o serviço do Webhook
        - traefik.http.routers.$nome_app_webhook.service=$nome_app_webhook
        # Define a porta do serviço do Webhook
        - traefik.http.services.$nome_app_webhook.loadbalancer.server.port=5678
        # Define o uso do Host Header
        - traefik.http.services.$nome_app_webhook.loadbalancer.passHostHeader=true
      # Configura o modo de atualização do serviço
      update_config:
        # Configura o paralelismo de atualização
        parallelism: 1
        # Configura o tempo de espera entre as atualizações
        delay: 30s
        # Configura a ação em caso de falha
        order: start-first
        # Configura a ação em caso de falha
        failure_action: rollback
networks:
  network_public:
    name: network_public
    external: true


EOL

docker stack deploy --prune --resolve-image always -c $nome_app_webhook.yaml $nome_app_webhook

clear

# FIM DE INSTALANDO O n8n_webhook
#
#######################################################


#######################################################
#
#  INSTALANDO O n8n_worker
#

cd

cd
clear


cat > $nome_app_worker.yaml << EOL

version: "3.7"
# Definição dos Serviços
services:
  # Definição do Serviço do Editor
  $nome_app_worker:
    # imagem do docker
    image: n8nio/n8n:latest
    # comando padrão para subir o servidor web
    command: worker --concurrency=10
    # configura a rede do serviço
    networks:
      - network_public
    # configura as variáveis de ambiente
    environment:
      # Define o Tipo de Banco de Dados para Postgres
      - DB_TYPE=postgresdb
      # Configura o Nome do Banco de Dados
      - DB_POSTGRESDB_DATABASE=$nome_app_database
      # Configura o Host do Banco de Dados
      - DB_POSTGRESDB_HOST=postgres
      # Configura a Porta do Banco de Dados
      - DB_POSTGRESDB_PORT=5432
      # Configura o Usuário do Banco de Dados
      - DB_POSTGRESDB_USER=postgres
      # Configura a Senha do Banco de Dados
      - DB_POSTGRESDB_PASSWORD=$postgres_password
      # Cria uma chave de criptografia para o N8N
      # Gere uma nova aqui https://www.avast.com/random-password-generator#mac
      - N8N_ENCRYPTION_KEY=MgWdjwBbUsqYZ2mv
      # Configura o Host do Editor do N8N
      - N8N_HOST=$dominioadmin
      # Configura o Endereço competo do Editor
      - N8N_EDITOR_BASE_URL=https://$dominioadmin/
      # Força o uso de SSL
      - N8N_PROTOCOL=https
      # Configura o ambiente de execução
      - NODE_ENV=production
      # Configura o Endereço do Webhook
      - WEBHOOK_URL=https://$dominiowebhook/
      # Configura o modo de execução para fila
      - EXECUTIONS_MODE=queue
      # Configura o host do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      # Configura a porta do Redis
      - QUEUE_BULL_REDIS_PORT=6379
      # Configura o indice do banco de dados do Redis
      - QUEUE_BULL_REDIS_DB=11
      # Configura a senha do Redis (caso você use senha no redis)
      #- QUEUE_BULL_REDIS_PASSWORD=prww4IsPPswMuaNQ
      # Configura as bibliotecas externas que serão utilizadas
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      # Configura a limpeza dos dados de execução
      - EXECUTIONS_DATA_PRUNE=true
      # Configura o tempo máximo de armazenamento dos dados de execução
      - EXECUTIONS_DATA_MAX_AGE=336 # 2 semanas
      # Habilita as notificações de novas versões do N8N
      - N8N_VERSION_NOTIFICATIONS_ENABLED=true
      # Configura o N8N para exibir a documentação da API pública
      - N8N_PUBLIC_API_SWAGGERUI_DISABLED=false
      # Configuração dos E-mails para quem quer usar vários usuários
      # Modo de envio de e-mail
      # - N8N_EMAIL_MODE=smtp
      # Configura o Host do SMTP
      # - N8N_SMTP_HOST=smtp.sendgrid.com
      # Configura a Porta do SMTP
      # - N8N_SMTP_PORT=587
      # Configura o Usuário do SMTP
      # - N8N_SMTP_USER=apikey
      # Configura a Senha do SMTP
      # - N8N_SMTP_PASS=
      # Configura o E-mail de envio
      # - N8N_SMTP_SENDER=contato@synca.com.br
      # Configura o SSL do SMTP
      # - N8N_SMTP_SSL=true
    # Configura o Modo de Deploy da Aplicação
    deploy:
      # O editor será executado no modo de replicação
      mode: replicated
      # Vamos ter apenas uma instância do editor
      replicas: 1
      # Configura o local de execução
      placement:
        # Você pode rodar o Editor no Manager mesmo pois usa poucos recursos
        constraints:
          - node.role == manager
          # - node.hostname == worker1
          # - node.labels.app == webhooks # nome do label: app, valor do label: webhooks
      resources:
        # Definição dos Limites de Recursos deste Serviço
        limits:
          # Define a quantidade de CPU para o N8N para evitar travamento do Host
          cpus: "1"
          # Define a quantidade de RAM para o N8N para evitar travamento do Host
          memory: 2048M
      # Configura o modo de atualização do serviço
      update_config:
        # Configura o paralelismo de atualização
        parallelism: 1
        # Configura o tempo de espera entre as atualizações
        delay: 30s
        # Configura a ação em caso de falha
        order: start-first
        # Configura a ação em caso de falha
        failure_action: rollback
networks:
  network_public:
    name: network_public
    external: true






EOL

docker stack deploy --prune --resolve-image always -c $nome_app_worker.yaml $nome_app_worker

clear

# FIM DE INSTALANDO O n8n_worker
#
#######################################################






#
# MENSAGEM DE INSTLADO + DADOS
#

cd
cd
cd
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
echo -e "\e[32mAcesse seu N8N: https://$dominioadmin\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mInscreva-se no meu Canal: https://www.youtube.com/c/FrancisMNO\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mSugestões ou duvidas: https://wa.me/+5511968162690\e[0m"
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
