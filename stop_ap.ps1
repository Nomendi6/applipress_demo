# set environment variables

$env:APPLIPRESS_USER_UID = ""
$env:APPLIPRESS_USER_GID = ""

# Check if "docker compose" is supported
try {
    docker compose version > $null 2>&1
    Write-Host "Stopping applipress."
    docker compose down
}
catch {
    # Check if "docker-compose" is available
    try {
        docker-compose version > $null 2>&1
        Write-Host "Stopping applipress"
        docker-compose down
    }
    catch {
        Write-Host "Neither 'docker compose' nor 'docker-compose' are available. Please install one of them."
        exit 1
    }
}
