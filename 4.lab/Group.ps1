# Grupların oluşturulması

New-ADGroup -Name "IT_Admins" -GroupScope Global -GroupCategory Security -Path "OU=IT_Department,DC=lab,DC=local"
New-ADGroup -Name "HR_Staff" -GroupScope Global -GroupCategory Security -Path "OU=HR_Department,DC=lab,DC=local"
New-ADGroup -Name "RedTeam_Group" -GroupScope Global -GroupCategory Security -Path "OU=RedTeam,DC=lab,DC=local"
New-ADGroup -Name "BlueTeam_Group" -GroupScope Global -GroupCategory Security -Path "OU=BlueTeam,DC=lab,DC=local"
