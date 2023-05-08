<?php
include('../db/connect.php');
?>
<?php
if (isset($_POST['capnhatdonhang'])) {
    $xuly = $_POST['xuly'];
    $mahang = $_POST['mahang_xuly'];
    $sql_update_donhang = mysqli_query($con, "UPDATE tbl_donhang SET tinhtrang='$xuly' WHERE mahang='$mahang'");
    $sql_update_giaodich = mysqli_query($con, "UPDATE tbl_giaodich SET tinhtrangdon='$xuly' WHERE magiaodich='$mahang'");
}

?>
<?php
if (isset($_GET['xoadonhang'])) {
    $mahang = $_GET['xoadonhang'];
    $sql_delete = mysqli_query($con, "DELETE FROM tbl_donhang WHERE mahang='$mahang'");
    header('Location:xulydonhang.php');
}
if (isset($_GET['xacnhanhuy']) && isset($_GET['mahang'])) {
    $huydon = $_GET['xacnhanhuy'];
    $magiaodich = $_GET['mahang'];
} else {
    $huydon = '';
    $magiaodich = '';
}
$sql_update_donhang = mysqli_query($con, "UPDATE tbl_donhang SET huydon='$huydon' WHERE mahang='$magiaodich'");
$sql_update_giaodich = mysqli_query($con, "UPDATE tbl_giaodich SET huydon='$huydon' WHERE magiaodich='$magiaodich'");

