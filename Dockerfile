FROM keymetrics/pm2:14-alpine
LABEL maintainer="AAMServices <info@aamservices.uk>"

WORKDIR /usr/src/app

COPY pm2.json .
COPY sveltekit .

RUN npm install

EXPOSE 3000

CMD [ "pm2-runtime", "start", "pm2.json" ]
