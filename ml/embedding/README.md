```Bash
docker save \
    infinity-paraphrase-multilingual-mpnet-base-v2 > infinity-paraphrase-multilingual-mpnet-base-v2.tar
 minikube -p terraform-provider-minikube-acc-docker \
    image load infinity-paraphrase-multilingual-mpnet-base-v2.tar
 ```