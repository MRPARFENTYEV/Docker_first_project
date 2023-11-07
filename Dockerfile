# По аналогии с практикой из лекции создайте свой docker image с http сервером nginx. Замените страницу приветсвия Nginx на своё (измените текст приветствия на той же странице).
# Подсказки:
# В официальном образе nginx стандартный путь к статичным файлам `/usr/share/nginx/html`.

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