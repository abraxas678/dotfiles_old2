#in powershell: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
#Install-Module -Name BurntToast
# https://github.com/Windos/BurntToast
##  New-BurntToastNotification -Text 'WAKE UP!' -Sound 'Alarm2' -SnoozeAndDismiss

# ps1 script  


# param ($domain="p.domain.com", $token="AAAAAAAA")
# wscat -c "wss://$domain/stream?token=$token" | %{ convertfrom-json $_ } | where-object {$_.message.length -gt 0} |
# %{ 
#    $appid = $_.appid
#    $icon = iwr https://$domain/application?token=$token |
#        %{ (convertfrom-json $_.content) } | where-object {$_.id -eq $appid} | select -expandproperty image
#    new-burnttoastnotification -applogo https://$domain/$icon -Text $_.title, $_.message
#  } 
