INFINITY_TAG=0.0.51
MODEL_NAME="sentence-transformers/paraphrase-multilingual-mpnet-base-v2"
IMAGE="infinity-paraphrase-multilingual-mpnet-base-v2"

# clone the repo
git clone https://github.com/michaelfeil/infinity
git checkout tags/$INFINITY_TAG

pushd infinity/libs/infinity_emb

# build download stage using docker buildx buildkit.
docker buildx build \
    --target=production-with-download \
    --build-arg MODEL_NAME=$MODEL_NAME \
    --build-arg ENGINE=torch \
    -f Dockerfile -t $IMAGE:$INFINITY_TAG .

docker image tag $IMAGE:$INFINITY_TAG $IMAGE:latest

popd

rm -rf infinity