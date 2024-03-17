# University With Me Deployment

[![License](https://img.shields.io/:license-GPL-blue.svg)](https://github.com/Misha999777/uwithme-deployment/blob/master/LICENSE)

## Description

This repository contains Docker Compose file and appropriate configs to deploy University With Me project.

## Requirements

To deploy the application you will need:

- [Docker](https://www.docker.com/)

## Deploying locally

You can deploy this application locally by:

1. Pointing uwm.int, tests.uwm.int, bot.uwm.int, auth.uwm.int, service1.uwm.int, and service2.uwm.int to 127.0.0.1
2. Deploying with

```shell
docker compose up -d
```

## Deploying in production

1. Carefully read, understand, and replace values in docker-compose.yml with the appropriate ones
2. Deploy with

```shell
docker compose up -d
```

## Copyright

Released under the GNU General Public License v2.0.
See the [LICENSE](https://github.com/Misha999777/uwithme-deployment/blob/master/LICENSE) file.