# [Currency Exhange](https://pages.github.com/)

Simple and fast currency conversion application using [fixer.io](http://fixer.io/) API. 

![ruby](https://img.shields.io/badge/Ruby-2.3-red.svg).
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg).
![docker](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg).  



![Currency Exchange](https://github.com/Wypr/Currency_Exchange/blob/master/public/wallpaper.png)



> Made for the purpose of learning more about Ruby on Rails.


## Used Tools
- Docker
- Ruby on Rails
- Capybara
- RSpec
- CoffeeScript
- Boostrap
- Continuous Integration
- Heroku

## System dependencies
Any sytem with docker application.

## Setup
Run
```
docker-compose build
docker-compose run --rm website rails db:create db:migrate
docker-compose up
```
acess: localhost:3000

## How to run the test suite
```
docker-compose run --rm website rspec spec/
```