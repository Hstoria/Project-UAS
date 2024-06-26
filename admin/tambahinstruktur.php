<?php 
include('../koneksi/koneksi.php');
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
                        <h3><i class="fas fa-plus"></i> Tambah Customer</h3>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="customer.php">Data Customer</a></li>
                            <li class="breadcrumb-item active">Tambah Customer</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="card card-info">
                <div class="card-header">
                    <h3 class="card-title" style="margin-top:5px;"><i class="far fa-list-alt"></i> Form Tambah Data Customer</h3>
                    <div class="card-tools">
                        <a href="customer.php" class="btn btn-sm btn-warning float-right">
                            <i class="fas fa-arrow-alt-circle-left"></i> Kembali
                        </a>
                    </div>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                </br>
                <div class="col-sm-10">
                <?php if((!empty($_GET['notif']))&&(!empty($_GET['jenis']))){?>
                      <?php if($_GET['notif']=="tambahkosong"){?>
                        <div class="alert alert-danger" role="alert">Maaf data 
                        <?php echo $_GET['jenis'];?> wajib di isi</div>
                      <?php }?>
                    <?php }?>

                </div>
                <form class="form-horizontal" method="post" action="your_action_page.php" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="form-group row">
                            <label for="foto" class="col-sm-3 col-form-label">Foto Customer</label>
                            <div class="col-sm-7">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" name="foto" id="customFile">
                                    <label class="custom-file-label" for="customFile">Choose file</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="nama" class="col-sm-3 col-form-label">Nama</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="nama" id="nama" value="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="email" id="email" value="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password" class="col-sm-3 col-form-label">Password</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="password" id="password" value="">
                            </div>
                        </div>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-info float-right">
                                <i class="fas fa-plus"></i> Tambah
                            </button>
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
