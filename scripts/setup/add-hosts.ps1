# Requires Admin privileges
$hostsPath = "$env:SystemRoot\System32\drivers\etc\hosts"

# Entradas que quieres añadir
$entries = @(
    "127.0.0.1   space.localhost",
    "127.0.0.1   api.localhost",
    "127.0.0.1   app.localhost"
)

foreach ($entry in $entries) {
    # Solo añadir si no existe ya
    if (-not (Select-String -Path $hostsPath -Pattern $entry -Quiet)) {
        Add-Content -Path $hostsPath -Value $entry
        Write-Host "Añadido: $entry"
    } else {
        Write-Host "Ya existe: $entry"
    }
}

Write-Host "`nHosts file updated successfully!"
