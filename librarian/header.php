<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Librarian | LMS </title>
    <meta name="keyword" content="lms,library,library management,library management system,online library,library system,school library,management system,polytechnic library">
    <meta name="description" content="“LIBRARY MANAGEMENT SYSTEM” is targeted towards the management of a modern library. All the book details are provided through an Online Public Access Catalogue visible throughout the local internet. Proper management and audit of books is possible through an easy to use interface for the library staff. Throughout the project the focus has been on presenting information and comments in an easy and intelligible manner.">
    <meta name="author" content="Abdul Halim Munna">
    <link href="images/icon.ico" rel="icon"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/nprogress.css" rel="stylesheet">
    <link href="css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="../index.php" class="site_title"><i class="fa fa-book"></i> <span>LMS</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="images/user.png" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>

                        <h2><?php echo $_SESSION["librarian"]; ?></h2>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- /menu profile quick info -->

                <br/>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li><a href="display_student_info.php"><i class="fa fa-home"></i> All Student Info <span class=""></span></a>

                            </li>
                            <li><a href="add_books.php"><i class="fa fa-edit"></i> Add Books <span class=""></span></a>

                            </li>
                            <li><a href="display_books.php"><i class="fa fa-desktop"></i> Display Books <span
                                    class=""></span></a>

                            </li>
                            <li><a href="issue_books.php"><i class="fa fa-table"></i> Issue Books <span class=""></span></a>

                            </li>
                            <li><a href="return_book.php"><i class="fa fa-mail-forward"></i> Return Books <span
                                    class=""></span></a>

                            </li>
                            <li><a href="books_details_with_student.php"><i class="fa fa-bar-chart-o"></i> Book With All Info <span
                                    class=""></span></a>

                            </li>
                            <li><a href="send_notification_student.php"><i class="fa fa-envelope-o"></i> Send Message <span
                                    class=""></span></a>

                            </li>

                        </ul>
                    </div>


                </div>

            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                               aria-expanded="false">
                                <img src="images/user.png" alt=""><?php echo $_SESSION["librarian"]; ?>
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="logout.php"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->