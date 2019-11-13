A Docker wrapper for [wait-for](https://github.com/eficode/wait-for), can be used as a [Kubernetes initContainer](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)
```sh
docker run prutya/wait-for:latest wait-for example.com:80 --timeout=5
```
