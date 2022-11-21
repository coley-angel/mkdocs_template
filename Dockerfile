FROM python:3.8

WORKDIR /usr/src/app


COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 8000
CMD [ "mkdocs", "serve", "-a", "0.0.0.0:8000"]
