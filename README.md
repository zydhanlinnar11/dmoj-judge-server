# DMOJ Docker [![Build Docker Images](https://github.com/zydhanlinnar11/dmoj-judge-server/actions/workflows/docker.yml/badge.svg)](https://github.com/zydhanlinnar11/dmoj-judge-server/actions/workflows/docker.yml)

This repository contains the Docker files to run a clone of the [DMOJ judge-server](https://github.com/DMOJ/judge-server).

## Usage

First, install [Docker](https://docs.docker.com/engine/install/debian/).

Next, modify `judge-server/judge/judge.env` according setup in DMOJ admin panel.

Last, run these commands.

```bash
git clone https://github.com/zydhanlinnar11/dmoj-judge-server
cd dmoj-judge-server
cd judge-server
docker pull zydhanlinnar11/dmoj-judge-server
docker-compose up -d
```

All done. :)
