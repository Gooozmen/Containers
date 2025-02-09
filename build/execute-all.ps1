$projects = [PSCustomObject]@{
    auth = resolve-path ("../src/auth/")
    shared = resolve-path ("../src/shared/")
}

$settings = [PSCustomObject]@{
    env = resolve-path ("../src/.env")
    compose = "docker-compose.yml"
}
$buildPath = get-Location 
#auth
Set-Location -Path $projects.auth
docker-compose --env-file $settings.env up -d

#shared
Set-Location -Path $projects.shared
docker-compose --env-file $settings.env up -d

#start
Set-Location $buildPath
