<?php
ob_start();
    session_start();
include('dbconnect.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Student Registration Form | LMS </title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/custom.min.css" rel="stylesheet">
</head>

<br>

<div class="col-lg-12 text-center ">
    <h1 style="font-family:Lucida Console">Library Management System</h1>
</div>


<body class="login" style="margin-top: -20px;">



    <div class="login_wrapper">

            <section class="login_content" style="margin-top: -40px;">
                <form name="form1" action="" method="post">
                    <h2>Student Registration</h2><br>

                    <div>
                        <input type="text" class="form-control" placeholder="FirstName" name="firstname" required=""/>
                    </div>
                    <div>
                        <input type="text" class="form-control" placeholder="LastName" name="lastname" required=""/>
                    </div>

                    <div>
                        <input type="text" class="form-control" placeholder="Username" name="username" required=""/>
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Password" name="password" required=""/>
                    </div>
                    <div>
                        <input type="text" class="form-control" placeholder="email" name="email" required=""/>
                    </div>
                    <div>
                        <input type="text" class="form-control" placeholder="contact" name="contact" required=""/>
                    </div>
                    <div>
                        <input type="text" class="form-control" placeholder="SEM" name="sem" required=""/>
                    </div>
                    <div>
                        <input type="text" class="form-control" placeholder="Enrollment No" name="enrollmentno" required=""/>
                    </div>
                    <div class="col-lg-12  col-lg-push-3">
                        <input class="btn btn-default submit " type="submit" name="submit1" value="Register">
                    </div>

                </form>
            </section>
<?php
if (isset($_POST['submit1'])) {
    // Escape user inputs for security
$first_name = mysqli_real_escape_string($link, $_REQUEST['firstname']);
$last_name = mysqli_real_escape_string($link, $_REQUEST['lastname']);
$username = mysqli_real_escape_string($link, $_REQUEST['username']);
$password = mysqli_real_escape_string($link, $_REQUEST['password']);
$email = mysqli_real_escape_string($link, $_REQUEST['email']);
$contact = mysqli_real_escape_string($link, $_REQUEST['contact']);
$sem = mysqli_real_escape_string($link, $_REQUEST['sem']);
$enrollment = mysqli_real_escape_string($link, $_REQUEST['enrollmentno']);



// attempt insert query execution
$sql = "INSERT INTO user (first_name, last_name,username,password,email,contact,sem,enrollment,status) VALUES ('$first_name','$last_name','$username','$password','$email','$contact','$sem','$enrollment','no')";
if(mysqli_query($link, $sql)){
      ?>
        <div class="alert alert-success col-lg-6 col-lg-push-3">
        Registration successfully, You will get email when your account is approved
        </div>
      <?php
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 ?>
<script type="text/javascript">
    window.location="index.php";    // this code will bring you to index page as soon as ur done reg 
</script>

 <?php
// close connection
mysqli_close($link);
?>
    
<?php
}

?>
    </div>
</body>
</html>
