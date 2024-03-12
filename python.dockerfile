# Utiliser l'image Spark de Bitnami en tant qu'image de base
FROM bitnami/spark:latest

# Copier le script Python dans le conteneur
COPY ./src/test.py /opt/bitnami/spark/hello_pyspark.py

# Exécuter le script Python lorsque le conteneur démarre
CMD ["spark-submit", "/opt/bitnami/spark/hello_pyspark.py"]