$projects = [PSCustomObject]@{
    src = resolve-path ("../src/develop")
}

$settings = [PSCustomObject]@{
    env = resolve-path ("../src/.env")
    compose = "docker-compose.yml"
}

$buildPath = get-Location 

#auth
Set-Location -Path $projects.src
docker-compose --env-file $settings.env up -d

#start
Set-Location $buildPath
