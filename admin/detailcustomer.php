<?php 
session_start();
include('../koneksi/koneksi.php');

if(isset($_GET['data'])){
  $id_customer = $_GET['data'];
  // Ambil data admin
  $sql = "SELECT nama, email, foto
          FROM customer
          WHERE id_customer = (
              SELECT id_customer FROM customer WHERE id_customer = '$id_customer'
          )";
  $query = mysqli_query($koneksi, $sql);
  
  // Periksa apakah query berhasil dieksekusi
  if($query) {
    $data = mysqli_fetch_row($query);
    if($data) {
      $nama = $data[0];
      $email = $data[1];
      $foto = $data[2];
    
    }
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
            <h3><i class="fas fa-user-tie"></i> Detail Data Customer</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="customer.php">Data Customer</a></li>
              <li class="breadcrumb-item active">Detail Data Customer</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
            <div class="card">
              <div class="card-header">
                <div class="card-tools">
                  <a href="customer.php" class="btn btn-sm btn-warning float-right">
                  <i class="fas fa-arrow-alt-circle-left"></i> Kembali</a>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                    <tbody>  
                      <tr>
                        <td colspan="2"><i class="fas fa-user-circle"></i> <strong>Data Customer<strong></td>
                      </tr>   
                      <td><strong>Foto Customer<strong></td>
                        <td width="80%"><img src="foto/<?php echo $foto;?>" class="img-fluid" width="200px;"></td>                        
                      <tr>
                        <td width="20%"><strong>Nama<strong></td>
                        <td width="80%"><?php echo $nama; ?></td>
                      </tr>                 
                      <tr>
                        <td width="20%"><strong>Email<strong></td>
                        <td width="80%"><?php echo $email; ?></td>
                      </tr>            
                      
                    </tbody>
                  </table>  
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">&nbsp;</div>
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
