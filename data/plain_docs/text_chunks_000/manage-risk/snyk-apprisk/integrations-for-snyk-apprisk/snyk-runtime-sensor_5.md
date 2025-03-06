Check the name that was given to the sensor

helm repo list

2.  Update the repository (with the name from (1)):

helm repo update <<SENSOR_REPO_NAME>>

3.  Upgrade installation:
helm upgrade --install <<SENSOR_REPO_NAME>> \
--set secretName=<<YOUR_SECRET_NAME>> \
--set clusterName=<<CLUSTER_NAME>> \
--set snykGroupId=<<YOUR_GROUP_ID>> \
-n snyk-runtime-sensor \
runtime-sensor/runtime-sensor
