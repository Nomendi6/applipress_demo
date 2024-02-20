# set environment variables

$env:APPLIPRESS_USER_UID = ""
$env:APPLIPRESS_USER_GID = ""

# Check if "docker compose" is supported
try {
    docker compose version > $null 2>&1
    Write-Host "Using 'docker compose' to start applipress."
    docker compose up -d
}
catch {
    # Check if "docker-compose" is available
    try {
        docker-compose version > $null 2>&1
        Write-Host "Using 'docker-compose' to start applipress."
        docker-compose up -d
    }
    catch {
        Write-Host "Neither 'docker compose' nor 'docker-compose' are available. Please install one of them."
        exit 1
    }
}
