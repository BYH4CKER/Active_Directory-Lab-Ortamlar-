# Ortak değişken (şifre)
$password = ConvertTo-SecureString "Password123" -AsPlainText -Force

# IT_Department kullanıcıları
New-ADUser -Name "Ali Aydin" -GivenName "Ali" -Surname "Aydin" -SamAccountName "aaydin" -UserPrincipalName "aaydin@lab.local" -AccountPassword $password -Enabled $true -Path "OU=IT_Department,DC=lab,DC=local"
New-ADUser -Name "Ayse Demir" -GivenName "Ayse" -Surname "Demir" -SamAccountName "ademir" -UserPrincipalName "ademir@lab.local" -AccountPassword $password -Enabled $true -Path "OU=IT_Department,DC=lab,DC=local"

# HR_Department kullanıcıları
New-ADUser -Name "Mehmet Kara" -GivenName "Mehmet" -Surname "Kara" -SamAccountName "mkara" -UserPrincipalName "mkara@lab.local" -AccountPassword $password -Enabled $true -Path "OU=HR_Department,DC=lab,DC=local"
New-ADUser -Name "Fatma Yilmaz" -GivenName "Fatma" -Surname "Yilmaz" -SamAccountName "fyilmaz" -UserPrincipalName "fyilmaz@lab.local" -AccountPassword $password -Enabled $true -Path "OU=HR_Department,DC=lab,DC=local"

# RedTeam kullanıcıları
New-ADUser -Name "Can Erdem" -GivenName "Can" -Surname "Erdem" -SamAccountName "cerdem" -UserPrincipalName "cerdem@lab.local" -AccountPassword $password -Enabled $true -Path "OU=RedTeam,DC=lab,DC=local"
New-ADUser -Name "Zeynep Guler" -GivenName "Zeynep" -Surname "Guler" -SamAccountName "zguler" -UserPrincipalName "zguler@lab.local" -AccountPassword $password -Enabled $true -Path "OU=RedTeam,DC=lab,DC=local"

# BlueTeam kullanıcıları
New-ADUser -Name "Okan Yilmaz" -GivenName "Okan" -Surname "Yilmaz" -SamAccountName "oyilmaz" -UserPrincipalName "oyilmaz@lab.local" -AccountPassword $password -Enabled $true -Path "OU=BlueTeam,DC=lab,DC=local"
New-ADUser -Name "Elif Kurt" -GivenName "Elif" -Surname "Kurt" -SamAccountName "ekurt" -UserPrincipalName "ekurt@lab.local" -AccountPassword $password -Enabled $true -Path "OU=BlueTeam,DC=lab,DC=local"

# TestOU kullanıcıları
New-ADUser -Name "Ahmet Polat" -GivenName "Ahmet" -Surname "Polat" -SamAccountName "apolat" -UserPrincipalName "apolat@lab.local" -AccountPassword $password -Enabled $true -Path "OU=TestOU,DC=lab,DC=local"
New-ADUser -Name "Sevgi Can" -GivenName "Sevgi" -Surname "Can" -SamAccountName "scan" -UserPrincipalName "scan@lab.local" -AccountPassword $password -Enabled $true -Path "OU=TestOU,DC=lab,DC=local"
