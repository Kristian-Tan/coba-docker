<?php

session_start();
$now = new DateTime("now");
echo "hello world! now is: ".$now->format("r")." and your session id is ".session_id();

phpinfo();
