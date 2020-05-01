$usertocreate= Import-Csv .\consultores.txt
$ou='idbpersons'
$domain='EmpresaACME_RIVERA.local'
$expiration="08/30/2020"

foreach ($user in $usertocreate){
	$logon=$user.PCMAIL
	
	Write-Output "Processing Expiration date of Logon: $logon "

	if (Get-ADUser -F {SamAccountName -eq $logon}){        

        	Set-ADAccountExpiration $logon -DateTime $expiration -Confirm:$false

    }else{
	
		Write-Warning "The account $logon does not exist "
	}
	
}                                                