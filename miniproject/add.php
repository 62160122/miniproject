<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add</title>
</head>
<?php
//กำหนดตัวแปรเพื่อนำไปใช้งาน
$db_host = "localhost"; //ชื่อโฮสต์
$db_user = "root"; //ชื่อผู้ใช้
$db_password = ""; //รหัสผ่าน
$db_name = "dbtest"; //ชื่อฐานข้อมูล
$mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
$mysqli->set_charset("utf8");
// check connection error 
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
} else {
    // connect success, do nothing
    // echo "Connect success.";
}
    //$id = $_POST['id'];
    $name = $_POST['N'];
    $price = $_POST['p'];
    $detail = $_POST['d'];
      $image = $_FILES['image']['name'];
      $target = "images/".basename($image);
    $msg = "";
    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
    }else{
        $msg = "Failed to upload image";
    }
    $sql = "INSERT INTO product (Product_Name, price, detail, image)
            VALUES('$name', '$price', '$detail', '$image')";
    $result = mysqli_query( $mysqli, $sql);
?>
<br><hr>
</html>