FROM python:3.10-slim-bullseye

RUN apt-get update && apt-get upgrade -y

WORKDIR /app
COPY . /app

RUN pip install Flask

CMD ["python", "web.py"]
