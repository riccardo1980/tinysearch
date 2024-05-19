
# Postgres
Using custom yaml, see `yaml/sql`

## Resource creation
```Bash
kubectl apply -f yaml/sql/
kubectl apply -k yaml/sql/kustomize
```


# Elasticsearch
Using ECK: see `yaml/elastic/2.12.1`

Clusters:
- quickstart: `yaml/elastic/single-node.yaml`

## Resource creation
```Bash
kubectl apply -f yaml/elastic/2.12.1
kubectl apply -f yaml/elastic/single-node.yaml
```

## Connection test
### Open a port forward
```Bash
kubectl port-forward service/quickstart-es-http 9200
```

### Check connection
#### Curl
```Bash
curl -k \
    -u "elastic:$(kubectl get secret quickstart-es-elastic-user --template='{{.data.elastic | base64decode}}')" \
    "https://localhost:9200"
```
#### Peek
```Bash
peek \
    -e use_keyring=False \
    --hosts https://localhost:9200 \
    --user elastic \
    --password $(kubectl get secret quickstart-es-elastic-user --template='{{.data.elastic | base64decode}}')
```

# Kibana
- open a port forward to kibana pod, port 5601
- browse to [https://localhost:5601](https://localhost:5601)
- use:
    - Username: elastic
    - password: from `kubectl get secret quickstart-es-elastic-user --template='{{.data.elastic | base64decode}}'`