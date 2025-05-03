$projects = [PSCustomObject]@{
    develop = resolve-path ("../src/containers/develop")
}

$environments = [PSCustomObject]@{
    develop = resolve-path ("../src/containers/develop/.env")
}

$buildPath = get-Location 

#auth
Set-Location -Path $projects.develop
docker-compose --env-file $environments.develop up -d

#start
Set-Location $buildPath
