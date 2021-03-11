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
                        <a class="collapse-item" href="./pelanggan.php">Pelanggan</a>
                        <a class="collapse-item" href="./keuangan-1.php">Keuangan</a>
                        <a class="collapse-item active bold" href="./internal.php">Internal</a>
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
                            <h6 class="m-0 font-weight-bold text-primary">Internal</h6>
                        </div>
                        <div class="card-body">
                            <figure class="highcharts-figure">
                                <div id="internal"></div>
                                <table id="datatable">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Pelanggan Yang Membeli</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </figure>
                            <label>
                                <p>
                                    <i>Ket : Produk tidak laku dalam waktu satu minggu yang jumlah pembelian kurang dari
                                        3 </i>
                                </p>
                            </label>
                        </div>
                    </div>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tabel Paket Makanan dan Minuman</h6>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">Paket</th>
                                        <th scope="col">Makanan</th>
                                        <th scope="col">Minuman</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    include 'koneksi.php';

                                    $i = 0;
                                    $p = 1;

                                    $sql = "SELECT nama FROM tblmakan";
                                    $pepe = mysqli_query($host, $sql);

                                    while ($row = mysqli_fetch_row($pepe)) {
                                        $SESSION['nama'][$i] = $row[0];
                                        $i = $i + 1;
                                    }
                                    $t = $i;

                                    $sql = "SELECT nama FROM tblminum";
                                    $pepe = mysqli_query($host, $sql);

                                    while ($row = mysqli_fetch_row($pepe)) {
                                        $SESSION['nama'][$i] = $row[0];
                                        $i = $i + 1;
                                    }

                                    $i = $i - 1;

                                    for ($b = 0; $b <= $i; $b++) {

                                        $c = $SESSION['nama'][$b];

                                        $sql = "SELECT sum(jumlah) FROM tbljumlahpembelian WHERE tanggal between '2020-06-22' and '2020-06-28' and nama = '$c'";
                                        $pepe = mysqli_query($host, $sql);

                                        while ($row = mysqli_fetch_row($pepe)) {
                                            $SESSION['hasil'][$b] = $row[0];
                                            $SESSION['nama'][$b];
                                            $SESSION['hasil'][$b];
                                            if ($SESSION['hasil'][$b] < 3) {

                                                echo "<tr><td>$p</td>";
                                                if ($b <= $t) {
                                                    echo "<td>" . $SESSION['nama'][$b] . "</td>";
                                                    echo "<td><center>-</center></td>";
                                                } else {
                                                    echo "<td><center>-</center></td>";
                                                    echo "<td>" . $SESSION['nama'][$b] . "</td>";
                                                }

                                                $p = $p + 1;
                                            }
                                        }
                                    }
                                    echo "<br/>";
                                    // echo json_encode($aa);
                                    ?>
                                </tbody>
                            </table>
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
    <script src="https://code.highcharts.com/modules/series-label.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script type="text/javascript">
        // Build the chart
        Highcharts.chart('internal', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Internal'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            accessibility: {
                point: {
                    valueSuffix: '%'
                }
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                name: 'Internal',
                colorByPoint: true,
                data: [{
                    name: 'Jus Lemon',
                    y: 2
                }, {
                    name: 'Rostea Milo',
                    y: 2
                }, {
                    name: 'Rostea Choco Oreo',
                    y: 2
                }, {
                    name: 'Rostea Bubble',
                    y: 2
                }]
            }]
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