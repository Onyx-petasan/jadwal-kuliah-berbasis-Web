
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="home.php?page=home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="#" class="current">Jadwalkuliah</a> </div>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
      	<div class="widget-box">
	        <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
	        	<h5>Jadwal Kuliah</h5>
	    	</div>
	    	<div class="widget-content nopadding">
	            <form action="model/input_m.php?action=jadwalkuliah" method="POST" class="form-horizontal">
            		<input name="id" type="hidden" class="id"/>
            		<input name="kelas" type="hidden" class="kelas" value="<?=$_GET[kelas]?>" />
		            <div class="row-fluid">
		            	<div class="span6">
			            	<div class="control-group">
		                		<label class="control-label">Hari :</label>
				                <div class="controls hari" onchange="changeHari()">
				                  <select name="hari" class="form-control hari" required>
				                    <option >Senin</option>
				                    <option >Selasa</option>
				                    <option >Rabu</option>
				                    <option >Kamis</option>
				                    <option >Jumat</option>
				                    <option >Sabtu</option>
				                  </select>
				                </div>
		              		</div>
		              	</div>
		            	<div class="span6">
			            	<div class="control-group">
		                	<label class="control-label">Jam :</label>
			                <div class="controls">
			                  <input name="jam" type="time" class="form-control span11 jam" placeholder="" />
			                </div>
		                </div>
	            	</div>
		            <div class="row-fluid">
		              	<div class="span6">
			            	<div class="control-group">
				                <label class="control-label">Pilih Matakuliah : </label>
				                <div class="controls">
				                  <select name="matakuliah" class="form-control matakuliah" required>
				                  	<option>Pilih Matakuliah</option>
				                    <?php
										$kelas= mysql_query('SELECT * FROM tb_matakuliah WHERE id_prodi='.$_GET['prodi'].' ORDER BY id_matakuliah  asc' );
										while ($data = mysql_fetch_array ($kelas)){
											echo '<option value="'.$data['id_matakuliah'].'">'.$data['matakuliah'].'</option>';
										}
									?>
				                  </select>
				                </div>
			                </div>
		            	</div>
		              	<div class="span6">
		              		<div class="control-group">
					            <div class="form-actions"><center>
					              	<input name="submit" type="submit" value="Simpan" class="btn btn-success action"/>
	              					<input type="reset" value="Batal" class="btn btn-info reset" onclick="batal()" /></center>
					            </div>
					        </div>
					    </div>
					</div>
	            </form>
            </div>
		</div>
		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
	        	<h5>Data table</h5>
	    	</div>
			    <div class="widget-content nopadding">
			        <table class="table table-bordered data-table">
				        <thead>
				          <tr>
				            <th>HARI</th>
				            <th>JAM</th>
				            <th>KODE MK</th>
				            <th>MATAKULIAH</th>
				            <th>SKS</th>
				            <th>DOSEN PENGAMPU</th>
				            <th>OPTION</th>
				          </tr>
				        </thead>
				      	<tbody>
					        <?php 
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
			                  		AND mk.id_prodi = "'.$_GET['prodi'].'"
			                  		AND jd.hari = "'.$_GET['hari'].'"
			                  		AND jd.kelas = "'.$_GET['kelas'].'"

			                  	') ;  //menampikan SEMUA data dari tabel Matakuliah

			                  // perintah untuk membaca dan mengambil data dalam bentuk array
			                  while ($data = mysql_fetch_array ($kelas)){ ?>
			                    <tr>
			                    <td style="text-align: center;"><?=$data['hari']?></td>
			                    <td style="text-align: center;"><?=$data['jam']?></td>
			                    <td style="text-align: center;"><?=$data['id_matakuliah']?></td>
			                    <td ><?=$data['matakuliah']?></td>
			                    <td style="text-align: center;"><?=$data['sks']?></td>
			                    <td ><?=$data['dosen']?></td>
			                    <td style="text-align: center;"><a href="javascript:;" onclick="edit('<?=$data['id_jadwalkuliah']?>','<?=$data['kelas']?>','<?=$data['hari']?>','<?=$data['jam']?>','<?=$data['id_matakuliah']?>');"><i class="icon-pencil" style="color:green;"></i></a> | <a href="javascript:;"><i class=  "icon-trash" style="color:red;" onclick="del('<?=$data['id_jadwalkuliah']?>');"></i></a>
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
	function edit(id, kelas, hari, jam, matakuliah){
		$(".id").val(id);
		$(".kelas").val(kelas);
		$('.hari').val(hari).trigger('change'); 
		$('.jam').val(jam).trigger('change');
		$('.matakuliah').val(matakuliah).trigger('change');  
		$(".action").val('Ubah');
		document.getElementById("id").disabled=true;
	}

	function batal(){
		$(".action").val('Simpan');
		$('.hari').val('').trigger('change');
		$('.jam').val('').trigger('change');
		$('.matakuliah').val('').trigger('change');
		document.getElementById("id").disabled=false;
	}

	function del(id){
		if(id != ''){
			var r = confirm("Apakah Anda Yakin akan menghapus ini ?");
			if (r == true) {
			    window.location.href = 'model/input_m.php?action=matakuliah&del='+id;
			} 
		}
	}

	function changeHari(){
		var hari = $('.hari :selected').text();
		window.location.href = 'home.php?page=jadwalkuliah&hari='+hari+'&prodi='+<?=$_GET["prodi"];?>+'&kelas='+"<?=$_GET[kelas];?>";
	}
</script>