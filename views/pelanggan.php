<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="BIKU.CO">

    <title>BIKU.CO</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>

    <!-- Custom fonts for this template-->
    <link href="../assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="navbar-brand" href="../index.php">
                <center>
                    <img src="../img/biku.png" width="100" class=" d-inline-block align-top" alt="">
                </center>
            </a>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            <!-- Nav Item - Beranda -->
            <li class="nav-item">
                <a class="nav-link" href="../index.php">
                    <i class="fas fa-home"></i>
                    <span>Beranda</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">
                Menu
            </div>
            <!-- Nav Item - Dahsboard Collapse -->
            <li class="nav-item active">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-compass"></i>
                    <span>Dashboard</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Menu Dashboard</h6>
                        <a class="collapse-item active bold" href="./pelanggan.php">Pelanggan</a>
                        <a class="collapse-item" href="./keuangan-1.php">Keuangan</a>
                        <a class="collapse-item " href="./internal.php">Internal</a>
                        <a class="collapse-item" href="./tumbuh-1.php">Tumbuh & Berkembang</a>
                    </div>
                </div>
            </li>
            <!-- Nav Item - Daftar Menu -->
            <li class="nav-item">
                <a class="nav-link" href="./daftar-menu.php">
                    <i class="fas fa-clipboard-list"></i>
                    <span>Daftar Menu</span></a>
            </li>
            <!-- Nav Item - Transaksi -->
            <li class="nav-item">
                <a class="nav-link" href="./transaksi.php">
                    <i class="fas fa-money-bill-wave-alt"></i>
                    <span>Transaksi</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                                <span class="ml-2 d-none d-lg-inline text-gray-600 small">Mimin BIKU</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->
                <!-- Begin Page Content -->

                <!-- /.container-fluid -->
                <div class="container-fluid">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3 px-3">
                            <h6 class="m-0 font-weight-bold text-primary">Pelanggan</h6>
                        </div>
                        <div class="card-body">
                            <figure class="highcharts-figure">
                                <div id="pelanggan"></div>

                                <table id="datatable">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Pelanggan Yang Membeli</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                        include 'koneksi.php';
                                        $i = 0;
                                        $p = 0;

                                        for ($k = 0; $k <= 6; $k++) {

                                            $a = $k +  22;
                                            $sql = "SELECT count(cust) FROM transaksi WHERE tgltr=\"2020-06-$a\"";
                                            $pepe = mysqli_query($host, $sql);
                                            while ($row = mysqli_fetch_row($pepe)) {
                                                $SESSION['jumlah'][$k] = $row[0];

                                                if ($SESSION['jumlah'][$k] > $i) {
                                                    $i = $SESSION['jumlah'][$k];
                                                    $p = $k;
                                                }
                                            }
                                        }

                                        if ($p == 0) {
                                            $d = "senin";
                                        } else if ($p == 1) {
                                            $d = "selasa";
                                        } else if ($p == 2) {
                                            $d = "rabu";
                                        } else if ($p == 3) {
                                            $d = "kamis";
                                        } else if ($p == 4) {
                                            $d = "jum'at";
                                        } else if ($p == 5) {
                                            $d = "sabtu";
                                        } else if ($p == 6) {
                                            $d = "minggu";
                                        }

                                        echo "<tr> <th>Senin</th>";
                                        echo "<td>";
                                        echo $SESSION['jumlah'][0];
                                        echo "</td> </tr>";
                                        echo "<tr> <th>Selasa</th>";
                                        echo "<td>";
                                        echo $SESSION['jumlah'][1];
                                        echo "</td> </tr>";
                                        echo "<tr> <th>Rabu</th>";
                                        echo "<td>";
                                        echo $SESSION['jumlah'][2];
                                        echo "</td> </tr>";
                                        echo "<tr> <th>Kamis</th>";
                                        echo "<td>";
                                        echo $SESSION['jumlah'][3];
                                        echo "</td> </tr>";
                                        echo "<tr> <th>Jum'at</th>";
                                        echo "<td>";
                                        echo $SESSION['jumlah'][4];
                                        echo "</td> </tr>";
                                        echo "<tr> <th>Sabtu</th>";
                                        echo "<td>";
                                        echo $SESSION['jumlah'][5];
                                        echo "</td> </tr>";
                                        echo "<tr> <th>Minggu</th>";
                                        echo "<td>";
                                        echo $SESSION['jumlah'][6];
                                        echo "</td> </tr>";
                                        echo "";

                                        ?>

                                    </tbody>
                                </table>
                            </figure>
                            <label class="mt-4">
                                <p>
                                    <i>Ket : Banyaknya Pelanggan Yang Membeli. <br>
                                        Dengan Grafik tersebut, terlihat bahwa pada minggu ke 4 di bulan Juni terdapat
                                        pelanggan paling tinggi di hari <?php echo $d ?> </i>
                                </p>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of Main Content -->
            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; BIKU.CO 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>


    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script type="text/javascript">
        Highcharts.chart('pelanggan', {
            data: {
                table: 'datatable'
            },
            chart: {
                type: 'column'
            },
            title: {
                text: 'Data pelanggan dalam satu minggu'
            },
            yAxis: {
                allowDecimals: false,
                title: {
                    text: 'Jumlah Yang Membeli'
                }
            },
            tooltip: {
                formatter: function() {
                    return '<b>' + this.series.name + '</b><br/>' +
                        this.point.y + ' ' + this.point.name.toLowerCase();
                }
            }
        });
    </script>


    <!-- Bootstrap core JavaScript-->
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="../assets/js/sb-admin-2.min.js"></script>
    <!-- Page level plugins -->
    <script src="../assets/vendor/chart.js/Chart.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="../assets/js/demo/chart-area-demo.js"></script>
    <script src="../assets/js/demo/chart-pie-demo.js"></script>

</body>

</html>