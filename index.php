<!DOCTYPE html>
<html lang="en">
<head>
    <title>Jadwal Kuliah</title>
    <meta charset="UTF-8" />
    <meta http-equiv=refresh content=1;url=index.php>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <?php 
      include 'admin/koneksi.php';
      include 'tabel.php';
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
        ?>  
      -->    
</head>
<body>
  <div class="container-fluid">
    <div class="panel panel-default">
      <div class="panel-body">
        <div class='row'>
          <div class='col-sm-12'>
            <div class="panel panel-primary">
              <div class="panel-heading" style="text-align: center;"><i class='fa fa-file-text-o fa-fw'></i><h1>Jadwal Kuliah Universitas Janabadra</h1></div>
                <div class="panel-heading" style="text-align: center;"><i class='fa fa-file-text-o fa-fw'></i>
                  <?php
                    $tanggal= mktime(date("m"),date("d"),date("Y"));
                    echo "Tanggal : <b>".date("d-M-Y", $tanggal)."</b> ";
                    date_default_timezone_set('Asia/Jakarta');
                    $jam=date("H:i:s");
                    echo "| Jam : <b>". $jam." "."</b>";
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
                </div>
                <div class="panel-body">
                  <div style="overflow-x:auto;">
                    <table cellspacing='0' align="center">
                      <thead>
                        <tr>
                          <th>JAM</th>
                          <th>PRODI</th>
                          <th>MATAKULIAH</th>
                          <th>DOSEN</th>
                          <th>STATUS</th>
                          <th>RUANGAN</th>
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

                            $set = mysql_query('
                              SELECT *
                              FROM 
                                  tb_today
                              LEFT JOIN 
                                  tb_ruangan
                              ON 
                                  tb_today.id_ruangan = tb_ruangan.id_ruangan ORDER BY id_today 
                            ');
                            $ru = mysql_fetch_array($set);

                            // Perintah untuk menampilkan data
                            // $tampil = mysql_query('
                            //   SELECT tb_today.id_status, tb_status.status
                            //   FROM tb_today
                            //   LEFT JOIN tb_status 
                            //   ON tb_today.id_status = tb_status.id_status
                            //   ORDER BY id_today
                            // ') ;
                            // $status = mysql_fetch_array($tampil);

                            // Perintah untuk menampilkan data
                            $kelas = mysql_query('
                              SELECT
                              *
                          FROM
                          (SELECT
                              matakuliah,
                              dosen,
                              alias,
                              jam,
                              kelas,
                              ruang,
                              keterangan,
                              id_status
                          FROM 
                          (
                              SELECT
                              td.*,
                              mk.matakuliah,
                              ds.dosen,
                              tp.alias,
                              tj.jam,
                              tj.kelas
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
                              AND tj.kelas = "'.$class.'" GROUP BY td.id_today) as tr
                          LEFT JOIN tb_ruangan ON tr.id_ruangan = tb_ruangan.id_ruangan) as ts
                          LEFT JOIN tb_status ON ts.id_status = tb_status.id_status
                          ORDER BY jam asc
                            ') ;
                            
                            // perintah untuk membaca dan mengambil data dalam bentuk array
                            while ($data = mysql_fetch_array ($kelas)){ ?>

                              <tr>
                                <td style="text-align: center;"><?=$data['jam']?></td>
                                <td style="text-align: center;"><?=$data['alias']?></td>
                                <td style="text-align: left;"><?=$data['matakuliah']?></td>
                                <td style="text-align: left;"><?=$data['dosen']?></td>
                                <td style="text-align: center;"><?=$data['status']?></td>
                                <td style="text-align: center;"><?=$data['ruang']?></td>
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