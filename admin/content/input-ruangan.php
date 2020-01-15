<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="home.php?page=home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="#" class="current">Ruangan</a> </div>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span6"> 
      	<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
            <h5>Ruangan</h5>
          </div>
          <div class="widget-content nopadding">
            <form action="model/input_m.php?action=ruangan" method="post" class="form-horizontal">

            <input name="id" type="hidden" class="id"/>
              <div class="control-group">
                <label class="control-label">Nama Ruangan :</label>
                <div class="controls">
                  <input name="ruang" type="text" class="span11 ruang" placeholder="nama ruangan" autofocus/>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Pilih Lantai</label>
                <div class="controls lantai">
                  <select name="lantai" class="form-control lantai">
                    <option>Pilih Lantai</option>
                    <option>Lantai 1</option>
                    <option>Lantai 2</option>
                    <option>Lantai 3</option>
                    <option>Lantai 4</option>
                    <option>Lantai Dasar</option>
                    <option>Basement</option>
                  </select>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Kapasitas :</label>
                <div class="controls">
                  <input name="kapasitas" type="text" class="span11 kapasitas" placeholder="kapasitas Orang" autofocus/>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Pilih Fungsi</label>
                <div class="controls">
                  <select name="fungsi" class="form-control fungsi">
                    <option>Pilih Fungsi</option>
                    <option>Ruang Teori</option>
                    <option>Ruang Praktikum</option>
                    <option>Ruang Aula</option>
                  </select>
                </div>
              </div>
              <div class="form-actions">
                <input name="submit" type="submit" value="Simpan" class="btn btn-success action"/>
                <input type="reset" value="Batal" class="btn btn-info reset" onclick="batal()" />
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="span6">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>Data Ruangan</h5>
          </div>
          <div class="widget-content nopadding">
              <table class="table table-bordered data-table">
                <thead>
                  <tr>
                    <th>NAMA RUANGAN</th>
                    <th>LANTAI</th>
                    <th>KAPASITAS</th>
                    <th>FUNGSI</th>
                    <th>OPSI</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    // Perintah untuk menampilkan data
                    $ruang= mysql_query ('SELECT * FROM tb_ruangan') ;  //menampikan SEMUA data dari tabel Matakuliah
                                                    
                    // perintah untuk membaca dan mengambil data dalam bentuk array
                    while ($data = mysql_fetch_array ($ruang)){ ?>
                      <tr>
                        <td><?=$data['ruang']?></td>
                        <td><?=$data['lantai']?></td>
                        <td><?=$data['kapasitas']?></td>
                        <td><?=$data['fungsi']?></td>
                        <td style="text-align: center;">
                          <a href="javascript:;" onclick="edit('<?=$data['id_ruangan']?>','<?=$data['ruang']?>','<?=$data['lantai']?>','<?=$data['kapasitas']?>','<?=$data['fungsi']?>');"><i class="icon-pencil" style="color:green;"></i></a> | <a href="javascript:;"><i class="icon-trash" style="color:red;" onclick="del('<?=$data['id_ruangan']?>');"></i></a>
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
  function edit(id,ruang, lantai, kapasitas, fungsi){
    $(".id").val(id);
    $(".ruang").val(ruang);
    $('.lantai').val(lantai).trigger('change');
    $(".kapasitas").val(kapasitas);
    $('.fungsi').val(fungsi).trigger('change'); 
    $(".action").val('Ubah');
  }

  function batal(){
    $(".action").val('Simpan');
    $('.lantai').val('').trigger('change');
    $('.fungsi').val('').trigger('change');
  }

  function del(id){
    if(id != ''){
      var r = confirm("Apakah Anda Yakin akan menghapus ini ?");
      if (r == true) {
          window.location.href = 'model/input_m.php?action=ruangan&del='+id;
      } 
    }
  }
</script>