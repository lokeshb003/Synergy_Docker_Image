FROM ubuntu:22.10

WORKDIR /root

RUN mkdir /root/mk

RUN apt update && apt install git nodejs npm -y

WORKDIR /root/mk

RUN git clone https://github.com/Melospiza-rit/synergy_ias

WORKDIR /root/mk/synergy_ias

RUN npm install

RUN npm run build

RUN npm install

EXPOSE 3000

CMD ["npm","start"]
