
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
```Bash
peek \
    -e use_keyring=False \
    --hosts https://localhost:9200 \
    --user elastic \
    --password $(kubectl get secret quickstart-es-elastic-user --template='{{.data.elastic | base64decode}}')
```