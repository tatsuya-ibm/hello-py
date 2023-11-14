FROM python:3.10-slim-bullseye

RUN apt-get update && apt-get upgrade -y

WORKDIR /app
COPY . /app

RUN pip install Flask

EXPOSE 8080
CMD ["python", "web.py"]
