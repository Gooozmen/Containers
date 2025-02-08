$auth = [PSCustomObject]@{
    compose = "docker-compose-auth.yml"
    base = resolve-path ("../src/auth/")
}

$shared = [PSCustomObject]@{
    compose = "docker-compose-shared.yml"
    base = resolve-path ("../src/shared/")
}

$settings = [PSCustomObject]@{
    env = resolve-path ("../src/.env")
    buildPath = get-Location 
}


#auth
Set-Location -Path $auth.base
docker-compose --env-file $settings.env -f $auth.compose up -d

#shared
Set-Location -Path $shared.base
docker-compose --env-file $settings.env -f $shared.compose up -d

#start
Set-Location -Path $settings.build