#!/bin/bash

# Download required libs
echo "Installing stage libs..."
/opt/streamsets-datacollector-3.10.1/bin/streamsets stagelibs -install=streamsets-datacollector-hdp_3_1-lib,streamsets-datacollector-jython_2_7-lib,streamsets-datacollector-apache-kafka_2_0-lib

# Copy user libs
echo "Installing user libs..."
cp /tmp/streamsets/libs/* /opt/streamsets-datacollector-3.10.1/streamsets-libs/streamsets-datacollector-jython_2_7-lib/lib/

# Import pipeline
echo "Import pipeline via REST call..."
curl -s -XPOST -u admin:admin -v -H 'Content-Type: application/json' -H 'X-Requested-By: Import pipeline' -d "@/tmp/streamsets/pipeline/expedia-pipeline.json" http://localhost:18630/rest/v1/pipeline/dummy_id/import?autoGeneratePipelineId=true