Get-WMIObject win32_operatingsystem -computerName pcname00000071 | select csname, @{LABEL='LastBootUpTime'; EXPRESSION={$_.ConverttoDateTime($_.lastbootuptime)}}
