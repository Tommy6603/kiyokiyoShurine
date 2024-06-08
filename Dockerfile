# pythonのバージョンは任意
FROM python:3.12.2

WORKDIR /usr/src/app
ENV FLASK_APP=app

COPY ../requirements.txt ./

RUN pip install --upgrade pip
RUN pip install -r requirements.txt