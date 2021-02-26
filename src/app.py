from pyspark.sql import SparkSession
from pyspark.sql.types import *

spark = SparkSession \
    .builder \
    .appName("Hello Spark") \
    .getOrCreate()

print(spark.version)

df = spark.read.csv("data.csv")

df.printSchema()

df.show()

spark.stop()
