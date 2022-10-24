# SSM Overview Docs Site

Smart Spectral Matching overview documentation website

Hosted at [smart-spectral-matching.github.io][ssm-site]

# Development (docker)

The development container volume mounts the source code into the container and has live reloading in the browser.

To build a container image for development, run:
```
make build-development
```

To run the container, run:
```
make run-development
```

To run the container interactively, run:
```
make run-development-iteractively
```

Site is now running on: http://localhost:4000

# Production-ready (docker)

This does a build of a production ready container using Nginx as web server

```
make production
```

Site is now running on : http://localhost:8080


[ssm-site]: (https://smart-spectral-matching.github.io]
