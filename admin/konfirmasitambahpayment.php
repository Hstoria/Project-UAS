<?php 
include('../koneksi/koneksi.php');
$payment_method = $_POST['payment_method'];
if(empty($payment_method)){
    header("Location: tambahpayment.php?notif=tambahkosong");
} else {
    $sql = "INSERT INTO `payment_methods` (`jenis_payment`) 
            VALUES ('$payment_method')";
    mysqli_query($koneksi, $sql);
    header("Location: payment.php?notif=tambahberhasil");	
}
?>
