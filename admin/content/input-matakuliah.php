<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="home.php?page=home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="#" class="current">Matakuliah</a> </div>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
      	<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
            <h5>Matakuliah</h5>
          </div>
          <div class="widget-content nopadding">
            <form action="model/input_m.php?action=matakuliah" method="POST" class="form-horizontal">
            	<input type="hidden"/>
	            <div class="row-fluid">
	            	<div class="span6">
	            		<div class="control-group">
		                	<label class="control-label">Kode Matakuliah :</label>
			                <div class="controls">
			                  <input name="id" type="text" class="form-control span11 id" id="id" placeholder="Kode Matakuliah" autofocus/>
			                </div>
		                </div>
	            	</div>
	            	<div class="span6">
		            	<div class="control-group">
			                <label class="control-label">Pilih Prodi : </label>
			                <div class="controls">
			                  <select name="prodi" class="form-control prodi">
			                  	<option>Pilih Prodi</option>
			                    <?php
									$kelas= mysql_query('SELECT * FROM tb_prodi ORDER BY id_prodi asc' );
									while ($data = mysql_fetch_array ($kelas)){
										echo '<option value="'.$data['id_prodi'].'">'.$data['prodi'].'</option>';
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
		                <label class="control-label">Maatakuliah :</label>
		                <div class="controls">
		                  <input name="matakuliah" type="text" class="form-control span11 matakuliah" placeholder="Matakuliah" autofocus/>
		                </div>
		              </div>
	            	</div>
	            	<div class="span6">
		            	<div class="control-group">
			                <label class="control-label">Pilih Dosen : </label>
			                <div class="controls">
			                  <select name="dosen" class="form-control dosen">
			                  	<option>Pilih dosen</option>
			                    <?php
									$kelas= mysql_query('SELECT * FROM tb_dosen ORDER BY id_dosen asc' );
									while ($data = mysql_fetch_array ($kelas)){
										echo '<option value="'.$data['id_dosen'].'">'.$data['dosen'].'</option>';
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
			                <label class="control-label">Sks :</label>
			                <div class="controls">
			                  <input name="sks" type="text" class="form-control span11 sks" placeholder="sks" autofocus/>
			                </div>
		                </div>
	            	</div>
	            	<div class="span6">
		            	<div class="control-group">
	                		<label class="control-label">Semester :</label>
			                <div class="controls lantai">
			                  <select name="semester" class="form-control semester">
			                    <option>Pilih Smester</option>
			                    <option>1</option>
			                    <option>2</option>
			                    <option>3</option>
			                    <option>4</option>
			                    <option>5</option>
			                    <option>6</option>
			                    <option>7</option>
			                    <option>8</option>
			                  </select>
			                </div>
	              		</div>
	              	</div>
	            </div>
	            <div class="form-actions">
	              <input name="submit" type="submit" value="Simpan" class="btn btn-success action"/>
	              <input type="reset" value="Batal" class="btn btn-info reset" onclick="batal()" />
	            </div>
            </form>
          </div>
        </div> 
		<div class="widget-box">
	        <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
	        	<h5>Data Matakuliah</h5>
	    	</div>
			    <div class="widget-content nopadding">
			        <table class="table table-bordered data-table">
				        <thead>
				          <tr>
				            <th>KODE MATAKULIAH</th>
				            <th>PRODI</th>
				            <th>MATAKULIAH</th>
				            <th>DOSEN</th>
				            <th>SEMESTER</th>
				            <th>SKS</th>
				            <th>OPTION</th>
				          </tr>
				        </thead>
				      	<tbody>
					        <?php 
			                  // Perintah untuk menampilkan data
			                  $kelas= mysql_query ('
			                  	SELECT
			                  		mk.*,
			                  		ds.*, 
			                  		pr.*
			                  	FROM 
			                  		tb_matakuliah as mk,
			                  		tb_dosen as ds,
			                  		tb_prodi as pr
			                  	WHERE
			                  		mk.id_dosen = ds.id_dosen
			                  		AND mk.id_prodi = pr.id_prodi

			                  	') ;  //menampikan SEMUA data dari tabel Matakuliah

			                  // perintah untuk membaca dan mengambil data dalam bentuk array
			                  while ($data = mysql_fetch_array ($kelas)){?>
			                    <tr>
				                    <td style="text-align: center;"><?=$data['id_matakuliah']?></td>
				                    <td style="text-align: center;"><?=$data['prodi']?></td>
				                    <td><?=$data['matakuliah']?></td>
				                    <td><?=$data['dosen']?></td>
				                    <td style="text-align: center;"><?=$data['semester']?></td>
				                    <td style="text-align: center;"><?=$data['sks']?></td>
				                    <td style="text-align: center;">
				                    	<a href="javascript:;" onclick="edit('<?=$data['id_matakuliah']?>','<?=$data['id_prodi']?>','<?=$data['matakuliah']?>','<?=$data['id_dosen']?>','<?=$data['semester']?>','<?=$data['sks']?>');"><i class="icon-pencil" style="color:green;"></i></a> | <a href="javascript:;"><i class="icon-trash" style="color:red;" onclick="del('<?=$data['id_matakuliah']?>');"></i></a>
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
	function edit(id, prodi, matakuliah, dosen, semester, sks,){
		$(".id").val(id);
		$('.prodi').val(prodi).trigger('change'); 
		$(".matakuliah").val(matakuliah);
		$('.dosen').val(dosen).trigger('change');
		$('.semester').val(semester).trigger('change');  
		$(".sks").val(sks);
		$(".action").val('Ubah');
		document.getElementById("id").disabled=true;
	}

	function batal(){
		$(".action").val('Simpan');
		$('.prodi').val('').trigger('change');
		$('.dosen').val('').trigger('change');
		$('.semester').val('').trigger('change');
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
</script>