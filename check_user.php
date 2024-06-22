<?php
// MENANGKAP DATA YANG DI-INPUT
$playid = $_POST['playid'];
$nick = $_POST['nick'];

// MENGALIHKAN KE HALAMAN UTAMA JIKA DATA BELUM DI-INPUT
if($playid == "" && $nick == ""){
header("Location: index.php");
}

// MENGALIHKAN KE HALAMAN TOPUP
echo "
<form id='arpantek' method='POST' action='home.php'>
<input type='hidden' name='playid' value='$playid'>
<input type='hidden' name='nick' value='$nick'>
</form>
<script type='text/javascript'>document.getElementById('arpantek').submit();</script>
";
?>