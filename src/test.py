from pyspark.sql import SparkSession

# Créer une session Spark
spark = SparkSession.builder \
    .appName("HelloPySpark") \
    .getOrCreate()

# Créer un dataframe avec une seule colonne contenant "Hello, PySpark!"
df = spark.createDataFrame(["Hello, PySpark!"], "string").toDF("message")

# Afficher le contenu du dataframe
df.show()

# Arrêter la session Spark
spark.stop()