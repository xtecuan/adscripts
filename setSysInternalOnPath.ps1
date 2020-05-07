[System.Environment]::SetEnvironmentVariable('SysinternalsSuite','C:\SysinternalsSuite',[System.EnvironmentVariableTarget]::Machine)
$path =[System.Environment]::GetEnvironmentVariable('Path','Machine')
$newPath=$path+';%SysinternalsSuite%'
[System.Environment]::SetEnvironmentVariable('Path',$newPath,'Machine')
