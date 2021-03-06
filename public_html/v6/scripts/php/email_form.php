<?php

require_once "recaptcha_server_side.php";

$name= filter_var($_POST["name"], FILTER_SANITIZE_STRING);
$fromemail = filter_var($_POST["fromemail"], FILTER_SANITIZE_EMAIL);
$usercomments = filter_var($_POST["usercomments"], FILTER_SANITIZE_STRING);

if(isset($_POST["spam"]) && $_POST["spam"] == "") {
    // Construct and send email from form information if the spam field is blank.
    $to = "chris@chrismeyers.info";

    $msg = "Name: " . $name . "\n";
    $msg .= "Email: " . $fromemail . "\n";
    $msg .= "Comments:\n" . $usercomments;

    $subject = "An Email from " . $name . ", via chrismeyers.info [LINODE]";
    
    $headers = "From: " . $to;
    if($fromemail && !preg_match("/[\r\n]/", $fromemail)) {
        $headers = "From: " . $fromemail;
    }

    $captchaData = array(
        "secret" => RecaptchaServerSide::getSecretKey(),
        "response" => $_POST["g-recaptcha-response"],
        "remoteip" => $_SERVER["REMOTE_ADDR"]
    );
    $resp = RecaptchaServerSide::verify($captchaData);

    if($resp["success"]) {
        mail($to, $subject, $msg, $headers);
        header("Location: /?message=success#contact");
    }
    else {
        header("Location: /?message=recaptcha#contact");
    }
}
