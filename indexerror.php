<!DOCTYPE html>
<html lang="en">
<head>
    <title>Jadwal Kuliah</title>
    <meta charset="UTF-8" />
    <meta http-equiv=refresh content=1;url=index.php>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="admin/css/bootstrap.min.css" />
    <link rel="stylesheet" href="admin/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="admin/css/fullcalendar.css" />
    <link rel="stylesheet" href="admin/css/matrix-style.css" />
    <link rel="stylesheet" href="admin/css/matrix-media.css" />
    <link rel="stylesheet" href="admin/css/jquery.gritter.css" />
    <link rel="stylesheet" href="admin/css/colorpicker.css" />
    <link rel="stylesheet" href="admin/css/datepicker.css" />
    <link rel="stylesheet" href="admin/css/uniform.css" />
    <link rel="stylesheet" href="admin/css/select2.css" />
    <link rel="stylesheet" href="admin/css/bootstrap-wysihtml5.css" />
    <link href="admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='admin/http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    
    
        <?php 
        include 'admin/koneksi.php';
        ?>
        <!-- untuk mengatur waktu -->
                <!--
                <?php
                    $tanggal= mktime(date("m"),date("d"),date("Y"));

                    echo "Tanggal : <b>".date("d-M-Y", $tanggal)."</b>";

                    date_default_timezone_set('Asia/Jakarta');

                    $jam=date("H:i:s");

                    echo "| Pukul : <b>". $jam." "."</b>";

                    $a = date ("H");
                    if (($a>=4) && ($a<=11)){
                        echo "<b>, Selamat Pagi !!</b>";
                    }else if(($a>11) && ($a<=10)){
                            echo ", Selamat Pagi !!";
                    }else if (($a>11) && ($a<=17)){
                                echo ", Selamat Siang !!";
                    }else { 
                                echo ", <b> Selamat Malam </b>";
                    }
                ?>  -->    
      
    </head>

        <body>
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span12">
                    <?php
                                                $tanggal= mktime(date("m"),date("d"),date("Y"));
                                                    echo "Tanggal : <b>".date("d-M-Y", $tanggal)."</b> ";
                                                    date_default_timezone_set('Asia/Jakarta');
                                                $jam=date("H:i:s");
                                                    echo "| Pukul : <b>". $jam." "."</b>";
                                                $a = date ("H");
                                                    if (($a>=4) && ($a<=9)){
                                                        echo "<b>, Selamat Pagi !!</b>";
                                                    }
                                                    else if(($a>9) && ($a<=15)){
                                                        echo "<b>, Selamat Siang !!</b>";
                                                    }
                                                    else if (($a>15) && ($a<=18)){
                                                        echo "<b>, Selamat Sore !!</b>";
                                                    }
                                                    else { echo ", <b> Selamat Malam </b>";
                                                }
                                                    ?>
                        <div class="widget-box">
                            <div class="widget-title">
                                <h1 style="float: none; text-align: center;">Jadwal Kuliah Hari Ini</h1>
                            </div>
                            <div class="widget-content nopadding">
                              <table class="table table-bordered data-table">
                                <thead>
                                    <tr>
                                      <th>JAM</th>
                                      <th>PRODI</th>
                                      <th>MATAKULIAH</th>
                                      <th>RUANGAN</th>
                                      <th>DOSEN</th>
                                      <th>KETERANGAN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    date_default_timezone_set('Asia/Jakarta');
                                    $day = date('D');
                                    $dayList = array(
                                    'Sun' => 'Minggu',
                                    'Mon' => 'Senin',
                                    'Tue' => 'Selasa',
                                    'Wed' => 'Rabu',
                                    'Thu' => 'Kamis',
                                    'Fri' => 'Jumat',
                                    'Sat' => 'Sabtu'
                                    );

                                    // echo date('H');
                                    $jam = date('H');
                                    if(($jam > 0) && ($jam < 16)){
                                    $class = 'A';
                                    }
                                    else{
                                    $class = 'B';
                                    }
                                        // Perintah untuk menampilkan data
                                        $kelas = mysql_query('
                                            SELECT
                                                *
                                            FROM 
                                            (SELECT
                                                td.*,
                                                mk.matakuliah,
                                                ds.dosen,
                                                tp.alias,
                                                tj.jam
                                            FROM
                                                tb_today td,
                                                tb_matakuliah mk,
                                                tb_dosen ds,
                                                tb_prodi tp,
                                                tb_jadwalkuliah tj
                                            WHERE
                                                td.id_matakuliah = mk.id_matakuliah
                                                AND mk.id_dosen = ds.id_dosen
                                                AND mk.id_prodi = tp.id_prodi
                                                AND mk.id_matakuliah = tj.id_matakuliah
                                                AND tj.kelas = "'.$class.'") as tr
                                            LEFT JOIN tb_ruangan ON tr.id_ruangan = tb_ruangan.id_ruangan
                                            ');

                                         //menampikan SEMUA data dari tabel Matakuliah

                                        // perintah untuk membaca dan mengambil data dalam bentuk array
                                        while ($data = mysql_fetch_array ($kelas)){ ?>
                                        <tr>
                                          <td style="text-align: center;"><?=$data['jam']?></td>
                                          <td style="text-align: center;"><?=$data['alias']?></td>
                                          <td ><?=$data['matakuliah']?></td>
                                          <td style="text-align: center;"><?=$data['ruang']?></td>
                                          <td ><?=$data['dosen']?></td>
                                          <td style="text-align: center;"><?=$data['keterangan']?></td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                              </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php 
        include 'admin/page/footer.php';
        ?> 
    </body>
</html>

<script src="admin/js/jquery.dataTables.min.js"></script> 
<script src="admin/js/matrix.tables.js"></script>