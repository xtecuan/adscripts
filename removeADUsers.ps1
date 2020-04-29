$usertocreate= Import-Csv .\users_delete.txt
$ou='idbpersons'
$domain='maestriarp.local'

foreach ($user in $usertocreate){
	$logon=$user.PCMAIL
	
	Write-Output "Processing Remove of Logon: $logon "

	if (Get-ADUser -F {SamAccountName -eq $logon}){        

        Remove-ADUser $logon -Confirm:$false		

    }else{
	
		Write-Warning "The account $logon does not exist "
	}
	
}                                                