<!DOCTYPE HTML>
<?php session_start();
if ($_SESSION['s_email'] == true) {
} else {
    header('location:index.php');
}
?>

<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>Register Complaints</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
   <div class="w3-container">
     <nav class="navbar navbar-inverse bg-dark">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Garbage Collection</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="registercomplaints.php">Launch Complaints</a></li>
      <li><a href="showcomplaints.php">Complaints</a></li>
      <li><a href="logout.php">Logout</a></li>
    </ul>
  </div>
</nav>

  <h2><center>Complaints</center></h2>

  <table class="w3-table-all w3-margin-top" id="myTable">
  <tr>

  <th>Email</th>
  <th>Phone</th>
  <th>Bin ID</th>
  <th>Area</th>
  <th>Complaint</th>
  <th>Status</th>
  </tr>
  <?php
  $con = mysqli_connect("localhost","root","","registration");


  if(!$con)
  {
  echo "Failed To Connect <br>".mysqli_connect_error();
  }
  $sql = "select * from postcomplaint";
  $result = mysqli_query($con,$sql);
  while($row = mysqli_fetch_array($result))
  {
  echo "<tr>";
  echo "<td>" . $row['email'] . "</td>";
  echo "<td>" . $row['phone'] . "</td>";
  echo "<td>" . $row['bin_id'] . "</td>";
  echo "<td>" . $row['area'] . "</td>";
  echo "<td>" . $row['complaint'] . "</td>";
  echo "<td>" . $row['status'] . "</td>";
  if($_SESSION['type'] == "sweeper" && $row['status'] == 'open'){
    echo "<td><a href=\"closecomplaints.php?edit=".$row['complaint_id']."\"><button class=\"w3-button w3-red\">Close Complaints</button></a></td>";
  }
  }
  ?>


  </tr>
  </table>

</body>
</html>
