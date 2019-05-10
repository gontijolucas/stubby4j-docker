# Stubby4j Docker

Version: [3.3.0](https://search.maven.org/search?q=g:io.github.azagniotov%20AND%20a:stubby4j)

Based on: [Stubby4J 3.3.0](https://hub.docker.com/r/joncanning/stubby4j)

Set STUBBY_PORT in environment

### This version works with multiple files.

Map you **stub directory** like the follow example:

# Docker Compose example

```yaml
  stubby4j:
        image: gontijo/stubby4j
        ports:
          - "8882:8882"
        environment:
          STUBBY_PORT: 8882
        volumes:
          - ./someproject/stubs/:/usr/local/stub
```
