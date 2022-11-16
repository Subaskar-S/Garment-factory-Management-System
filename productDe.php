<?php
// include database connection file
require_once'dbconfig.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Garment factory Management System</title>
<meta name="viewport" content="width=device-width, initialscale=1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css"></style>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://getbootstrap.com/dist/js/bootstrap.min.js"></script>
</head>


<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h3>Garment factory Management System - Product Details</h3> <hr />
<a href="insert.php"><button class="btn btn-primary"> Insert Record</button></a>
<div class="table-responsive">
<table id="mytable" class="table table-bordred table-striped">
<thead>
<th>#</th>
<th>Product Id</th>
<th>Product Name</th>
<th>Color</th>
<th>Size</th>
<th>Price (LKR)</th>
<th>Production Date</th>
<th>Employee Id</th>
<th>Edit</th>
<th>Delete</th>
</thead>
<tbody>
<?php
$sql =mysqli_query($con, "select * from product;");
$cnt=1;
$row=mysqli_num_rows($sql);
if($row>0){
while ($result=mysqli_fetch_array($sql)) {
?>
<tr>
<td><?php echo htmlentities($cnt);?></td>
<td><?php echo htmlentities($result['Product_Id']);?></td>
<td><?php echo htmlentities($result['Product_Name']);?></td>
<td><?php echo htmlentities($result['Color']);?></td>
<td><?php echo htmlentities($result['Size']);?></td>
<td><?php echo htmlentities($result['Price']);?></td>
<td><?php echo htmlentities($result['Production_Date']);?></td>
<td><?php echo htmlentities($result['Employee_Id']);?></td>
<td><a href="update.php?Product_Id=<?php echo
htmlentities($result['Product_Id']);?>"><button class="btn btn-primary btnxs">
    <span class="glyphicon glyphicon-pencil"></span></button></a></td>

    <td><a href="delete.php?Product_Id=<?php echo
htmlentities($result['Product_Id']);?>"><button class="btn"><i class="fa fa-trash"></i></button></a></td>
</tr>
<?php
// for serial number increment
$cnt++;
} } else { ?>
<tr>
<td colspan="9" style="color:red; font-weight:bold;textalign:center;"> No Record found</td>
</tr>
<?php } ?>
</tbody>
</table>
</div>
</div>
</div>
</div>
</body>
</html>