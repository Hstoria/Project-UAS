<?php
session_start();
include('../koneksi/koneksi.php');

if(isset($_SESSION['id_konten']) && isset($_POST['judul']) && isset($_POST['isi'])) {
    $id_konten = $_SESSION['id_konten'];
    $judul = $_POST['judul'];
    $isi = $_POST['isi'];

    if(empty($judul) || empty($isi)) {
        header("Location: editkonten.php?data=$id_konten&notif=editkosong");
        exit; // Berhenti eksekusi skrip
    }

    // Update data konten
    $sql_update = "UPDATE konten SET judul = '$judul', isi = '$isi' WHERE id_konten = '$id_konten'";
    if(mysqli_query($koneksi, $sql_update)) {
        header("Location: konten.php?notif=editberhasil");
        exit;
    }
} else {
        header("Location: editkonten.php");
        exit;
}
?>
