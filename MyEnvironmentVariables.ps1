###########################################################################
#Autor: Julian Rivera xtecuan@protonmail.com / julian.rivera@equifax.com ##
#Version: 1.0                                                            ##
#Name: MyEnvironmentVariables.ps1                                        ##
###########################################################################
#Fijar JAVA_HOME Reemplazar por el path de su JDK 
$javahome='C:\Work\Java\jdk8u252-b09'
#Fijar MAVEN_HOME Reemplazar por el path de su Apache Maven
$mavenhome='C:\Work\Java\apache-maven-3.6.3'
#Fijar ANT_HOME Reemplazar por el path de su Apache Ant
$anthome='C:\Work\Java\apache-ant-1.10.8'
#Fijar NETBEANS_HOME Reemplazar por el path de su Apache Netbeans
$netbeanshome='C:\Work\Java\netbeans-11.3\netbeans'
#Fijar NPP_HOME Reemplazar por el path de su Notepad++
$npphome='C:\Work\Native\npp.7.8.7.bin.x64'
#Fijar path de Mobaxterm
$moba='C:\Work\Native\MobaXterm_Personal'
#Fijar path de Cygwin
$cygwin='C:\Work\Native\cygwin64'
#Fijar path de Smartgit
$smargit='C:\Work\Java\SmartGit'
#Fijar path de KeepassXC
$keepassxc='C:\Work\Native\KeePassXC-2.5.4-Win64'



[System.Environment]::SetEnvironmentVariable('JAVA_HOME',$javahome,[System.EnvironmentVariableTarget]::User)

#Fijar MAVEN_HOME
[System.Environment]::SetEnvironmentVariable('MAVEN_HOME',$mavenhome,[System.EnvironmentVariableTarget]::User)

[System.Environment]::SetEnvironmentVariable('ANT_HOME',$anthome,[System.EnvironmentVariableTarget]::User)

[System.Environment]::SetEnvironmentVariable('NETBEANS_HOME',$netbeanshome,[System.EnvironmentVariableTarget]::User)

[System.Environment]::SetEnvironmentVariable('NPP_HOME',$npphome,[System.EnvironmentVariableTarget]::User)

[System.Environment]::SetEnvironmentVariable('MOBA_HOME',$moba,[System.EnvironmentVariableTarget]::User)

[System.Environment]::SetEnvironmentVariable('CYGWIN_HOME',$cygwin,[System.EnvironmentVariableTarget]::User)

[System.Environment]::SetEnvironmentVariable('SMARTGIT_HOME',$smargit,[System.EnvironmentVariableTarget]::User)

[System.Environment]::SetEnvironmentVariable('KEEPASSXC_HOME',$keepassxc,[System.EnvironmentVariableTarget]::User)

$path = [System.Environment]::GetEnvironmentVariable('Path','User')

$newPath = "${javahome}\bin;${mavenhome}\bin;${anthome}\bin;"+$path

$newPath = "${netbeanshome}\bin;${npphome};" + $newPath

$newPath = "${moba};${cygwin};" + $newPath

$newPath = "${smargit}\bin;${keepassxc};" + $newPath

[System.Environment]::SetEnvironmentVariable('Path',$newPath,[System.EnvironmentVariableTarget]::User)