?>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description" content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Ample Admin Lite Template by WrapPixel</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<style type="text/css">
        table,
        th,
        td {
            border: 1px solid #868585;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th,
        td {
            text-align: left;
            padding: 10px;
        }

        table tr:nth-child(odd) {
            background-color: #eee;
        }

        table tr:nth-child(even) {
            background-color: white;
        }

        table tr:nth-child(1) {
            background-color: skyblue;
        }

        table tr:hover {
            background-color: #b8cbec;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full" data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="dashboard.html">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!-- Dark Logo icon -->
                            <img src="plugins/images/logo-icon.png" alt="homepage" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="plugins/images/logo-text.png" alt="homepage" />
                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <ul class="navbar-nav d-none d-md-block d-lg-none">
                        <li class="nav-item">
                            <a class="nav-toggler nav-link waves-effect waves-light text-white" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav ms-auto d-flex align-items-center">

                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class=" in">
                            <form role="search" class="app-search d-none d-md-block me-3">
                                <input type="text" placeholder="Search..." class="form-control mt-0">
                                <a href="" class="active">
                                    <i class="fa fa-search"></i>
                                </a>
                            </form>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li>
                            <a class="profile-pic" href="#">
                                <img src="plugins/images/users/varun.jpg" alt="user-img" width="36" class="img-circle"><span class="text-white font-medium">Admin</span></a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li class="sidebar-item pt-2">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="dashboard.php" aria-expanded="false">
                                <i class="far fa-clock" aria-hidden="true"></i>
                                <span class="hide-menu">Dashboard</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="xulydonhang.php" aria-expanded="false">
                                <i class="fas fa-ambulance" aria-hidden="true"></i>
                                <span class="hide-menu">Đơn hàng</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="danhmuc.php" aria-expanded="false">
                                <i class="fas fa-align-justify" aria-hidden="true"></i>
                                <span class="hide-menu">Quản lý danh mục</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="xulydanhmucbaiviet.php" aria-expanded="false">
                                <i class="fas fa-bars" aria-hidden="true"></i>
                                <span class="hide-menu">Danh mục bài viết</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="xulybaiviet.php" aria-expanded="false">
                                <i class="fas fa-clipboard-list" aria-hidden="true"></i>
                                <span class="hide-menu">Quản lý bài viết</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="xulysanpham.php" aria-expanded="false">
                                <i class="fas fa-boxes" aria-hidden="true"></i>
                                <span class="hide-menu">Quản lý sản phẩm</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="xulykhachhang.php" aria-expanded="false">
                                <i class="fas fa-user" aria-hidden="true"></i>
                                <span class="hide-menu">Khách hàng</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="chat.php" aria-expanded="false">
                                <i class=" fab fa-rocketchat" aria-hidden="true"></i>
                                <span class="hide-menu">Chat</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="fontawesome.html" aria-expanded="false">
                                <i class="fa fa-font" aria-hidden="true"></i>
                                <span class="hide-menu">Icon</span>
                            </a>
                        </li>



                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="min-height: 250px;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Đơn hàng</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">

                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">
                            <h3 class="box-title">Đơn hàng</h3>
                            <div class="container-fluid">
                                <div class="row">
                                    <?php
                                    if (isset($_GET['quanly']) == 'xemdonhang') {
                                        $mahang = $_GET['mahang'];
                                        $sql_chitiet = mysqli_query($con, "SELECT * FROM tbl_donhang,tbl_sanpham WHERE tbl_donhang.sanpham_id=tbl_sanpham.sanpham_id AND tbl_donhang.mahang='$mahang'");
                                    ?>
                                        <div class="col-md-7">
                                            <p>Xem chi tiết đơn hàng</p>
                                            <form action="" method="POST">
                                                <table class="table table-bordered ">
                                                    <tr>
                                                        <th>Thứ tự</th>
                                                        <th>Mã hàng</th>
                                                        <th>Tên sản phẩm</th>
                                                        <th>Số lượng</th>
                                                        <th>Giá</th>
                                                        <th>Tổng tiền</th>
                                                        <th>Ngày đặt</th>


                                                        <!-- <th>Quản lý</th> -->
                                                    </tr>
                                                    <?php
                                                    $i = 0;
                                                    while ($row_donhang = mysqli_fetch_array($sql_chitiet)) {
                                                        $i++;
                                                    ?>
                                                        <tr>
                                                            <td><?php echo $i; ?></td>
                                                            <td><?php echo $row_donhang['mahang']; ?></td>

                                                            <td><?php echo $row_donhang['sanpham_name']; ?></td>
                                                            <td><?php echo $row_donhang['soluong']; ?></td>
                                                            <td><?php echo $row_donhang['sanpham_giakhuyenmai']; ?></td>
                                                            <td><?php echo number_format($row_donhang['soluong'] * $row_donhang['sanpham_giakhuyenmai']) . 'vnđ'; ?></td>

                                                            <td><?php echo $row_donhang['ngaythang'] ?></td>
                                                            <input type="hidden" name="mahang_xuly" value="<?php echo $row_donhang['mahang'] ?>">

                                                            <!-- <td><a href="?xoa=<?php echo $row_donhang['donhang_id'] ?>">Xóa</a> || <a href="?quanly=xemdonhang&mahang=<?php echo $row_donhang['mahang'] ?>">Xem đơn hàng</a></td> -->
                                                        </tr>
                                                    <?php
                                                    }
                                                    ?>
                                                </table>

                                                <select class="form-control" name="xuly">
                                                    <option value="1">Đã xử lý | Giao hàng</option>
                                                    <option value="0">Chưa xử lý</option>
                                                </select><br>

                                                <input type="submit" value="Cập nhật đơn hàng" name="capnhatdonhang" class="btn btn-success">
                                            </form>
                                        </div>
                                    <?php
                                    } else {
                                    ?>


                                    <?php
                                    }

                                    ?>
                                    <div class="col-md-5">
                                        <h4>Liệt kê đơn hàng</h4>
                                        <?php
                                        $sql_select = mysqli_query($con, "SELECT * FROM tbl_sanpham,tbl_khachhang,tbl_donhang WHERE tbl_donhang.sanpham_id=tbl_sanpham.sanpham_id AND tbl_donhang.khachhang_id=tbl_khachhang.khachhang_id GROUP BY mahang ");
                                        ?>
                                        <table class="table table-bordered ">
                                            <tr>
                                                <th>Thứ tự</th>
                                                <th>Mã hàng</th>
                                                <th>Tình trạng </th>
                                                <th>Tên khách </th>
                                                <th>Ngày đặt</th>
                                                <th>Hủy đơn</th>
                                                <th>Quản lý</th>
                                            </tr>
                                            <?php
                                            $i = 0;
                                            while ($row_donhang = mysqli_fetch_array($sql_select)) {
                                                $i++;
                                            ?>
                                                <tr>
                                                    <td><?php echo $i; ?></td>

                                                    <td><?php echo $row_donhang['mahang']; ?></td>
                                                    <td><?php
                                                        if ($row_donhang['tinhtrang'] == 0) {
                                                            echo 'Chưa xử lý';
                                                        } else {
                                                            echo 'Đã xử lý';
                                                        }
                                                        ?></td>
                                                    <td><?php echo $row_donhang['name']; ?></td>

                                                    <td><?php echo $row_donhang['ngaythang'] ?></td>

                                                    <td><?php if ($row_donhang['huydon'] == 0) {
                                                        } elseif ($row_donhang['huydon'] == 1) {
                                                            echo '<a href="xulydonhang.php?quanly=xemdonhang&mahang=' . $row_donhang['mahang'] . '&xacnhanhuy=2">Xác nhận hủy đơn</a>';
                                                        } else {
                                                            echo 'Đã hủy';
                                                        }
                                                        ?></td>

                                                    <td><a href="?xoadonhang=<?php echo $row_donhang['mahang'] ?>">Xóa</a> || <a href="?quanly=xemdonhang&mahang=<?php echo $row_donhang['mahang'] ?>">Xem </a></td>
                                                </tr>
                                            <?php
                                            }
                                            ?>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center"> 2021 © Ample Admin brought to you by <a href="https://www.wrappixel.com/">wrappixel.com</a>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.js"></script>
</body>

</html>