#### Prueba técnica entravision

- Iniciar los containers:
  - ```docker-compose up --build```

- En otra terminal, descargar dependencias y ejecutar las migraciones
  - ```docker-compose exec -T api composer install```
  - ```docker-compose exec -T api php artisan migrate```

- Puertos a utilizar que no deben estar ocupados o con los servicios locales apagados:
  - Mysql: 3306
  - Nginx - [Tracking Api: 8001](http://localhost:8001/api/trackingUrl)
  - Node - [Tracker App: 3000](http://localhost:3000/)

- [Collection de Postman](tracking-api.postman_collection.json) para el consumo de tracking-api.

- Endpoints:

|Path|Verb|Body Params
|----|----|------------
|http://localhost:8001/api/trackingPixel|POST|
|http://localhost:8001/api/trackingPixel/:id|PUT|hash: string / opens: number
|http://localhost:8001/api/trackingPixel/:id|DELETE|
|http://localhost:8001/api/trackingUrl|POST|url: string
|http://localhost:8001/api/trackingUrl/:id|PUT|url: string / hash: string / opens: number
|http://localhost:8001/api/trackingUrl/:id|DELETE|

- Los repositorios por separado son:
  - [Tracking API (Laravel)](https://github.com/inghggw/tracking-api)
  - [Tracker APP (Express)](https://github.com/inghggw/tracker-app)

Autor: Henry Giovanny Gonzalez Waltero © 2021
