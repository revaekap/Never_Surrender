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

    <link rel="stylesheet" href="style.css">

</head>

<body id="page-top">

    <style>
        .tombolswitch {
            margin-left: 800px;
        }
    </style>
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
                        <a class="collapse-item active bold" href="./keuangan-1.php">Keuangan</a>
                        <a class="collapse-item" href="./internal.php">Internal</a>
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
                            <h6 class="m-0 font-weight-bold text-primary">Jumlah Transaksi Penjualan</h6>
                        </div>
                        <div class="card-body">
                            <div class="tombolswitch">
                                <a class="btn btn-secondary" href="./keuangan-1.php" role="button">Hari</a>
                                <a class="btn btn-primary active" href="./keuangan-2.php" role="button">Minggu</a>
                            </div>
                            <div id="keuangan-2"></div>
                        </div>
                    </div>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tabel Pendapatan</h6>
                        </div>
                        <div class="card-body">

                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">Tanggal</th>
                                        <th scope="col">Total</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    include 'koneksi.php';
                                    $i = 7;
                                    $p = 1;
                                    $l = 0;
                                    $s = 0;


                                    while ($i <= 30) {


                                        while ($p <= $i) {

                                            if ($p < 10) {

                                                $sql = "SELECT sum(total) as profit FROM `transaksi` WHERE tgltr = \"2020-06-0$p\"";
                                            } else {

                                                $sql = "SELECT sum(total) as profit FROM `transaksi` WHERE tgltr = \"2020-06-$p\"";
                                            }

                                            $pepe = mysqli_query($host, $sql);

                                            while ($row = mysqli_fetch_row($pepe)) {

                                                $l = $l + $row[0];
                                            }
                                            $p = $p + 1;
                                        }
                                        $total[] = floatval($l);

                                        $t = $i - 6;

                                        if ($l >= 300000) {
                                            $q = "Tercapai";
                                        } else {
                                            $q = "Tidak Tercapai";
                                        }

                                        if ($t < 10 & $i < 10) {
                                            echo "<tr><td>0$t/06/2020 - 0$i/06/2020</td>";
                                        } else if ($t < 10) {
                                            echo "<tr><td>0$t/06/2020 - $i/06/2020</td>";
                                        } else {
                                            echo "<tr><td>$t/06/2020 - $i/06/2020</td>";
                                        }
                                        echo "<td>Rp $l,00</td>";
                                        echo "<td>$q</td></tr>";



                                        $i = $i + 7;

                                        $s = $s + 1;
                                        $l = 0;
                                    }

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
        Highcharts.chart('keuangan-2', {
            chart: {
                type: 'areaspline'
            },
            title: {
                text: 'Transaksi Penjualan PerMinggu'
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                verticalAlign: 'top',
                x: 120,
                y: 100,
                floating: true,
                borderWidth: 1,
                backgroundColor: Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF'
            },
            xAxis: {
                categories: [
                    'Minggu Ke 1',
                    'Minggu Ke 2',
                    'Minggu Ke 3',
                    'Minggu Ke 4'
                ]
                // plotBands: [{ // visualize the weekend
                //     from: 4.5,
                //     to: 6.5,
                //     color: 'rgba(68, 170, 213, .2)'
                // }]
            },
            yAxis: {
                title: {
                    text: 'Penjualan'
                }
            },
            tooltip: {
                shared: true,
                // valueSuffix: 'Penjualan'
            },
            credits: {
                enabled: false
            },
            plotOptions: {
                areaspline: {
                    fillOpacity: 0.5
                }
            },
            series: [{
                name: 'Penjualan',
                data: <?php echo json_encode($total); ?>
            }, {
                name: 'Batas',
                data: [300000, 300000, 300000, 300000]
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