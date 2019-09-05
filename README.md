* Run containers: \
```docker-compose up -d```

* Prepare Streamsets container
  * import pipeline template \
```docker exec streamsets sh /tmp/streamsets/prepare/import-pipeline.sh  && docker restart streamsets```
  * open Streamsets UI on ```http://localhost:18630``` and check pipeline appears.\
Credentials: ```admin/admin```

* Prepare Sandbox container
  * open Ambari UI on ```http://localhost:8080``` and check services (HDFS) has been started. \
  Credentials: ```maria_dev/maria_dev```
  * populate HDFS with prepared expedia dataset \
```docker exec sandbox-hdp sh /tmp/sandbox/prepare/prepare-hdfs.sh```
  * verify data appears in HDFS using Ambari UI
 
* Run pipeline
  * open Streamsets UI
  * launch pipeline ```expedia```
  * check output statistics
