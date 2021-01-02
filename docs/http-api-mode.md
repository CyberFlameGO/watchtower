Watchtower provides an HTTP API mode that enables an HTTP endpoint that can be requested to trigger container updating. The current available endpoint list is:

- `/v1/update` - triggers an update for all of the containers monitored by this Watchtower instance.

---

To enable this mode, use the flag `--http-api`. For example, in a Docker Compose config file:

```yaml
version: '3'

services:
  app-monitored-by-watchtower:
    image: myapps/monitored-by-watchtower
    labels:
      - "com.centurylinklabs.watchtower.enable=true"

  watchtower:
    image: containrrr/watchtower
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    command: --debug --http-api
    environment:
      - WATCHTOWER_HTTP_API_TOKEN=mytoken
    labels:
      - "com.centurylinklabs.watchtower.enable=false"
    ports:
      - 8080:8080
```

Notice that there is an environment variable named WATCHTOWER_HTTP_API_TOKEN. To prevent external services from accidentally triggering image updates, all of the requests have to contain a "Token" field, valued as the token defined in WATCHTOWER_HTTP_API_TOKEN, in their headers. In this case, there is a port bind to the host machine, allowing to request localhost:8080 to reach Watchtower. The following `curl` command would trigger an image update:

```bash
curl -H "Token: mytoken" localhost:8080/v1/update
```