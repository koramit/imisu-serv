<?php

$mysqli = new mysqli("localhost", "root", "imisu@serv");

/* check connection */
if (mysqli_connect_errno()) {
    printf("<h3 style='text-align: center;'>MariaDB Connect failed: %s</h3>\n", mysqli_connect_error());
    exit();
}

/* print server version */
printf("<h3 style='text-align: center;'>MariaDB version: %s</h3>\n", $mysqli->server_info);

/* close connection */
$mysqli->close();

phpinfo();
