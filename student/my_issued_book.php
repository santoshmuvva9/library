<?php
ob_start();
    session_start();
    if (!isset($_SESSION["username"])) {
        ?>
            <script type="text/javascript">
                window.location="index.php";
            </script>

        <?php
    }
include "header.php";
include "dbconnect.php";
?>

    <!DOCTYPE html>
    <html>
    <head>
        <title>Home</title>
    </head>
    <body>
    <!-- page content area main -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Plain Page</h3>
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>
                <div class="row" style="min-height:500px">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Books Issued</h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <table class="table table-borbared">
                                    <th>
                                        Student Enrollment No
                                    </th>                    

                                    <th>
                                        Books Name
                                    </th>                
                                    <th>
                                        Books Issued Date
                                    </th>

                                    <?php
                                        $res=mysqli_query($link, "SELECT * FROM issue_books WHERE student_username='$_SESSION[username]'");
                                        while ($row=mysqli_fetch_array($res)) 
                                        {
                                        echo "<tr>";
                                        echo "<td>";

                                        echo $row["student_enrollment"]; 
                                        echo "</td>";
                                        echo "<td>";

                                        echo $row["books_name"]; 
                                        echo "</td>";
                                        echo "<td>";

                                        echo $row["books_issued_date"]; 
                                        echo "</td>";
                                         echo "</tr>";
                                        }
                                    ?>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

    </body>
    </html>    
<?php
include "footer.php";
?>