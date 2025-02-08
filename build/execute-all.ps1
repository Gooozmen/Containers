#add scoped docker compose file path in the next pwsh object
$containers = [PSCustomObject]@{
    auth = "../src/auth/docker-compose-auth.yml"
    shared = "../src/shared/docker-compose-shared.yml"
}

#set up

    #auth
docker-compose -f $containers.auth up -d

    #shared
docker-compose -f $containers.shared up -d


