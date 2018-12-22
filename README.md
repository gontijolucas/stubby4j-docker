# Stubby4j Docker

Version: [6.0.1](https://search.maven.org/search?q=g:io.github.azagniotov%20AND%20a:stubby4j)


Based on: [Stubby4J 3.3.0](https://hub.docker.com/r/joncanning/stubby4j)

Requires stubby.yml to be present

Set STUBBY_PORT in environment

# Docker Compose example

```yaml
  stubby4j:
        image: gontijo/stubby4j
        ports:
          - "8882:8882"
        environment:
          STUBBY_PORT: 8882
        volumes:
          - ./stubby.yml:/usr/local/stubby.yml:Z
```
