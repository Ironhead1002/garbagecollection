<!DOCTYPE html>
<html>

<head>
  <style>
    *{
box-sizing: border-box;
}

/* Style all input fields */

.error {color: #FF0001;}
input {
width: 100%;

padding: 12px;
font-size:15px;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
margin-top: 6px;
margin-bottom: 16px;
}
/* Style the submit button */
input[type=submit] {
background-color: #4CAF50;
color: white;
}
/* Style the container for inputs */
.container {
background-color: rgba(0,0,0,0.5);
margin: auto;
padding: 50px;
border-radius: 5px;
box-shadow: 0px 0px 10px #000;
position: absolute;
top: 0px;
bottom: 0px;
left: 0px;
right: 0px;
width: 600px;
height: 700px;
}
.container .header-text{
font-size: 50px;
font-weight: 600;
padding: 12px;
font-size:15px;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
margin-top: 6px;
margin-bottom: 16px;


}
  </style>
</head>
<body>

  <?php
  if(count($_POST)>0) {
    $con = mysqli_connect("localhost","root","","registration") or die("connection failed");
    $pass = md5($_POST["password"]);
    $sql = "INSERT INTO userregistration(name,email,password,mobile,address) VALUES ('" . $_POST["name"] . "','" . $_POST["email"] . "','" . $pass . "','" . $_POST["mobile"] . "','" . $_POST["address"] . "')";
    mysqli_query($con,$sql);
    $current_id = mysqli_insert_id($con);

  ?>

    <script>
      alert("Registeration Successfull");
      location.replace('index.php');
    </script>

  <?php
  }
  ?>

<div class="container">
  <h3><center>Registration</center></h3>
  <div style="width:500px;">
 <form name="frmUser" method="post" onsubmit="return validation(this)" action="">

    <label for="name">Name</label>
    <input type="text" id="name" name="name">
    <span id="name_span" style="color:red;">*</span><br>

    <label for="email">Email</label>
    <input type="text" id="email" name="email">
    <span id="email_span" style="color:red;">*</span><br>

    <label for="password">Password</label>
    <input type="password" id="password" name="password">
    <span id="password_span" style="color:red;">*</span><br>

    <label for="mobile">Mobile number</label>
    <input type="text" id="mobile" name="mobile">
    <span id="mobile_span" style="color:red;">*</span><br>

    <label for="address">Address</label>
    <input type="text" id="address" name="address" >
    <span id="address_span" style="color:red;">*</span><br>

    <input type="submit" value="Submit">
  </form>
</div>
<script type="text/javascript" src="register.js"></script>
</body>
</html>
