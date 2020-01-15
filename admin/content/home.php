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
                <div class="span6">
                  <div class="control-group">
                      <label class="control-label">Pilih Status : </label>
                      <div class="controls">
                        <select id="status" name="status" class="form-control status" onchange="ket(this.value)">
                          <option value="1">Pilih Status</option>
                          <?php
                            $kelas= mysql_query('SELECT * FROM tb_status ORDER BY id_status asc' );
                            while ($data = mysql_fetch_array ($kelas)){
                              echo '<option value="'.$data['id_status'].'">'.$data['status'].'</option>';
                            }
                          ?>
                        </select>
                      </div>
                  </div>
                </div>
              </div>
              <div class="row-fluid">
                <div class="span6">
                  <div class="control-group">
                      <label class="control-label">Pilih Ruangan : </label>
                      <div class="controls">
                        <select name="ruangan" class="form-control ruangan" onchange="ruang(this.value)"> <!-- dua mumet -->
                          <option>Pilih Ruangan</option>
                          <?php
                            $kelas= mysql_query('SELECT * FROM tb_ruangan ORDER BY id_ruangan asc' );
                            while ($data = mysql_fetch_array ($kelas)){
                              echo '<option value="'.$data['id_ruangan'].'">'.$data['ruang'].'</option>';
                            }
                          ?>
                        </select>
                        <p style="color: red;" class="ket_ruang"></p>
                      </div>
                  </div>
                </div>
                <div class="span6">
                  <div class="control-group">
                    <label class="control-label">Keterangan : </label>
                      <div class="controls">
                        <textarea name="keterangan" class="form-control keterangan"></textarea>
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
            <h5 style="float: none; text-align: center;">Jadwal Kuliah</h5>
          </div>
          <div class="widget-content nopadding">
              <table class="table table-bordered data-table">
                <thead>
                <tr>
                  <th>JAM</th>
                  <th>PRODI</th>
                  <th>MATAKULIAH</th>
                  <th>DOSEN</th>
                  <th>STATUS</th>
                  <th>RUANGAN</th>
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
                            (DATE_FORMAT(jd.jam,"%H") + mk.sks) as non_aktif,
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
                                  tb_today (id_matakuliah, non_aktif, tanggal) 
                                VALUES(
                                  "'.$data['id_matakuliah'].'",
                                  "'.$data['non_aktif'].'",
                                  "'.date("Y-m-d").'"
                                )
                              ');
                              //koding hapus disini 
                              /*$lama = $data['non_aktif']; // lama data adalah 3 hari
                              // proses penghapusan data
                              $query = "DELETE FROM tb_today
                              WHERE non_aktif < DATE_FORMAT(NOW(),'%H')";
                              $hasil = mysql_query($query);*/
                            }
                        }

                        
                        $hapus = mysql_query('DELETE FROM tb_today WHERE non_aktif <= '.date("G"));
                        
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
                          ') ;
                        
                        while ($data = mysql_fetch_array ($tampil)){ 
                        ?>
                        <tr>
                          <td style="text-align: center;"><?=$data['jam']?></td>
                          <td style="text-align: center;"><?=$data['alias']?></td>
                          <td ><?=$data['matakuliah']?></td>
                          <td ><?=$data['dosen']?></td>
                          <td ><?=$data['status']?></td>
                          <td style="text-align: center;"><?=$data['ruang']?></td>
                          <td style="text-align: center;"><?=$data['keterangan']?></td>
                          <td style="text-align: center;"><a href="javascript:;" onclick="edit('<?=$data['id_today']?>','<?=$data['id_matakuliah']?>','<?=$data['matakuliah']?>','<?=$data['id_status']?>','<?=$data['id_ruangan']?>','<?=$data['keterangan']?>',);"><i class="icon-pencil" style="color:green;"></i></a> | <a href="javascript:;"><i class=  "icon-trash" style="color:red;" onclick="del('<?=$data['id_today']?>');"></i></a>
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

  
  function ruang(dt){
    if(dt != 'Pilih Ruangan'){
      if(dt == ''){
        $('.ket_ruang').html('');
      }
      <?php
      $ruang= mysql_query ('SELECT id_ruangan FROM tb_today');
        while ($data = mysql_fetch_array($ruang)){?>
          else if(dt == '<?=$data['id_ruangan']?>'){
            // alert('Rungan sudah digunakan');
            $('.ket_ruang').html('Ruangan sudah digunakan');
          }
      <?php  } ?>
      else{
        $('.ket_ruang').html('');
      }
    }
  }

  function edit(id, id_matakuliah, matakuliah, status, ruangan, keterangan){
    $("#gg").show();
    $(".id").val(id);
    $(".id_matakuliah").val(id_matakuliah);
    $(".matakuliah").val(matakuliah);
    $(".action").val('Ubah');
    $('.status').val(status).trigger('change'); 
    $('.ruangan').val(ruangan).trigger('change'); 
    $('.keterangan').val(keterangan);
  }

  function batal(){
    $(".action").val('Simpan');
    $('.status').val('').trigger('change');
    $('.ruangan').val('').trigger('change');
    $('.keterangan').val('').trigger('change');
    
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
    if(a == "2"){
      $('#ruangan').select2('enable');
    }
    else{
      $('#ruangan').select2('disable');
    }
  }
</script>