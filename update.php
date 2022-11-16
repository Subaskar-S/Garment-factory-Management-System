<?php
// include database connection file
require_once'dbconfig.php';
if(isset($_POST['update']))
{
    // Get the row id
$rid=intval($_GET['Product_Id']);
// Posted Values
$Pr_id=$_POST['Product_Id'];
$Pr_name=$_POST['Product_Name'];
$Color=$_POST['Color'];
$Size=$_POST['Size'];
$Price=$_POST['Price'];
$P_date=$_POST['Production_Date'];
$E_id=$_POST['Employee_Id'];


$sql=mysqli_query($con,"update product set
Product_Id='$Pr_id',Product_Name='$Pr_name',Color='$Color',Size='$Size',
Price='$Price',Production_Date='$P_date',Employee_Id='$E_id' where Product_Id='$rid' ");

// Mesage after updation
echo "<script>alert('Record Updated successfully');</script>";
// Code for redirection
echo "<script>window.location.href='productDe.php'</script>";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Garment factory Management System </title>
<meta name="viewport" content="width=device-width, initialscale=1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h3>Update Product Details</h3>
<hr />
</div>
</div>
<?php
// Get the userid
$Pr_id=intval($_GET['Product_Id']);
$sql =mysqli_query($con, "select * from product where Product_Id=('$Pr_id')");
while ($result=mysqli_fetch_array($sql)) {
?>

<form name="insertrecord" method="post">

<div class="row">
<div class="col-md-4"><b>Product Id</b>
<input type="text" name="Product_Id" value="<?php echo
htmlentities($result['Product_Id']);?>" class="form-control" required>
</div>
<div class="col-md-4"><b>Product Name</b>
<input type="text" name="Product_Name" value="<?php echo
htmlentities($result['Product_Name']);?>" class="form-control" required>
</div>
</div>

<div class="row">
<div class="col-md-4"><b>Color</b>
<input type="text" name="Color" value="<?php echo
htmlentities($result['Color']);?>" class="form-control" required>
</div>
<div class="col-md-4"><b>Size</b>
<input type="text" name="Size" value="<?php echo
htmlentities($result['Size']);?>" class="form-control" required>
</div>
</div>

<div class="row">
<div class="col-md-4"><b>Price (LKR)</b>
<input type="number" name="Price" value="<?php echo
htmlentities($result['Price']);?>" class="form-control" required>
</div>
<div class="col-md-4"><b>Production Date</b>
<input type="date" name="Production_Date" value="<?php echo
htmlentities($result['Production_Date']);?>" class="form-control" required>
</div>
</div>

<div class="row">
<div class="col-md-4"><b>Employee Id</b>
<input type="text" name="Employee_Id" value="<?php echo
htmlentities($result['Employee_Id']);?>" class="form-control" required>
</div>
</div>
<?php } ?>
<div class="row" style="margin-top:1%">
<div class="col-md-8">
<input type="submit" name="update" value="Update">
</div>
</div>
</form>
</div>
</div>
</body>
</html>