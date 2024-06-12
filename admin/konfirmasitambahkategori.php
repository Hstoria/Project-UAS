<?php 
include('../koneksi/koneksi.php');
$kategori = $_POST['kategori'];
if(empty($kategori)){
	header("Location:tambahkategori.php?notif=tambahkosong");
}else{
	$sql = "insert into `kategori` (`judul`) 
	values ('$kategori')";
	mysqli_query($koneksi,$sql);
	header("Location:kategori.php?notif=tambahberhasil");	
}
?>
