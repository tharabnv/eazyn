<?php
session_start(); // ketika mulai session harus ada sintak ini dulu
if (!isset($_SESSION['login'])) {
header('location: index.php');
exit;
}

include 'config/connect.php'; // menghubungkan file koneksi.php

$username = $_POST['username']; //mengambil nilai username dr form
$password = $_POST['password']; //mengambil nilai pswd dr form

$query = "SELECT * FROM siswa WHERE username='$username' AND password='$password'";
//$result = mysqli_query($conn, $query); //menjalankan query pd database
$data = mysqli_fetch_assoc($query);
if(NULL != $data)
    $_SESSION['id] = $data['id']; 

    header('Location: index.php');

} else {
    echo 'Login Gagal!! Username atau password salah';
    echo '<a href = 'login.php'>Kembali</a>;
}
