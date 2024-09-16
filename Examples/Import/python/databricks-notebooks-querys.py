from pyspark.sql import SparkSession

df.createOrReplaceTempView("mi_vista_temporal")

resultado = spark.sql("""
SELECT columna1, COUNT(*)
FROM mi_vista_temporal
GROUP BY columna1
""")

resultado.show()
