<?php
session_start();
include "connection.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keyword" content="lms,library,library management,library management system,online library,library system,school library,management system,polytechnic library">
    <meta name="description" content="“LIBRARY MANAGEMENT SYSTEM” is targeted towards the management of a modern library. All the book details are provided through an Online Public Access Catalogue visible throughout the local internet. Proper management and audit of books is possible through an easy to use interface for the library staff. Throughout the project the focus has been on presenting information and comments in an easy and intelligible manner.">
    <meta name="author" content="Abdul Halim Munna">
    <link href="images/icon.ico" rel="icon"/>
    <title>Student Login Form | LMS </title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/custom.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/nprogress.css" rel="stylesheet">
</head>

<br>

<div class="col-lg-12 text-center ">
    <h1 style="font-family:Lucida Console">Library Management System</h1>
</div>

<br>

<body class="login">


<div class="login_wrapper">

    <section class="login_content">
        <form name="form1" action="" method="post">
            <h1>User Login Form</h1>

            <div>
                <input type="text" name="username" class="form-control" placeholder="Username" required=""/>
            </div>
            <div>
                <input type="password" name="password" class="form-control" placeholder="Password" required=""/>
            </div>
            <div>

                <input class="btn btn-default submit" type="submit" name="submit1" value="Login">
            </div>

            <div class="clearfix"></div>

            <div class="separator">
                <p class="change_link">New to site?
                    <a href="registration.php"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br/>


            </div>
        </form>
    </section>
</div>


<?php 

if(isset($_POST["submit1"]))
{
    $count=0;
    $res=mysqli_query($link,"select * from student_registration  where username='$_POST[username]' && password='$_POST[password]' && status='yes'");
    $count=mysqli_num_rows($res);
    
    if($count==0)
    {
        ?>
        <div class="alert alert-danger col-lg-4 col-lg-push-4">
    <strong style="color:white">Invalid</strong> Username Or Password.
</div>
        <?php
    }
    else
    {
        $_SESSION["username"]=$_POST["username"];
        ?>
<script type="text/javascript">
    window.location="my_issued_books.php";
</script>      

        <?php
        
    }
}

?>


</body>
</html>