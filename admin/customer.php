<?php 
session_start();
include('../koneksi/koneksi.php');
if((isset($_GET['aksi']))&&(isset($_GET['data']))){
	if($_GET['aksi']=='hapus'){
		$id_customer = $_GET['data']; 
		//hapus customer
		$sql_dh = "DELETE FROM customer WHERE id_customer = '$id_customer'";
		mysqli_query($koneksi,$sql_dh);
	}
}
?>

<!DOCTYPE html>
<html>
<head>
<?php include("includes/head.php") ?> 
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
<?php include("includes/header.php") ?>

  <?php include("includes/sidebar.php") ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h3><i class="fas fa-user-tie"></i> Data Customer</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active"> Data Customer</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title" style="margin-top:5px;"><i class="fas fa-list-ul"></i> Daftar Customer</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <div class="col-md-12">
                  <form method="" action="">
                    <div class="row">
                        <div class="col-md-4 bottom-10">
                          <input type="text" class="form-control" id="kata_kunci" name="katakunci">
                        </div>
                        <div class="col-md-5 bottom-10">
                          <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i>&nbsp; Search</button>
                        </div>
                    </div><!-- .row -->
                  </form>
                </div><br>
    
              <table class="table table-bordered">
                    <thead>                  
                      <tr>
                        <th width="5%">No</th>
                        <th width="30%">Nama</th>
                        <th width="30%">Email</th>
                        <th width="30%"><center>Aksi</center></th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php 
                    $batas = 3;
                    if(!isset($_GET['halaman'])){
                        $posisi = 0;
                        $halaman = 1;
                    }else{
                        $halaman = $_GET['halaman'];
                        $posisi = ($halaman-1) * $batas;
                    }

                    $sql_k = "SELECT id_customer, nama, email, foto
                              FROM customer ";

                    if (isset($_GET["katakunci"])){
                        $katakunci_customer = $_GET["katakunci"];
                        $sql_k .= " WHERE nama LIKE '%$katakunci_customer%'"; 
                    }

                    $sql_k .= " ORDER BY id_customer LIMIT $posisi, $batas"; 

                    $query_k = mysqli_query($koneksi, $sql_k);
                    $no = $posisi + 1;

                    while($data_k = mysqli_fetch_assoc($query_k)){ 
                        $id_customer = $data_k['id_customer'];
                        $nama = $data_k['nama'];
                        $email = $data_k['email']; 
                    ?>
                    <tr>
                        <td><?php echo $no;?></td>
                        <td><?php echo $nama;?></td>
                        <td><?php echo $email;?></td> 
                        <td align="center">
                            <a href="detailcustomer.php?data=<?php echo $id_customer;?>" class="btn btn-xs btn-info" title="Detail"><i class="fas fa-eye"></i></a> 
                            <a href="javascript:if(confirm('Anda yakin ingin menghapus data <?php echo $nama; ?>?'))window.location.href ='customer.php?aksi=hapus&data=<?php echo $id_customer;?>&notif=hapusberhasil'" class="btn btn-xs btn-warning"><i class="fas fa-trash"></i> Hapus</a>
                        </td>
                    </tr>
                    <?php 
                    $no++;
                    }
                    ?>
                  </tbody>
                </table>
              </div>
                   
              <!-- /.card-body -->
              <?php
              //hitung jumlah semua data 
              $sql_jum = "SELECT COUNT(*) AS total FROM customer"; 

              if (isset($_GET["katakunci"])){
                  $katakunci_customer = $_GET["katakunci"];
                  $sql_jum .= " WHERE nama LIKE '%$katakunci_customer%'";
              } 

              $query_jum = mysqli_query($koneksi, $sql_jum);
              $data_jum = mysqli_fetch_assoc($query_jum);
              $jum_data = $data_jum['total'];
              $jum_halaman = ceil($jum_data / $batas);
              ?>

              <div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-right">
                    <?php 
                    if($jum_halaman == 0){
                        //tidak ada halaman
                    }else if($jum_halaman == 1){
                        echo "<li class='page-item'><a class='page-link'>1</a></li>";
                    }else{
                        $sebelum = $halaman - 1;
                        $setelah = $halaman + 1;
                        if (isset($_GET["katakunci"])){
                            $katakunci_customer = $_GET["katakunci"];
                            if($halaman != 1){
                                echo "<li class='page-item'>
                                      <a class='page-link' 
                                      href='customer.php?katakunci=$katakunci_customer&halaman=1'>First</a></li>";
                                echo "<li class='page-item'><a class='page-link' 
                                      href='customer.php?katakunci=$katakunci_customer&halaman=$sebelum'>‹</a></li>";
                            }
                            for($i = 1; $i <= $jum_halaman; $i++){
                                if ($i > $halaman - 5 and $i < $halaman + 5 ) {
                                    if($i != $halaman){
                                        echo "<li class='page-item'><a class='page-link' 
                                              href='customer.php?katakunci=$katakunci_customer&halaman=$i'>$i</a></li>";
                                    }else{
                                        echo "<li class='page-item'>
                                              <a class='page-link'>$i</a></li>";
                                    }
                                }
                            }                         
                            if($halaman != $jum_halaman){
                                echo "<li class='page-item'>
                                      <a class='page-link'  
                                      href='customer.php?katakunci=$katakunci_customer&halaman=$setelah'>›</a></li>";
                                echo "<li class='page-item'><a class='page-link' 
                                      href='customer.php?katakunci=$katakunci_customer&halaman=$jum_halaman'>Last</a></li>";
                            }
                        }else{
                            if($halaman != 1){
                                echo "<li class='page-item'><a class='page-link' 
                                      href='customer.php?halaman=1'>First</a></li>";
                                echo "<li class='page-item'><a class='page-link' 
                                      href='customer.php?halaman=$sebelum'>‹</a></li>";
                            }
                            for($i = 1; $i <= $jum_halaman; $i++){
                                if ($i > $halaman - 5 and $i < $halaman + 5 ) {
                                    if($i != $halaman){
                                        echo "<li class='page-item'><a class='page-link' 
                                              href='customer.php?halaman=$i'>$i</a></li>";
                                    }else{
                                        echo "<li class='page-item'><a class='page-link'>$i</a></li>";
                                    }
                                }
                            }                         
                            if($halaman != $jum_halaman){
                                echo "<li class='page-item'><a class='page-link' 
                                      href='customer.php?halaman=$setelah'>›</a></li>";
                                echo "<li class='page-item'><a class='page-link' 
                                      href='customer.php?halaman=$jum_halaman'>Last</a></li>";
                            }
                        }
                    }?>
                </ul>
            </div>

            <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include("includes/footer.php") ?>

</div>
<!-- ./wrapper -->

<?php include("includes/script.php") ?>
</body>
</html>
