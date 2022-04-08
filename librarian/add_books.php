<?php
session_start();
if (!isset($_SESSION["librarian"]))
{
    ?>
    <script type="text/javascript">
        window.location="login.php";
    </script>
    <?php
}
include "connection.php";
include "header.php";
?>

        <!-- page content area main -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Books Info</h3>
                    </div>
                </div>

                <div class="clearfix"></div>
                <div class="row" style="min-height:500px">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Add Books Info</h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                            <form name="form1" action="" method="post" class="col-lg-6" enctype="multipart/form-data">
                                <table class="table table-bordered">
                                <tr>
                                    <td>
                                    <input type="text" class="form-control" placeholder="Books Name" name="booksname" required="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                    Books Image:
                                    <input type="file" name="f1" required="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                    <input type="text" class="form-control" placeholder="Books Author Name" name="bauthorname" required="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                    <input type="text" class="form-control" placeholder="Books Publicaton Name" name="pname" required="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                    <input type="text" class="form-control" placeholder="Books Purchase Date" name="bpurchasedt" required="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                    <input type="text" class="form-control" placeholder="Books Price" name="bprice" required="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                    <input type="text" class="form-control" placeholder="Books Quantity" name="bqty" required="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                    <input type="text" class="form-control" placeholder="Books Available Quantity" name="aqty" required="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <input type="submit" name="submit1" class="btn btn-default submit" value="Insert Books Details" style="background-color: #2A3F54; color: white">
                                    </td>
                                </tr>
                                    
                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->
        <?php 
            if(isset($_POST["submit1"]))
            {
                $tm=md5(time());
                $fnm=$_FILES["f1"]["name"];
                $dst="./books_image/".$tm.$fnm;
                $dst1="books_image/".$tm.$fnm;

                move_uploaded_file($_FILES["f1"] ["tmp_name"],$dst);

                mysqli_query($link,"insert into add_books values('','$_POST[booksname]','$dst1','$_POST[bauthorname]','$_POST[pname]','$_POST[bpurchasedt]','$_POST[bprice]','$_POST[bqty]','$_POST[aqty]','$_SESSION[librarian]')");
            ?>
            <script type="text/javascript">
                alert("Books Insert Succesfully");
            </script>
            <?php
            }
            ?>


<?php
include "footer.php";
?>