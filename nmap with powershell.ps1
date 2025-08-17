# Script by Basilio Quispe - https://pe.linkedin.com/in/basilioquispe
$targetHost = "mytargetdomain.com"
$puertos = Get-Content "puertos.txt" | Where-Object { $_ -match '^\d+$' }

foreach ($puerto in $puertos) {
    Start-Job -ScriptBlock {
        param($puerto, $targetHost)
        try {
            $tcp = New-Object System.Net.Sockets.TcpClient
            $tcp.Connect($targetHost, [int]$puerto)
            if ($tcp.Connected) {
                Write-Host "Puerto $puerto abierto" -ForegroundColor Green
                $tcp.Close()
            }
        } catch {
            Write-Host "Puerto $puerto cerrado o inaccesible" -ForegroundColor Red
        }
    } -ArgumentList $puerto, $targetHost
}

# Esperar a que todos los jobs terminen
Get-Job | Wait-Job
Get-Job | Receive-Job
Get-Job | Remove-Job