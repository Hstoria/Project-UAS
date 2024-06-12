<?php 
session_start();
include('../koneksi/koneksi.php');

if (isset($_SESSION['id_kategori'])) {
    $id_kategori = $_SESSION['id_kategori'];
    $judul = $_POST['judul']; // Ensure this matches the form input name
 
    if (empty($judul)) {
        header("Location:editkategori.php?data=" . $id_kategori . "&notif=editkosong");
    } else {
        $sql = "UPDATE `kategori` SET `judul`='$judul' WHERE `id_kategori`='$id_kategori'";
        mysqli_query($koneksi, $sql);
        unset($_SESSION['id_kategori']);
        header("Location:kategori.php?notif=editberhasil");
    }
}
?>
