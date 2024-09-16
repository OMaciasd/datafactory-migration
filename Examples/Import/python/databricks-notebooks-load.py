from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("EjemploPySpark").getOrCreate()

df = spark.read.csv("/mnt/datalake/mi_archivo.csv", header=True, inferSchema=True)

df.show()
