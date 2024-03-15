<?php

include 'config/connect.php'; // menghubungkan file koneksi.php

$username = $_POST['username']; //mengambil nilai username dr form
$password = $_POST['password']; //mengambil nilai pswd dr form

$query = "SELECT * FROM siswa WHERE username='$username' AND password='$password'";
$result = mysqli_query($conn, $query); //menjalankan query pd database

if (mysqli_num_rows($result) > 0) {
    session_start(); //memulai sesi
    header('Location: index.php'); //mengalihkan ke halaman
} else {
    echo 'Login Gagal!! Username atau password salah';
}
