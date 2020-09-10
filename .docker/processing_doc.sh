#!/usr/bin/env bash
export $(grep -v '^#' .env | xargs)

#xhost +

docker run -d \
  --name qgis-testing-environment \
  -v /home/etienne/dev/python/vvv/veloroutes_voies_vertes:/tests_directory/veloroutes_voies_vertes \
  -v /home/etienne/dev/python/vvv/docs/processing:/processing \
  -e DISPLAY=:99 \
  qgis/qgis:release-3_10

sleep 10

echo "Setting up"
docker exec -it qgis-testing-environment sh -c "qgis_setup.sh ${PLUGIN_NAME}"
docker exec -it qgis-testing-environment sh \
  -c "qgis_testrunner.sh ${PLUGIN_NAME}.qgis_plugin_tools.infrastructure.doc_processing.generate_processing_doc"

docker kill qgis-testing-environment
docker rm qgis-testing-environment
