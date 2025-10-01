#!/bin/bash

[[ "$(whoami)" != "root" ]] && {
    echo; echo "Instale com usuario root!"; echo; exit 0
}
[[ -e /etc/takeshi-bot/index.js ]] && {
echo; echo "Atualizando bot, aguarde..."; echo; /etc/takeshi-bot/index.js > /dev/null 2>&1; /etc/takeshi-bot/veri.js > /dev/null 2>&1; /etc/takeshi-bot/gerar.js > /dev/null 2>&1; /etc/takeshi-bot/qrcode > /dev/null 2>&1; chmod +x qrcode; mv qrcode /bin; mv index.js /etc/takeshi-bot; mv veri.js gerar.js /etc/takeshi-bot/src; echo; echo "Atualização terminada! digite onbot para rodar o novo programa"; echo; exit 0
}
apt update -y; echo; echo "Instalando bot, aguarde..."; echo; apt install nodejs -y > /dev/null 2>&1; apt install unzip -y > /dev/null 2>&1; apt install screen -y > /dev/null 2>&1; apt install wget -y > /dev/null 2>&1; wget https://github.com/alfalemos-cyber/cyber/raw/main/takeshi-bot.zip -O /etc/takeshi-bot.zip > /dev/null 2>&1; unzip /etc/takeshi-bot.zip; mv takeshi-bot /etc; echo; echo "Instalação terminada! Não esqueça de editar seus dados no arquivo config.js"; echo
