FROM keymetrics/pm2:latest-alpine
LABEL maintainer="AAMServices <info@aamservices.uk>"

WORKDIR /usr/src/app

RUN apk add --no-cache git curl && \
    curl -fsSL "https://raw.githubusercontent.com/aam-git/docker-pm2-sveltekit/master/ecosystem.config.js" -o ecosystem.config.js && \
    npm init svelte@next sveltekit && \
    cd sveltekit && \
    npm install

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
