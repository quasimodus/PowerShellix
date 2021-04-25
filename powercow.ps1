$net = 124 # --> сетка 
$min = 170 # --> начальное значение диапазона
$max = 186 # --> конечное значение диапазона

for ($t = $min; $t -lt $max; $t++) {
    if (Test-Connection 192.168.$net.$t -Count 1 -ErrorAction SilentlyContinue) {
        Write-Host "192.168.$net.$t"
        $username = Get-WMIObject -Class Win32_ComputerSystem -Computer "192.168.$net.$t" | Select-Object Username
        $name = Get-WMIObject -Class Win32_ComputerSystem -Computer "192.168.$net.$t" | Select-Object Name
        Write-Host "$username"
        Write-Host "$name"
        Write-Host "-----------------------------"
    }
    else {
        Write-Host "192.168.$net.$t  --> Not found"
	    	
    }
}