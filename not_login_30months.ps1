get-aduser -filter {enabled -eq "True"} -properties LastlogonDate | ? {$_.lastlogondate -le (get-date).adddays(-90)} | ft Name
