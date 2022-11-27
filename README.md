# fileserver

Deploy a file server on OpenShift.
Files are served using Nginx.
Files can be uploaded using Rsync.

# Requirements

An OpenShift cluster with a default storage class configured.

# Deploy

```bash
kubectl create -k .
```
