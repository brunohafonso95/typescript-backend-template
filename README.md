[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)

# Template

Projeto para ser utilizado como template para demais projetos backend com typescript

o projeto contém

- logger com pino
- semantic release para deploy
- eslint e prettier
- husky para criação do git hooks
- commitlint para validação do padrão de commits
- docker e docker-compose inicial do projeto

## Rodando projeto com Docker

1. buildando a imagem

```bash
docker build -t ferracine-bot:latest .
```

2. rodando a imagem

```bash
docker run -p 3000:3000 -e PORT=3000 ferracine-bot
```

3. rodando com docker-compose

```bash
docker-compose up -d
```
