DOCKER_REGISTRY="mcat1980"

.mvn/mvn ./mvnw clean package
docker build .  -t $DOCKER_REGISTRY/testj:1.0
docker push $DOCKER_REGISTRY/testj --all-tags