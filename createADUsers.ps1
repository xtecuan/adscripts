$usertocreate= Import-Csv .\users.txt
$ou='idbpersons'
$domain='maestriarp.local'

foreach ($user in $usertocreate){
	$names=$user.FIRSTNAME
	$lastnames=$user.LASTNAME
	$logon=$user.PCMAIL
	$passwd=$user.PASSWD

	Write-Output "Processing: Names: $names LastNames: $lastnames Logon: $logon Password: $passwd"

    $ADUserParameters = @{
    Name                  = "{0} {1}" -f $user.FIRSTNAME, $user.LASTNAME
    DisplayName           = "{0} {1}" -f $user.FIRSTNAME, $user.LASTNAME
    GivenName             = $user.FIRSTNAME
    Surname               = $user.LASTNAME
    Path                  = "OU={0},DC=maestriarp,DC=local" -f $ou
    SamAccountName        = $user.PCMAIL
    UserPrincipalName     = "{0}@{1}" -f $user.PCMAIL, $domain
    Description           = "{0} {1}" -f $user.FIRSTNAME, $user.LASTNAME
    AccountPassword       = ConvertTo-SecureString $user.PASSWD -AsPlainText -Force
    Enabled               = $true
    ChangePasswordAtLogon = $true
    PasswordNeverExpires  = $false
    Server                = $domain
    }


	if (Get-ADUser -F {SamAccountName -eq $logon}){        
		Write-Warning "The account $logon already exists in AD"
    }else{
	
		New-ADUser @ADUserParameters
	}
	
}                                                