If you are using an insecure registry or your registry is using unqualified images, you can provide a registries.conf file.
[[registry]]
location = "internal-registry-for-example.net/bar"
insecure = true
For information on the format and more examples, see the GitHub container image documentation. After you create the file, you can use it to create the following ConfigMap:
kubectl create configmap snyk-monitor-registries-conf \
        -n snyk-monitor \
        --from-file=<path_to_registries_conf_file>
