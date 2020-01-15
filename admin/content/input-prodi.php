<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="home.php?page=home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="#" class="current">Prodi</a> </div>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
    <div class="span6"> 
    	<div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Prodi</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="model/input_m.php?action=prodi" method="POST" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">ID PRODI :</label>
              <div class="controls">
                <input name="id" type="text" class="span11 id" placeholder="Id Prodi" required="" autofocus/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">MAMA PRODI :</label>
              <div class="controls">
                <input name="prodi" type="text" class="span11 prodi" placeholder="Nama Prodi" required="" autofocus/>
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
            <h5>Data Prodi</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>ID PRODI</th>
                  <th>NAMA PRODI</th>
                  <th>OPTION</th>
                </tr>
              </thead>
              <tbody>
                <?php 
                  // Perintah untuk menampilkan data
                  $kelas= mysql_query ('SELECT * FROM tb_prodi') ;  //menampikan SEMUA data dari tabel Matakuliah

                  // perintah untuk membaca dan mengambil data dalam bentuk array
                  while ($data = mysql_fetch_array ($kelas)){ ?>
                    <tr>
	                    <td style="text-align: center;"><?=$data['id_prodi']?></td>
	                    <td><?=$data['prodi']?></td>
	                    <td style="text-align: center;"><a href="javascript:;" onclick="edit('<?=$data['id_prodi']?>','<?=$data['prodi']?>');"><i class="icon-pencil" style="color:green;"></i></a> | <a href="javascript:;"><i class="icon-trash" style="color:red;" onclick="del('<?=$data['id_prodi']?>');"></i></a></td>
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
	function edit(id, prodi){
		$(".id").val(id);
		$(".prodi").val(prodi);
		$(".action").val('Ubah');
	}

	function batal(){
		$(".action").val('Simpan');
	}

	function del(id){
		if(id != ''){
			var r = confirm("Apakah Anda Yakin akan menanghapus ini ?");
			if (r == true) {
			    window.location.href = 'model/input_m.php?action=prodi&del='+id;
			} 
		}
	}
</script>