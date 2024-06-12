<?php 
session_start();
include('../koneksi/koneksi.php');

if((isset($_GET['aksi'])) && (isset($_GET['data']))){
    if($_GET['aksi'] == 'hapus'){
        $id_payment = $_GET['data'];
        // Hapus payment method
        $sql_dh = "DELETE FROM `payment` WHERE `id_payment` = '$id_payment'";
        mysqli_query($koneksi, $sql_dh);
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
                        <h3><i class="fas fa-credit-card"></i> Payment Methods</h3>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item active">Payment Methods</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title" style="margin-top:5px;"><i class="fas fa-list-ul"></i> Daftar Payment Methods</h3>
                    <div class="card-tools">
                        <a href="tambahpayment.php" class="btn btn-sm btn-info float-right"><i class="fas fa-plus"></i> Tambah Payment Method</a>
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="col-md-12">
                        <form method="get" action="">
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
                    <div class="col-sm-12">
                        <?php if(!empty($_GET['notif'])){?>
                            <?php if($_GET['notif']=="tambahberhasil"){?>
                                <div class="alert alert-success" role="alert">Data Berhasil Ditambahkan</div>
                            <?php } else if($_GET['notif']=="editberhasil"){?>
                                <div class="alert alert-success" role="alert">Data Berhasil Diubah</div>
                            <?php } else if($_GET['notif']=="hapusberhasil"){?>
                                <div class="alert alert-success" role="alert">Data Berhasil Dihapus</div>
                            <?php }?>
                        <?php }?>
                    </div>
                    <table class="table table-bordered">
                        <thead>                  
                            <tr>
                                <th width="5%">No</th>
                                <th width="80%">Jenis Payment</th>
                                <th width="15%"><center>Aksi</center></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            $batas = 4;
                            if(!isset($_GET['halaman'])){
                                $posisi = 0;
                                $halaman = 1;
                            } else {
                                $halaman = $_GET['halaman'];
                                $posisi = ($halaman-1) * $batas;
                            } 
                            $sql_k = "SELECT `id_payment`,`jenis_payment` FROM `payment` ";
                            if (isset($_GET["katakunci"])){
                                $katakunci_payment = $_GET["katakunci"];
                                $sql_k .= " WHERE `jenis_payment` LIKE '%$katakunci_payment%'";
                            } 
                            $sql_k .= " ORDER BY `jenis_payment` LIMIT $posisi, $batas";
                            $query_k = mysqli_query($koneksi, $sql_k);
                            $no = $posisi + 1;
                            while($data_k = mysqli_fetch_row($query_k)){
                                $id_payment = $data_k[0];
                                $jenis_payment = $data_k[1];
                            ?>
                            <tr>
                                <td><?php echo $no;?></td>
                                <td><?php echo $jenis_payment;?></td>
                                <td align="center">
                                    <a href="editpayment.php?data=<?php echo $id_payment;?>" class="btn btn-xs btn-info"><i class="fas fa-edit"></i> Edit</a>
                                    <a href="javascript:if(confirm('Anda yakin ingin menghapus data <?php echo $jenis_payment; ?>?'))window.location.href='payment.php?aksi=hapus&data=<?php echo $id_payment;?>&notif=hapusberhasil'" class="btn btn-xs btn-warning"><i class="fas fa-trash"></i> Hapus</a>
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
                <div class="card-footer clearfix">
                    <ul class="pagination pagination-sm m-0 float-right">
                        <?php
                        $sql_jum = "SELECT `id_payment`, `jenis_payment` FROM `payment`";
                        if (isset($_GET["katakunci"])){
                            $katakunci_payment = $_GET["katakunci"];
                            $sql_jum .= " WHERE `jenis_payment` LIKE '%$katakunci_payment%'";
                        } 
                        $query_jum = mysqli_query($koneksi,$sql_jum);
                        $jum_data = mysqli_num_rows($query_jum);
                        $jum_halaman = ceil($jum_data/$batas);

                        if($jum_halaman == 0){
                            echo '<li class="page-item"><a class="page-link">1</a></li>';
                        }else{
                            $sebelum = $halaman-1;
                            $setelah = $halaman+1;
                            if($halaman != 1){
                                echo '<li class="page-item"><a class="page-link" href="payment.php?halaman=1">First</a></li>';
                                echo '<li class="page-item"><a class="page-link" href="payment.php?halaman='.$sebelum.'">&laquo;</a></li>';
                            }
                            for($i=1; $i<=$jum_halaman; $i++){
                                if($i > $halaman - 5 and $i < $halaman + 5){
                                    if($i != $halaman){
                                        echo '<li class="page-item"><a class="page-link" href="payment.php?halaman='.$i.'">'.$i.'</a></li>';
                                    }else{
                                        echo '<li class="page-item"><a class="page-link">'.$i.'</a></li>';
                                    }
                                }
                            }
                            if($halaman != $jum_halaman){
                                echo '<li class="page-item"><a class="page-link" href="payment.php?halaman='.$setelah.'">&raquo;</a></li>';
                                echo '<li class="page-item"><a class="page-link" href="payment.php?halaman='.$jum_halaman.'">Last</a></li>';
                            }
                        }
                        ?>
                    </ul>
                </div>
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