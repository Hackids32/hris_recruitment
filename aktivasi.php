<?php
date_default_timezone_set("Asia/Jakarta");
$db_host = "localhost";
$db_user = "root";
$db_pass = "myroot";
$db_name = "erecruit_ntc";

$koneksi = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
//mysqli_select_db($db_name,$koneksi);
global $koneksi;

if (mysqli_connect_errno()) {
    echo 'Gagal melakukan koneksi ke Database : ' . mysqli_connect_error();
}

$id = $_GET['token'];
$token = substr($id, -10);
$year = substr($id, 6, -14);
$month = substr($id, 10, -12);
$date = substr($id, 12, -10);
$tgl = $year . '-' . $month . '-' . $date;
$today = date('Y-m-d');

//cek date
if ($today == $tgl) {
    $query = $koneksi->query("UPDATE users SET blokir = 'Y' WHERE username = '$token'");
    if ($query) {
        echo "<script>alert('Akun anda sudah terverifikasi, silahkan login menggunakan akun anda');</script>";
        echo "<script>window.location='https://hris.ntc.co.id/erecruit/login';</script>";
    } else {
        echo "<script>alert('Maaf, silahkan register ulang');</script>";
        echo "<script>window.location='https://hris.ntc.co.id/erecruit/register';</script>";
    }
}
