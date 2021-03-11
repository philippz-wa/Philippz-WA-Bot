FROM fusuf/whatsasena:latest

RUN git clone https://github.com/philippz-wa/Philippz-WA-Bot /root/Philippz-WA-Bot
WORKDIR /root/Philippz-WA-Bot/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN npm install

CMD ["node", "bot.js"]
