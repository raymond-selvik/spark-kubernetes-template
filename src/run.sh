/opt/spark/bin/spark-submit \
    --master k8s://https://kubernetes.docker.internal:6443/ \
    --deploy-mode client \
    --conf spark.executor.instances=1 \
    --conf spark.kubernetes.container.image=hello-spark:latest \
    --conf spark.kubernetes.executor.deleteOnTermination=true \
    --conf spark.driver.host=pyspark-svc.default.svc.cluster.local\
    --conf spark.driver.port=7077\
    --conf spark.driver.bindAddress=0.0.0.0 \
    --conf spark.kubernetes.driver.pod.name=pyspark-set-0 \
    app.py
