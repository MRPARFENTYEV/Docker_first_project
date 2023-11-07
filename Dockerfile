# По аналогии с практикой из лекции создайте свой docker image с http сервером nginx. Замените страницу приветсвия Nginx на своё (измените текст приветствия на той же странице).
# Подсказки:
# В официальном образе nginx стандартный путь к статичным файлам `/usr/share/nginx/newhtml.html`.

# На проверку присылается GitHub-репозиторий с Dockerfile и статичными файлами для него.

FROM python:3.9
# RUN apk add --no-catche gcc musl-dev linux-headers


WORKDIR src
COPY . /src
#скопируй все из текущего каталога хоста в src (строка 6)
RUN pip3 install --no-catche-dir --upgrade -r requerements.txt
# Установи все зависимости не кешируй, обнови

# env MY_ENV=netology_13_07

# expose 6060
CMD [ "python3","-u","main.py","--host","0.0.0.0","--port","6060" ]
#Запускаем docker image build . --tag=my_first_app

#docker run -d -p 2000:80 -v C:\\Users\\mrpar\\Docker\\newhtml:/usr/share/nginx/html --name=rabotay_gospody_poszhalyista nginx
#2bd44206a154a7b8fc7b3d9dffb556171f1db0f876309a9fd33a6e31590808ce

#$ docker ps
#CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                  NAMES
#47f867826a08   nginx     "/docker-entrypoint.…"   11 seconds ago   Up 10 seconds   0.0.0.0:9000->80/tcp   rabotay_gospody_
#6fa7b9099c86   nginx     "/docker-entrypoint.…"   27 minutes ago   Up 27 minutes   0.0.0.0:8000->80/tcp   my_nginx_05
#1013341cd840   nginx     "/docker-entrypoint.…"   33 minutes ago   Up 33 minutes   0.0.0.0:7000->80/tcp   my_nginx_04
#58906376ac72   nginx     "/docker-entrypoint.…"   2 hours ago      Up 2 hours      0.0.0.0:6000->80/tcp   my_nginx_01
#b9c614a96d6c   nginx     "/docker-entrypoint.…"   3 hours ago      Up 3 hours      0.0.0.0:5000->80/tcp   adoring_wiles
#580aa648b00c   nginx     "/docker-entrypoint.…"   3 hours ago      Up 3 hours      80/tcp                 exciting_archimedes
#e483d49ff41e   nginx     "/docker-entrypoint.…"   3 hours ago      Up 3 hours      80/tcp                 mystifying_mahavira

