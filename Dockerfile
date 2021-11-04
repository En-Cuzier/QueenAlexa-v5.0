FROM fusuf/whatsasena:latest

RUN git clone https://github.com/En-Cuzier/QueenAlexa-v5.0 /root/QueenAlexa-v5.0
WORKDIR /root/QueenAlexa-v5.0/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
