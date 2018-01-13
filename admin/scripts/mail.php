<?php

function redirect_to($location) {
if($location != NULL) {
header("Location: {$location}");
exit;
}
}

function submitMessage($direct, $name, $email, $phone, $message) {
$to = "clarocque1@live.ca";
$subj = "Message From Customer submitted via site.com";
$extra = "Reply-To: ".$email."\r\n";
$msg = "Name: ".$name."\n\nEmail address: ".$email."\n\Phone: ".$phone."\n\nComments: ".$message;
$go = mail($to,$subj,$msg,$extra);
$direct = $direct."?name={$name}";
redirect_to($direct);
}

?>
