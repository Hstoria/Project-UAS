<?php
session_start();
include('../koneksi/koneksi.php');

if (isset($_SESSION['id_payment'])) {
    $id_payment = $_SESSION['id_payment'];
    $jenis_payment = $_POST['jenis_payment'];

    if (empty($jenis_payment)) {
        header("Location: editpayment.php?data=" . $id_payment . "&notif=editkosong");
    } else {
        $sql = "UPDATE `payment` SET `jenis_payment` = ? WHERE `id_payment` = ?";
        $stmt = mysqli_prepare($koneksi, $sql);
        if ($stmt) {
            mysqli_stmt_bind_param($stmt, "si", $jenis_payment, $id_payment);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_close($stmt);
            unset($_SESSION['id_payment']);
            header("Location: payment.php?notif=editberhasil");
        } else {
            header("Location: editpayment.php?data=" . $id_payment . "&notif=editerror");
        }
    }
}
?>
