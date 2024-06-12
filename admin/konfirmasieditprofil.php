<?php 
session_start();
include('../koneksi/koneksi.php');
if(isset($_SESSION['id_admin'])){
    $id_admin = $_SESSION['id_admin'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];

    if(empty($nama)){
        header("Location:editprofil.php?notif=editkosong&jenis=nama");
    } else if(empty($email)){
        header("Location:editprofil.php?notif=editkosong&jenis=email");
    } else {
        $sql = "UPDATE `admin` SET `nama`='$nama', `email`='$email' WHERE `id_admin`='$id_admin'";
        mysqli_query($koneksi, $sql);
        header("Location:profil.php?notif=editberhasil");
    }
} else {
    
    echo "Admin ID is not set in the session. Please log in again.";
    
}
?>
