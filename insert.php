<?php
// include database connection file
require_once'dbconfig.php';
if(isset($_POST['insert']))
{
    // Posted Values
$Pr_id=$_POST['Product_Id'];
$Pr_name=$_POST['Product_Name'];
$Color=$_POST['Color'];
$Size=$_POST['Size'];
$Price=$_POST['Price'];
$P_date=$_POST['Production_Date'];
$E_id=$_POST['Employee_Id'];


$sql=mysqli_query($con,"insert into product(Product_Id,Product_Name,Color,Size,Price,Production_Date,Employee_Id)
value('$Pr_id','$Pr_name','$Color','$Size','$Price','$P_date','$E_id')");
if($sql)
{
    // Message for successfull insertion
echo "<script>alert('Record inserted successfully');</script>";
echo "<script>window.location.href='productDe.php'</script>";
}
else
{
    // Message for unsuccessfull insertion
echo "<script>alert('Something went wrong. Please try again');</script>";
echo "<script>window.location.href='productDe.php'</script>";
}}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Garment factory Management System</title>
<meta name="viewport" content="width=device-width, initialscale=1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>


<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h3>Insert a new Product</h3>
<hr />
</div>
</div>

<form name="insertrecord" method="post">

<div class="row">
<div class="col-md-4"><b>Product Id</b>
<input type="text" name="Product_Id" class="form-control" required>
</div>
<div class="col-md-4"><b>Product Name</b>
<input type="text" name="Product_Name" class="form-control" required>
</div>
</div>

<div class="row">
<div class="col-md-4"><b>Color</b>
<input type="text" name="Color" class="form-control" required>
</div>
<div class="col-md-4"><b>Size</b>
<input type="text" name="Size" class="form-control" required>
</div>
</div>

<div class="row">
<div class="col-md-4"><b>Price (LKR)</b>
<input type="number" name="Price" class="form-control" required>
</div>
<div class="col-md-4"><b>Production Date</b>
<input type="date" name="Production_Date" class="form-control" required>
</div>
</div>

<div class="row">
<div class="col-md-4"><b>Employee Id</b>
<input type="text" name="Employee_Id" class="form-control" required>
</div>
</div>

<div class="row" style="margin-top:1%">
<div class="col-md-8">
<input type="submit" name="insert" value="Submit">
</div>
</div>
</form>
</div>
</div>
</body>
</html>