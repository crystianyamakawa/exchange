**Conversor de Moedas**
===================

![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.1.0-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)

## Sobre o projeto

Conversão Online de Moedas.

## [Clique e veja online](https://crystian-app1-exchange.herokuapp.com/)

![Conversor Moedas](https://raw.githubusercontent.com/crystianyamakawa/exchange/master/public/print_scr.png)

# Stack
```
  * Application
```

# Dependencies
```
  * Fixer.io to consult currency rates
```

# Getting Started
```
  * docker-compose build
  * docker-compose run --rm website rake db:create db:migrate
  * docker-compose up
```

# Test
```
  * docker-compose run --rm website rspec
```
