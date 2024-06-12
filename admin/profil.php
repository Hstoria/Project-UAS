<?php 
session_start();
include('../koneksi/koneksi.php');
$id_admin = $_SESSION['id_admin'];
// Get profile data
$sql = "SELECT `nama`, `email` FROM `admin` WHERE `id_admin`='$id_admin'";
$query = mysqli_query($koneksi, $sql);

if ($query) {
    if ($data = mysqli_fetch_assoc($query)) {
        $nama = $data['nama'];
        $email = $data['email'];
       
    } else {
        // Handle case where no data is found
        echo "No profile data found for the admin.";
    }
} else {
    // Handle query error
    echo "Error: " . mysqli_error($koneksi);
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
            <h3><i class="fas fa-user-tie"></i> Profil</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">Profil</li>
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
            <a href="editprofil.php" class="btn btn-sm btn-info float-right"><i class="fas fa-edit"></i> Edit Profil</a>
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <div class="col-sm-12">
            <?php if(!empty($_GET['notif'])){
              if($_GET['notif']=="editberhasil"){?>
                <div class="alert alert-success" role="alert">
                Data Berhasil Diubah</div>
              <?php }?>
            <?php }?>

          </div>
          <table class="table table-bordered">
            <tbody>  
              <tr>
                <td colspan="2"><i class="fas fa-user-circle"></i> <strong>PROFIL</strong></td>
              </tr>  
              <tr>
                <td width="20%"><strong>Nama</strong></td>
                <td width="80%"><?php echo $nama; ?></td>
              </tr>                
              <tr>
                <td width="20%"><strong>Email</strong></td>
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
