FROM itemadacr.azurecr.io/maddata/spark-py:3.0.2

WORKDIR /app

COPY src .

CMD ["bash", "run.sh"]

