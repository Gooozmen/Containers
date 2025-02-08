$containers = @("auth-db", "redis", "datadog")
$volumes = @("auth_mysql_data", "auth_redis_data", "datadog_logs")

Write-Host "Cleaning up Auth Service infrastructure resources..." -ForegroundColor Cyan

foreach ($container in $containers) {
    Write-Host "Stopping $container..." -ForegroundColor Yellow
    docker stop $container 2>$null

    Write-Host "Removing $container..." -ForegroundColor Yellow
    docker rm $container -f 2>$null
}

foreach ($volume in $volumes) {
    Write-Host "Removing volume $volume..." -ForegroundColor Yellow
    docker volume rm $volume -f 2>$null
}

Write-Host "Cleaning up unused networks..." -ForegroundColor Yellow
docker network prune -f

Write-Host "Cleanup completed! Datadog, Redis, and MySQL resources have been removed." -ForegroundColor Green
