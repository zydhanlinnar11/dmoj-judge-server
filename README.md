# DMOJ Docker [![Build Docker Images](https://github.com/zydhanlinnar11/dmoj-judge-server/actions/workflows/docker.yml/badge.svg)](https://github.com/zydhanlinnar11/dmoj-judge-server/actions/workflows/docker.yml)

This repository contains the Docker files to run a clone of the [DMOJ judge-server](https://github.com/DMOJ/judge-server).

## Usage

First, install [Docker](https://docs.docker.com/engine/install/debian/).

Next, run these commands.

```bash
cd judge-server
mkdir problems
docker-compose up -d
```

All done. :)
