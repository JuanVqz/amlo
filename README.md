# NOTICIAS DE AMLO

Se recuperan noticias de diversos sitios de comunicación del presidente de México.

## requisitos
* ruby 2.6.1
* ruby on rails 5.2.3
* redis
* postgresql

## instalación
```sh
git clone https://github.com/JuanVqz/amlo.git
cd amlo
bundle install

rails db:create
rails db:migrate

sidekiq
rails serve
```

## ejecutar pruebas
```
rails db:test:prepare

rake
```
