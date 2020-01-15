<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="home.php?page=home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="#" class="current">Dosen</a> </div>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
      	<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
            <h5>Dosen</h5>
          </div>
          <div class="widget-content nopadding">
            <form action="model/input_m.php?action=dosen" method="POST" class="form-horizontal">
            	<input name="id" type="hidden" class="id"/>
	            <div class="row-fluid">
	            	<div class="span6">
	            		<div class="control-group">
		                	<label class="control-label">NIP / No. Induk Dosen :</label>
			                <div class="controls">
			                  <input name="nip" type="text" class="form-control span11 nip" placeholder="NIP / No.Induk Dosen" autofocus/>
			                </div>
		                </div>
	            	</div>
	            	<div class="span6">
	            		<div class="control-group">
		                <label class="control-label">Nama Lengkap :</label>
		                <div class="controls">
		                  <input name="dosen" type="text" class="form-control span11 dosen" placeholder="Nama Lengkap" autofocus/>
		                </div>
		              </div>
	            	</div>
	            </div>
	            <div class="row-fluid">
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
	            	<div class="span6">
						<div class="control-group">
			                <label class="control-label">Nomor HP / Telepon :</label>
			                <div class="controls">
			                  <input name="hp" type="text" class="form-control span11 hp" placeholder="Nomor HP / Telepon" />
			                </div>
		                </div>
	            	</div>
	            </div>
	            <div class="control-group">
	              	<label class="control-label">Alamat :</label>
		            <div class="controls">
		                <textarea name="alamat" class="span11 alamat" placeholder="iskan alamat"></textarea>
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
	        	<h5>Data Dosen</h5>
	    	</div>
		    <div class="widget-content nopadding">
		        <table class="table table-bordered data-table">
			        <thead>
			          <tr>
			            <th>NIP</th>
			            <th>NAMA LENGKAP</th>
			            <th>PRODI</th>
			            <th>HP</th>
			            <th>ALAMAT</th>
			            <th>Option</th>
			          </tr>
			        </thead>
			      	<tbody>
				        <?php 
		                  // Perintah untuk menampilkan data
		                  $kelas= mysql_query ('
		                  	SELECT 
		                  		ds.*, 
		                  		pr.*
		                  	FROM 
		                  		tb_dosen ds,
		                  		tb_prodi pr
		                  	WHERE
		                  		ds.id_prodi=pr.id_prodi
		                  	') ;  //menampikan SEMUA data dari tabel Matakuliah

		                  // perintah untuk membaca dan mengambil data dalam bentuk array
		                  while ($data = mysql_fetch_array ($kelas)){ ?>  
		                    <tr>
			                    <td style="text-align: center;"><?=$data['nip']?></td>
			                    <td><?=$data['dosen']?></td>
			                    <td style="text-align: center;"><?=$data['prodi']?></td>
			                    <td><?=$data['hp']?></td>
			                    <td><?=$data['alamat']?></td>
			                    <td style="text-align: center;">
			                    	<a href="javascript:;" onclick="edit('<?=$data['id_dosen']?>','<?=$data['nip']?>','<?=$data['dosen']?>','<?=$data['id_prodi']?>','<?=$data['hp']?>','<?=$data['alamat']?>');"><i class="icon-pencil" style="color:green;"></i></a> | <a href="javascript:;"><i class="	  icon-trash" style="color:red;" onclick="del('<?=$data['id_dosen']?>');"></i></a>
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
	function edit(id,nip, dosen, prodi, hp, alamat){
		$(".id").val(id);
		$(".nip").val(nip);
		$(".dosen").val(dosen);
		$(".hp").val(hp);
		$(".alamat").val(alamat);
		$(".action").val('Ubah');
		$('.prodi').val(prodi).trigger('change'); 
	}

	function batal(){
		$(".action").val('Simpan');
		$('.prodi').val('').trigger('change');
	}

	function del(id){
		if(id != ''){
			var r = confirm("Apakah Anda Yakin akan menghapus ini ?");
			if (r == true) {
			    window.location.href = 'model/input_m.php?action=dosen&del='+id;
			} 
		}
	}
</script>
