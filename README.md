
<!--<img src="https://github.com/oriondesign2015/SetupOrion/blob/main/src/Capa.png">-->
<img src="https://github.com/francisbreit/SetupFrancisMno-main/assets/5285287/8ca86d21-26fc-4f41-a4d7-774ab3166b58">

<!--<br><br>EM MANUTENÇÃO<br>-->
<br>
<p align="center">
  Esta é uma solução gratuita de Auto Instalador, com o objetivo de auxiliar na instalação das principais ferramentas low-code de código aberto no mercado.<br>
  Instale aplicativos como N8N, Typebot, Chatwoot, Flowise, etc, em ambiente Docker Swarm em menos de 1 minuto!<br>
  <b>O instalador prepara, inicialmente, o Docker Swarm e ferramentas essenciais, onde logo após, você poderá optar pelos aplicativos que preferir, simplesmente selecionando nas opções do menu inicial, quais das ferramentas prefere instalar.</b>
  Desenvolvido por <b>FrancisMno</b>. 
  Este instalador é baseado e existe graças ao instalador original desenvolvido pela <b> <a href="https://github.com/oriondesign2015/SetupOrion">OrionDesign</a></b> chamado de <b> Setup de Autos Instaladores desenvolvido pela OrionDesign</b>. Apenas usei o código base do instalador da OrionDesign (que considerei muito prático e intuitivo) e alterei a forma de instalação para o ambiente com <b>Docker Swarm, Portainer (Gerenciador Docker) e Traefik (Proxy).</b> 
</p>

<!--
<p align="center">

</p>
<br>
-->
## ✨ Ferramentas

Com essa solução, você consegue instalar as seguintes ferramentas:<br><br>
✅ ⚡ <b>Chatwoot</b> ----------> Latest<br>
✅ ⚡ <b>Evolution API</b> -----> Latest<br>
✅ ⚡ <b>Typebot</b> -----------> Latest<br>
✅ ⚡ <b>N8N</b> ---------------> Latest<br>
✅ ⚡ <b>Appsmith</b> ----------> Latest<br>
✅ ⚡ <b>Minio</b> -------------> Latest<br>
✅ ⚡ <b>RabbitMq</b> ----------> Latest<br>
❌ ⚡ <b>Flowise</b> -----------> Em breve<br>
❌ ⚡ <b>UptimeKuma</b> --------> Em breve<br>
✅ ⚡ <b>PgAdmin4</b> ----------> Latest<br>
ATENÇÃO: Cuidado ao instalar várias ferramentas em conjunto, pois, o servidor utilizado por você necessita que seus recursos suportem aplicativos funcionando ao mesmo tempo! Tome muito cuidado e sempre observe se a sua estrutura é suficiente. Se usar em produção, instale apenas as aplicações as quais sejam necessárias!  <br><br>

## 📌 Observação

- Recomendamos que use a VPS da <b>Hetzner, Contabo, Digital Ocean, etc</b> com o sistema <b>Debian 11 ou 12 limpo</b>! Foram realizados testes de instalação do presente instalador e ferramentas, por várias vezes, em uma VPS da Contabo com 8Gb Ram + 4vCores + Debian 11. Aliás, o código com o ambiente (Docker Swarm), criado por este instalador, foi desenhado para o sistema Debian, por este motivo, além de ser fundamental usar nesta Distro recomendamos que seja um Debian totalmente limpo, do zero!
- Caso for utilizar outra VPS, diferente das citadas aqui, verifique se as portas escolhidas na instalação estão abertas.
- Apesar de não recomendado usar esta solução em servidor com outras ferramentas pré-instaladas, caso tiver qualquer ferramenta na sua VPS em produção, realize Snapshot/backup da sua VPS antes, para evitar eventuais problemas.
- O presente instalador é amplamente seguro e todos os dados preenchidos na instalação não são enviados para nenhum ambiente externo.
- Você não precisa solicitar autorização para usar esse instalador em cursos e/ou videos, apenas forneça os devidos créditos.
- Se após seguir todos os passos, verificar os videos de apoio e instruções de erros, não conseguir instalar alguma ferramenta, entre em contato comigo através do whatsapp [clicando aqui](https://wa.me/+5511968162690) (Diga seu nome, VPS que esta usando, descreva e mande fotos dos problemas que estão ocorrendo). 

## 🔧 Instalação

Serão apenas 3 passos simples durante a instalação (mostrados logo abaixo), e a única recomendação que temos, se você instalar o nosso instalador pela primeira vez, é já deixar pronto um servidor com Debian 11 ou 12 sem nada instalado, apenas o sistema operacional. Passos da instalação:

<p><b>1a-</b> Não tenho o <b>SetupFrancisMno</b> na minha VPS:</p>

```
apt install -y sudo && sudo apt upgrade -y && sudo apt update && sudo apt install -y git && git clone https://github.com/francisbreit/SetupFrancisMno-main.git && cd SetupFrancisMno-main && sudo chmod +x install.sh && ./install.sh
```

<p><b>1b-</b> Já tenho <b>SetupFrancisMno</b> na minha VPS (para quem quer instalar outra aplicação):</p>

```
cd SetupFrancisMno-main && git stash && git pull && chmod +x install.sh && ./install.sh
```
<br>
<p><b>2-</b> Aguarde</p>
Ao pressionar <b>Enter</b>, o Auto Instalador começará a executar uma verificação padrão no seu servidor. Existem duas situações. Na primeira, a qual ocorre quando você está instalando pela primeira vez, será necessário aguardar a etapa de instalação do Docker, Traefik e Portainer. Como ferramentas essenciais, também são instalados o Postgres, Mongodb e Redis. Na segunda situação, caso você já tenha utilizado o instalador anteriormente, a etapa anterior será desconsiderada e já aparecerá o Menu Principal, para você escolher qual App deseja instalar.<br><br>


<p><b>3-</b> Escolha a(s) ferramenta(s)</p>
Agora chegou a parte mais interessante. Você visualizará o menu Principal e bastará digitar o <b>NUMERO</b> da opção desejada, pressionar <b>Enter</b> para confirmar e deixar nosso instalador fazer o resto por você.



## 🚀 Como contribuir

Simples, se inscreva no meu canal [clicando aqui](https://www.youtube.com/c/FrancisMNO) ou mande um Feedback no meu [whatsApp](http://wa.me/+5511968162690), falando como foi instalar essas ferramentas usando nossa solução, passar bugs que ocorrerão e até ideias/novas ferramentas que você já estara contribuindo bastante com nossa solução! Se quiser contribuir financeiramente tambem, sinta-se a vontade para dar aquele cafezinho maroto via pix (CPF: 10296159859)

## ✅ Agradecimentos/Creditos

Agradoço especialmente a Orion <a href="https://github.com/oriondesign2015/SetupOrion">OrionDesign</a> por ter me inspirado a criar a presente versão, alem de compartilhar na comunidade várias informações.
Tambem meus agradecimentos para o pessoal da comunidade <a href="https://github.com/cwmkt">CWMKT</a> da qual compartilhamos muitas informações e ao pessoal da <a href="https://evolution-api.com/opensource-whatsapp-api/">Evolution APi</a>.
<br><br><br>

Todo conhecimento deve ser compartilhado!

> Entre em contato comigo através do WhatsApp [clicando aqui](http://wa.me/+5511968162690).

## ✅ Colaboradores
Segue a lista (das melhores) pessoas a colaborar com nosso Git, seja com soluções, avisos de correções ou ajuda monetaria:
- <b>ORION DESIGN</b>
- <b>EQUIPE CWMKT</b>
- <b>RAPHAEL - ASTRA ONLINE</b>
