FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN 2 create-db
RUN 2 populate-db
RUN 2 add-user -u admin -p admin
EXPOSE 5000
CMD ["2", "run"]
