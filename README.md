#### Prueba técnica entravision

- Iniciar los containers:
  - ```docker-compose up --build```

- En otra terminal, descargar dependencias y ejecutar las migraciones
  - ```docker-compose exec -T api composer install```
  - ```docker-compose exec -T api php artisan migrate```

- Puertos a utilizar que no deben estar ocupados o con los servicios locales apagados:
  - Mysql: 3306
  - Nginx: 8001
  - App Node: 3000

- [Collection de Postman](tracking-api.postman_collection.json) para el consumo de tracking-api.

- Los repositorios por separado son:
  - [Tracking API (Laravel)](https://github.com/inghggw/tracking-api)
  - [Tracker APP (Express)](https://github.com/inghggw/tracker-app)

Autor: Henry Giovanny Gonzalez Waltero © 2021
