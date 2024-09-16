from pyspark.sql import SparkSession

df.printSchema()

df_transformed = df.select(
    df["columna1"].alias("nueva_columna1"),
    df["columna2"]
)

df_filtered = df_transformed.filter(df_transformed["columna3"] > 10)

df_filtered.show()
