#########################################################
#
# CARREGANDO LOADING E CORES
#

loading() {
    local duration=2
    local width=$2 
    local interval=0.04
    local progress=0


    while [ $progress -le 100 ]; do
        local bar=$(printf "[%-${width}s]" $(printf "=%.0s" $(seq 1 $(($progress  / 4)))))
        printf "\rChecando Instalações... $bar%3d%%     " $progress
        sleep $interval
        progress=$((progress + 1))
    done

    clear
}

width=25

amarelo="\e[33m"   # Amarelo
branco="\e[97m"    # Branco
reset="\e[0m"      # Reseta

#
# FIM DE CARREGANDO LOADING E CORES
#
#########################################################
#
# INICIANDO LOADING
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
# FIM DE INICIANDO LOADING
# 
#########################################################

##########################################################
# CHECA SE TEM DOCKER
##
if [[ $(!which docker) && $(!docker --version) ]]; then
    clear
	cd && cd SetupFrancisMno-main && chmod +x dockerswarm.sh && ./dockerswarm.sh

else

network_id=$(docker network ls --filter name=network_public --format "{{.ID}}")
traefik_container=$(docker ps -qf name=traefik)
portainer_container=$(docker ps -qf name=portainer)
postgres_container=$(docker ps -qf name=postgres)
redis_container=$(docker ps -qf name=redis)
mongodb_container=$(docker ps -qf name=mongodb)


 if [[ ("$traefik_container" == "") || ("$portainer_container" == "") || ("$postgres_container" == "") || ("$redis_container" == "") || ("$mongodb_container" == "") || ("$network_id" == "") ]]; then
    clear
	cd && cd SetupFrancisMno-main && chmod +x dockerswarm.sh && ./dockerswarm.sh

fi 	

fi


#
# FIM DE CHECA SE TEM DOCKER
# 
#########################################################

##########################################################
# MENSAGEM DO MENU
##

while true; do

clear

echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m _______                             _           _______                      \e[0m"
echo -e "\e[32m(_______)                           | |         (_______)          _          \e[0m"
echo -e "\e[32m _  _  _  _____  ____   _   _     __| | _____    _______  _   _  _| |_   ___  \e[0m"
echo -e "\e[32m| ||_|| || ___ ||  _ \ | | | |   / _  || ___ |  |  ___  || | | |(_   _) / _ \ \e[0m"
echo -e "\e[32m| |   | || ____|| | | || |_| |  ( (_| || ____|  | |   | || |_| |  | |_ | |_| |\e[0m"
echo -e "\e[32m|_|   |_||_____)|_| |_||____/    \____||_____)  |_|   |_||____/    \__) \___/ \e[0m"
echo -e "\e[32m                                                                              \e[0m"
echo -e "\e[32m _                             _              _                            \e[0m"
echo -e "\e[32m| |                _          | |            | |                           \e[0m"
echo -e "\e[32m| | ____    ___  _| |_  _____ | |  _____   __| |  ___    ____  _____   ___ \e[0m"
echo -e "\e[32m| ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \  / ___)| ___ | /___)\e[0m"
echo -e "\e[32m| || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| || |    | ____||___ |\e[0m"
echo -e "\e[32m|_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ |_|    |_____)(___/ \e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"     
echo "Parabéns! Você tem um ambiente pronto. Escolha seu App!"                                                                      
echo "Digite o NUMERO da opção desejada:"
echo ""
echo -e "${amarelo}[1]${reset} - ${branco}Chatwoot${reset}"
echo -e "${amarelo}[2]${reset} - ${branco}Evolution API${reset}"
echo -e "${amarelo}[3]${reset} - ${branco}Typebot${reset}"
echo -e "${amarelo}[4]${reset} - ${branco}N8N${reset}"
echo -e "${amarelo}[5]${reset} - ${branco}Appsmith${reset}"
echo -e "${amarelo}[6]${reset} - ${branco}Minio${reset}"
echo -e "${amarelo}[7]${reset} - ${branco}RabbitMq${reset}"
echo -e "${amarelo}[8]${reset} - ${branco}Flowise - Em Breve${reset}"
echo -e "${amarelo}[9]${reset} - ${branco}UptimeKuma - Em Breve${reset}"
echo -e "${amarelo}[10]${reset} - ${branco}PgAdmin4${reset}"
echo -e "${amarelo}[11]${reset} - ${branco}Sair${reset}"
echo ""
read -p "Escolha uma opção: " choice

#
# FIM DO MENSAGEM DO MENU
#
#########################################################
#
# INICIO DAS OPÇÕES
# 

case $choice in
    1)
        clear
        cd && cd SetupFrancisMno-main && chmod +x chatwoot.sh && ./chatwoot.sh
        ;;
    2)
        clear
        cd && cd SetupFrancisMno-main && chmod +x evolutionapi.sh && ./evolutionapi.sh
       # read -p "Pressione Enter 2 vezes para continuar..."
     #   cd && cd SetupFrancisMno-main && chmod +x chatwoot.sh && ./chatwoot.sh
        ;;
    3)
        clear
        cd && cd SetupFrancisMno-main && chmod +x typebot.sh && ./typebot.sh
      #  read -p "Pressione Enter 2 vezes para continuar..."
     #   cd && cd SetupFrancisMno-main && chmod +x evolutionapi.sh && ./evolutionapi.sh
        ;;
    4)
        clear
        cd && cd SetupFrancisMno-main && chmod +x n8n.sh && ./n8n.sh
      #  read -p "Pressione Enter 2 vezes para continuar..."
     #   cd && cd SetupFrancisMno-main && chmod +x typebot.sh && ./typebot.sh
        ;;
    5)
        clear
        cd && cd SetupFrancisMno-main && chmod +x appsmith.sh && ./appsmith.sh
       # read -p "Pressione Enter 2 vezes para continuar..."
      #  cd && cd SetupFrancisMno-main && chmod +x n8n.sh && ./n8n.sh
        ;;
    6)
        clear
        cd && cd SetupFrancisMno-main && chmod +x minio.sh && ./minio.sh
       # read -p "Pressione Enter 2 vezes para continuar..."
      #  cd && cd SetupFrancisMno-main && chmod +x appsmith.sh && ./appsmith.sh
        ;;
    7)
        clear
        cd && cd SetupFrancisMno-main && chmod +x rabbitmq.sh && ./rabbitmq.sh
      #  read -p "Pressione Enter 2 vezes para continuar..."
        ;;
   
    8)
        clear
        echo ""
        echo ""
        echo "Opção desativada temporariamente.."
        echo "Verifique nosso github para buscar atualizações."
        echo ""
        echo "https://github.com/francisbreit/SetupFrancisMno-main/"
        echo ""
        echo ""
      #  read -p "Pressione Enter 2 vezes para continuar..."
        ;;

     9)
        clear
        echo ""
        echo ""
        echo "Opção desativada temporariamente.."
        echo "Verifique nosso github para buscar atualizações."
        echo ""
        echo "https://github.com/francisbreit/SetupFrancisMno-main/"
        echo ""
        echo ""
      #  read -p "Pressione Enter 2 vezes para continuar..."
        ;;
    
   
    10)
         clear
        cd && cd SetupFrancisMno-main && chmod +x pgadmin.sh && ./pgadmin.sh
      #  read -p "Pressione Enter 2 vezes para continuar..."
        ;;
   
   
    11)
        clear
        echo ""
        clear
        echo "Encerrando o Auto Instalador."
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
        sleep 2
        exit 0
        ;;
    *)
        echo "Opção inválida. Digite um número de 1 a 11."
        sleep 2
        ;;
esac
        read -p "Pressione Enter para continuar..."

done

#
# FIM DAS OPÇÕES
#
#########################################################
