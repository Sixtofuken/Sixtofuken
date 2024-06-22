<?php
function ExitAlert($msg){
    exit("gg.alert('".$msg."')");
}

$JDecode = json_decode(file_get_contents('php://input'),true);
$FileName = "login.data";
$ScriptName = "[Encode]Satan Version5.lua";
$username= $JDecode["Username"];
$password=  $JDecode["Password"];
$content =json_decode(file_get_contents($FileName),true);
if ($content == null){
$content =[];
}
	if($content[$username]){
exit(file_get_contents($ScriptName));
	}
	
	else{
		ExitAlert("⚠️UserName Or Password Is Incorrect⚠️\n\n🔭Subscribe First By \n@TTTZBY");
		}
?>