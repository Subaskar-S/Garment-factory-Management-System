<?php
require_once'dbconfig.php';
// sql to delete a record
$Pr_id=intval($_GET['Product_Id']);
$sql = mysqli_query($con,"DELETE FROM product WHERE Product_Id=('$Pr_id')");

echo "<script>alert('Record Deleted successfully');</script>";
echo "<script>window.location.href='productDe.php'</script>";
?>