<?php
   require_once'dbconfig.php';
   if(isset($_POST['login'])) {
      // username and password sent from form 
      $username = mysqli_real_escape_string($con,$_POST['User_Name']);
      $password = mysqli_real_escape_string($con,$_POST['Password']); 
      
      $sql = "SELECT Manager_Id FROM manager WHERE User_Name = '$username' and Password = '$password'";
      $result = mysqli_query($con,$sql);
      $count = mysqli_num_rows($result);
      
      if($count == 1) {
        header("location: productDe.php");
      }else {
        echo "<script>alert('log in unsuccesfull');</script>";
        echo "<script>window.location.href='index.php'</script>";
      }
   }
?>

<!DOCTYPE html>
<html lang="en">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<body>
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