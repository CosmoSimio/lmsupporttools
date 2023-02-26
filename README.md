# lmsupporttools

This docker compose yaml will deploy two containers ---

1. `dns-web`
  - This container serves as a DNS server to be able to resolve the lmsupporttools.com domain for our LM Tools portal.
  - The HTML pages will be pulled from this repo and will be hosted in the `lmsupporttools` container.
2. `lmsupporttools`
  - This container will server as the web server that will be hosting the HTML pages, which are pulled from this repo
 
To deploy the docker compose yaml, run the following command ---
 
`docker-compose -f lmsupporttools.yaml up -d`

