# PHP-PFM 8.1, Nginx and MySQL in Docker

## Components Versions
- [Nginx](https://hub.docker.com/_/nginx)
- [PHP:8.1-FPM](https://hub.docker.com/_/php/tags?page=1&name=fpm)
- [MySQL 8.0](https://hub.docker.com/_/mysql)

This project use the following ports :
| Service     | Port |
|------------|------|
|Nginx|80|
|Mysql|3306|

## Installation
1. Clone the project
```sh
git clone https://github.com/nanoninja/docker-nginx-php-mysql.git
```

2. Go to the project directory:
```sh
cd ...
```

3. Build `docker-compose.yml`:
```sh
docker-compose build
```

4. Run `docker-compose.yml`:
```sh
docker-compose up
```
This creates two new folders:
- `src`: the location of your php application files
- `./docker/dbdata`: used to store and restore database dumps and initial databse for import

5. Stop and clear services:
```sh
docker-compose down -v
```
## Error Permission
If `src` folder can not create file or folder in this, please do the following:
- Change mode
```sh
sudo chmod 777 src
```
- Change owner
```sh
sudo chown $USER:$USER src
```
