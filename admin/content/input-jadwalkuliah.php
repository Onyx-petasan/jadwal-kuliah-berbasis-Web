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
	        	<h5>Data table</h5>
	    	</div>
	    	<div class="widget-content nopadding">
	            <form method="GET" class="form-horizontal">
	            	<input type="hidden" name="page" value="jadwalkuliah">
	            	<input type="hidden" name="hari" value="senin">
		            <div class="row-fluid">
		            	<div class="span6">
			            	<div class="control-group">
				                <label class="control-label">Pilih Prodi : </label>
				                <div class="controls">
				                  <select id="prodi" name="prodi" class="form-control prodi" onchange="ket(this.value)">
		                          <option>Pilih Prodi</option>
		                            <option value="33">Teknik Informatika</option>
		                            <option value="32">Teknik Mesin</option>
		                            <option value="31">Teknik Sipil</option>
		                          </select>
				                </div>
			                </div>
		            	</div>
		            	<div class="span6">
		            	<div class="control-group">
	                		<label class="control-label">Kelas :</label>
			                <div class="controls lantai">
			                  <select id="kelas" name="kelas" class="form-control kelas">
			                    <option>Pilih kelas</option>
			                    <option>A</option>
			                    <option>B</option>
			                  </select>
			                </div>
	              		</div>
	              	</div>
		            </div>
		            <div class="form-actions">
		              <input type="submit" value="Lanjut" class="btn btn-primary">
		            </div>
	            </form>
            </div>
		</div>
	</div>
  </div>
</div>

<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	ket($("#prodi").val());
})

	function ket(a){
    if(a == "33"){
      $('#kelas').select2('enable');
    }
    else if(a == "32"){
      $('#kelas').select2('enable');
    }
    else if(a == "31"){
      $('#kelas').select2('enable');
    }
    else{
      $('#kelas').select2('disable');
    }
  }
</script>