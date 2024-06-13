# pythonのバージョンは任意
FROM python:3

RUN pip install Flask
RUN pip install sqlalchemy

RUN pip install gunicorn

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

WORKDIR /Users/forwork/code/kiyokiyo-shrine

# 現在のディレクトリの内容をコンテナ内の/appにコピー
COPY . .
