<?php 
session_start();
include('../koneksi/koneksi.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $jenis_payment = $_POST['payment_method'];

    if (empty($jenis_payment)) {
        header("Location: tambahpayment.php?notif=tambahkosong");
        exit();
    } else {
        $sql = "INSERT INTO payments (jenis_payment) VALUES (?)";
        $stmt = mysqli_prepare($koneksi, $sql);
        if ($stmt) {
            mysqli_stmt_bind_param($stmt, "s", $jenis_payment);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_close($stmt);
            header("Location: payment.php?notif=tambahberhasil");
            exit();
        } else {
            // Handle SQL prepare error
            echo "Error preparing statement: " . mysqli_error($koneksi);
        }
    }
}
?>
<!DOCTYPE html>
<html>
<head>
<?php include("includes/head.php"); ?> 
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
<?php include("includes/header.php"); ?>
<?php include("includes/sidebar.php"); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h3><i class="fas fa-plus"></i> Tambah Payment Method</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="payment.php">Payment Method</a></li>
              <li class="breadcrumb-item active">Tambah Payment Method</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

    <div class="card card-info">
      <div class="card-header">
        <h3 class="card-title" style="margin-top:5px;"><i class="far fa-list-alt"></i> Form Tambah Payment Method</h3>
        <div class="card-tools">
          <a href="payment.php" class="btn btn-sm btn-warning float-right">
          <i class="fas fa-arrow-alt-circle-left"></i> Kembali</a>
        </div>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <br>
      <div class="col-sm-10">
      <?php if(!empty($_GET['notif'])){?>
        <?php if($_GET['notif']=="tambahkosong"){?>
          <div class="alert alert-danger" role="alert">
            Maaf data payment method wajib diisi
          </div>
        <?php }?>
      <?php }?>
      </div>

      <form class="form-horizontal" method="post" action="tambahpayment.php">
        <div class="card-body">
          <div class="form-group row">
            <label for="payment_method" class="col-sm-3 col-form-label">Payment Method</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" id="payment_method" name="payment_method" value="">
            </div>
          </div>
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
          <div class="col-sm-10">
            <button type="submit" class="btn btn-info float-right"><i class="fas fa-plus"></i> Tambah</button>
          </div>  
        </div>
        <!-- /.card-footer -->
      </form>
    </div>
    <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include("includes/footer.php"); ?>
</div>
<!-- ./wrapper -->

<?php include("includes/script.php"); ?>
</body>
</html>
