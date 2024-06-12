<?php 
session_start();
include('../koneksi/koneksi.php');

if(isset($_SESSION['id_admin']) && isset($_POST['nama']) && isset($_POST['email']) && isset($_POST['username'])) {
    $id_admin = $_SESSION['id_admin'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    // Check if a new password is provided
    if(!empty($password)) {
        // Hash the new password
        $password = password_hash($password, PASSWORD_DEFAULT);
    } else {
        // If not, retrieve the current password
        $sql_password = "SELECT password FROM admin WHERE id_admin = '$id_admin'";
        $query_password = mysqli_query($koneksi, $sql_password);
        $data_password = mysqli_fetch_assoc($query_password);
        $password = $data_password['password'];
    }
    
    // Check if a new photo is uploaded
    if(isset($_FILES['foto']) && $_FILES['foto']['error'] === UPLOAD_ERR_OK) {
        $foto_tmp = $_FILES['foto']['tmp_name'];
        $foto_name = $_FILES['foto']['name'];
        $foto_destination = 'foto/' . $foto_name;
        
        // Move the uploaded photo to the destination directory
        if(move_uploaded_file($foto_tmp, $foto_destination)) {
            // Update the photo path in the database
            $sql_update_photo = "UPDATE admin SET foto = '$foto_name' WHERE id_admin = '$id_admin'";
            mysqli_query($koneksi, $sql_update_photo);
        }
    }
    
    // Update user data
    $sql_update_admin = "UPDATE admin SET nama = '$nama', email = '$email', username = '$username', password = '$password' WHERE id_admin = '$id_admin'";
    
    if(mysqli_query($koneksi, $sql_update_admin)) {
        header("Location: admin.php?notif=editberhasil");
        exit();
    } else {
        echo "Error: " . $sql_update_admin . "<br>" . mysqli_error($koneksi);
    }
} else {
    // Handle case when session or required POST data is not set
    header("Location: admin.php"); // Redirect back to user management page
    exit();
}
?>
