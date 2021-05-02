Docker PM2 Svelte Kit
========
powered by pm2:latest-alpine image

[SvelteKit][1] The Fastest Way to Build Svelte Apps.



Available tags you can use: latest (default) or dev

Tag dev runs in live reload mode so you can make changes to the file and they update on the website without need to restart


## docker-compose.yml

```yaml
version: '2'
services:
  sveltekit:
    image: aamservices/pm2-sveltekit:latest
    restart: unless-stopped
    volumes:
      - sveltekit_data:/usr/src/app
    networks:
      - internal
    ports:
      - 3000
volumes:
  sveltekit_data:
    driver: local
```


[1]: https://kit.svelte.dev/
