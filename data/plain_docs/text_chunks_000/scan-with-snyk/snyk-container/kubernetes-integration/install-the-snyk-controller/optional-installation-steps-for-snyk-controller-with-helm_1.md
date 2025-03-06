If your registry is using self-signed or other additional certificates, you must make them available to Snyk monitor. To do this, first place the .crt, .cert, and .key files in a directory and create a ConfigMap:
kubectl create configmap snyk-monitor-certs \
        -n snyk-monitor --from-file=<path_to_certs_folder>
