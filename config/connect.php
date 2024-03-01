<?php 
// connect utk mengkoneksi pada php
$username = "root";
$password = "";
$host = "localhost";

$is_connect = mysqli_connect($host, $username, $password);

if ($is_connect){
    mysqli_select_db($is_connect, "izin_db");
    //use izin_db di mysqli
}else{
    echo "yahh";
} 