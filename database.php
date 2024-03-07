<?php

$con = new mysqli('localhost', 'root', '', 'tracking_progress');

if ($con) {
    echo "Connection successful";
} else {
    die(mysqli_error($con));
}

?>
