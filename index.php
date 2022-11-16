<?php
// include database connection file
require_once'dbconfig.php';
if(isset($_POST['index']))
{
// Posted Values  
$s_l_id=$_POST['User_Name'];
$pass=$_POST['Password'];
// Call the store procedure for insertion
$sql=mysqli_query($con,"select * from manager User_Name='$s_l_id', Password='$pass'");
$row=mysqli_num_rows($sql);
if($row==1)
{
// Message for successfull insertion
echo "<script>alert('login successfull');</script>";
echo "<script>window.location.href='productDe.php'</script>"; 
}
else 
{
// Message for unsuccessfull insertion
echo "<script>alert('log in unsuccesfull');</script>";
echo "<script>window.location.href='index.php'</script>"; 
}
}
?>

<!DOCTYPE html>
<html lang="en">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<body>
<a href="productDe.php"><button class="btn btn-primary"> new_button</button></a>

<hr/>
<div class="container">
<div class="row">
<div class="col-md-12">
<h3><b>Garment factory Management System - Manager Login Page</h3>
<hr />
</div>
</div>

<form name="insertrecord" method="post">
<div class="row">
<div class="col-md-4"><b>Manager User Name</b>
<input type="text" name="User_Name" class="form-control" required>
</div>
</div> 
<div class="row">
<div class="col-md-4"><b>Password</b>
<input type="text" name="Password" class="form-control" required>
</div> 
</div> 

<div class="row" style="margin-top:1%">
<div class="col-md-8">
<input type="submit" name="login" value="Submit">
</div>
</div> 

</form>
     
</div>
</div>
</body>
</html>