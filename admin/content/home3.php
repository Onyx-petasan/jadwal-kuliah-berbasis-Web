<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="home.php?page=home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box" id="gg">
          <div class="widget-content nopadding">
            <form action="model/input_m.php?action=today" method="POST" class="form-horizontal">
              <input name="id" type="hidden" class="id"/>
              <input name="id_matakuliah" type="hidden" class="id_matakuliah"/>
              
              <div class="row-fluid">
                <div class="span6">
                  <div class="control-group">
                    <label class="control-label">Matakuliah yang dipilih : </label>
                    <div class="controls">
                      <input name="matakuliah" type="text" class="form-control span11 matakuliah" readonly/>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row-fluid">
                <div class="span6">
                  <div class="control-group">
                      <label class="control-label">Pilih Keterangan : </label>
                      <div class="controls">
                        <select id="keterangan" name="keterangan" class="form-control keterangan" onchange="ket(this.value)">
                          <option>Pilih Keterangan</option>
                            <option value="Masuk">Masuk</option>
                            <option value="Kosong">Kosong</option>
                            <option value="Elearning">Elearning</option>
                            <option value="Absen Transit">Absen Transit</option>
                          </select>
                      </div>
                  </div>
                </div>
                <div class="span6">
                  <div class="control-group">
                      <label class="control-label">Pilih Ruangan : </label>
                      <div class="controls">
                        <select name="ruangan" class="form-control ruangan"> <!-- dua mumet -->
                          <option>Pilih Ruangan</option>
                          <?php
                            $kelas= mysql_query('SELECT * FROM tb_ruangan ORDER BY id_ruangan asc' );
                            while ($data = mysql_fetch_array ($kelas)){
                              echo '<option value="'.$data['id_ruangan'].'">'.$data['ruang'].'</option>';
                            }
                          ?>
                        </select>
                      </div>
                  </div>
                </div>
              </div>
              <div class="form-actions">
                <input name="submit" type="submit" id="action" value="Simpan" class="btn btn-success action"/>
                <input type="reset" value="Batal" class="btn btn-info reset" onclick="batal()" />
              </div>
            </form>
          </div>
        </div>
        <div class="widget-box">
          <div class="widget-title">
            <h5 style="float: none; text-align: center;">Jadwal Kuliah Hari Ini</h5>
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
                  <th>OPTION</th>
                </tr>
              </thead>
              <tbody>
                <?php 
                      date_default_timezone_set('Asia/Jakarta');
                      $tanggal = date('D-M-Y');
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

                        $kelas= mysql_query ('
                          SELECT
                            jd.*,
                            mk.*,
                            ds.*, 
                            pr.*
                          FROM 
                            tb_jadwalkuliah as jd,
                            tb_matakuliah as mk,
                            tb_dosen as ds,
                            tb_prodi as pr
                          WHERE
                            jd.id_matakuliah = mk.id_matakuliah
                            AND mk.id_dosen = ds.id_dosen
                            AND mk.id_prodi = pr.id_prodi
                            AND jd.hari = "'.$dayList[$day].'"
                            AND jd.kelas = "'.$class.'"
                          ') ;  

                        function inputJadwalHriIni($kelas){
                          mysql_query ('TRUNCATE TABLE tb_today');
                            // perintah untuk membaca dan mengambil data dalam bentuk array
                            while ($data = mysql_fetch_array($kelas)){ 
                              mysql_query ('
                                INSERT INTO 
                                  tb_today (id_matakuliah, tanggal) 
                                VALUES(
                                  "'.$data['id_matakuliah'].'",
                                  "'.date("Y-m-d").'"
                                )
                              '); 
                            }
                        }

                        $cekTgl = mysql_query('SELECT tanggal FROM tb_today GROUP BY tanggal');
                        while ($a = mysql_fetch_array($cekTgl)){
                          if(date("Y-m-d") != $a['tanggal']){
                            inputJadwalHriIni($kelas);
                          }
                        }
                        if(mysql_num_rows($cekTgl) <= 0){
                          inputJadwalHriIni($kelas);
                        };

                         $tampil= mysql_query ('
                          SELECT
                              *
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
                          LEFT JOIN tb_ruangan ON tr.id_ruangan = tb_ruangan.id_ruangan
                          ') ;
                        
                        while ($data = mysql_fetch_array ($tampil)){ 
                        ?>
                        <tr>
                          <td style="text-align: center;"><?=$data['jam']?></td>
                          <td style="text-align: center;"><?=$data['alias']?></td>
                          <td ><?=$data['matakuliah']?></td>
                          <td style="text-align: center;"><?=$data['ruang']?></td>
                          <td ><?=$data['dosen']?></td>
                          <td style="text-align: center;"><?=$data['keterangan']?></td>
                          <td style="text-align: center;"><a href="javascript:;" onclick="edit('<?=$data['id_today']?>','<?=$data['id_matakuliah']?>','<?=$data['matakuliah']?>');"><i class="icon-pencil" style="color:green;"></i></a> | <a href="javascript:;"><i class=  "icon-trash" style="color:red;" onclick="del('<?=$data['id_today']?>');"></i></a>
                          </td>
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

<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script>

<script type="text/javascript">
  $(document).ready(function(){
    $("#gg").hide();
  })


  function edit(id, id_matakuliah, matakuliah, keterangan, ruangan){
    $("#gg").show();
    $(".id").val(id);
    $(".id_matakuliah").val(id_matakuliah);
    $(".matakuliah").val(matakuliah);
    $(".action").val('Ubah');
    $('.keterangan').val(keterangan).trigger('change'); 
    $('.ruangan').val(ruangan).trigger('change'); 
  }

  function batal(){
    $(".action").val('Simpan');
    $('.keterangan').val('').trigger('change');
    $('.ruangan').val('').trigger('change');
  }

  function del(id){
    if(id != ''){
      var r = confirm("Apakah Anda Yakin akan menghapus ini ?");
      if (r == true) {
          window.location.href = 'model/input_m.php?action=today&del='+id;
      } 
    }
  }

  function ket(a){
    if(a == "Masuk"){
      $('#ruangan').select2('enable');
    }
    else{
      $('#ruangan').select2('disable');
    }
  }
</script>