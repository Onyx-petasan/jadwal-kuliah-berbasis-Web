<div id="content">
    <div id="content-header">
    	<div id="breadcrumb"> <a href="home.php?page=home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="#" class="current">Laporan Presensi</a> </div>
     </div>
  	<div class="container-fluid">
    	<div class="row-fluid">
      		<div class="span12">
	        	<div class="widget-box">
	        		<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
			        	<h5>Jadwal Kuliah</h5>
			    	</div>
			    	<div class="widget-content nopadding">
			            <form method="POST" action="model/print.php" class="form-horizontal" target="_blank">
		            		<input name="id" type="hidden" class="id"/>
				            <div class="row-fluid">
				              	<div class="span6">
					            	<div class="control-group">
						                <label class="control-label">Pilih Matakuliah : </label>
						                <div class="controls">
						                  <select name="matakuliah" class="form-control matakuliah" required autofocus/>
						                  	<option>Pilih Matakuliah</option>
						                    <?php
												$kelas= mysql_query('
													SELECT 
								                  	tp.*,
								                  	tm.matakuliah
								                  	FROM 
							                  		tb_presensi tp,
							                  		tb_matakuliah tm
								                  	WHERE
								                  		tp.id_matakuliah = tm.id_matakuliah group by id_matakuliah
												');
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
							              	<input type="submit" class="btn btn-success" value="Print">
										    
			              					<input type="reset" value="Batal" class="btn btn-info reset" onclick="batal()" /></center>
							            </div>
							        </div>
							    </div>
							</div>
			  			</form>
			  		</div>
			  	</div>
			</div>
	    	<div class="widget-box">
          		<div class="widget-title">
            		<h5 style="float: none; text-align: center;">Data Presensi</h5>
          		</div>
	         	<div class="widget-content nopadding">
	                <table class="table table-bordered data-table">
		                <thead>
			                <tr>
			                  <th>MATAKULIAH</th>
			                  <th>WATU DILAKSANAKAN</th>
			                  <th>RUANGAN</th>
			                  <th>STATUS</th>
			                </tr>
		                </thead>
		                <tbody>
		                	<?php 
			                  // Perintah untuk menampilkan data
			                  $kelas= mysql_query ('
			                  	SELECT
                              	*
	                          	FROM(
	                            SELECT
			                  	tp.*,
			                  	tm.matakuliah,
			                  	ts.status
			                  	FROM 
		                  		tb_presensi tp,
		                  		tb_matakuliah tm,
		                  		tb_status ts
			                  	WHERE
			                  		tp.id_matakuliah = tm.id_matakuliah
			                  	AND tp.id_status     = ts.id_status) tr
                          		LEFT JOIN tb_ruangan ON tr.id_ruangan = tb_ruangan.id_ruangan

			                  	');  //menampikan SEMUA data dari tabel Matakuliah

			                  // perintah untuk membaca dan mengambil data dalam bentuk array
			                  while ($data = mysql_fetch_array ($kelas)){?>
			                    <tr>
				                    <td><?=$data['matakuliah']?></td>
				                    <td style="text-align: center;"><?=$data['dimulai']?></td>
				                    <td style="text-align: center;"><?=$data['ruang']?></td>
				                    <td style="text-align: center;"><?=$data['status']?></td>
		                    	</tr>
			                <?php } ?>
	              		</tbody>
            		</table>
                </div>
        	</div>
        </div>
    </div>
</div>

<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script>
