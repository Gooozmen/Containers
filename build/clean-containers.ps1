# Stop and remove containers
$services = "postgres", 
            "elasticsearch", 
            "kibana"
$volumes = "postgres_data", 
            "elastic_data"
$images = "postgres:16", 
          "docker.elastic.co/elasticsearch/elasticsearch:8.11.1", 
          "docker.elastic.co/kibana/kibana:8.11.1"


foreach ($service in $services) {
    docker rm -f $service
}
foreach ($volume in $volumes) {
    docker volume rm $volume
}
foreach ($image in $images) {
    docker rmi $image
}
docker network rm dev-net
