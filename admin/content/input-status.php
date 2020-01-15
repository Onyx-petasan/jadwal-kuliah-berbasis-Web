<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="home.php?page=home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="#" class="current">Status</a> </div>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span6"> 
      	<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
            <h5>Status</h5>
          </div>
          <div class="widget-content nopadding">
            <form action="model/input_m.php?action=status" method="post" class="form-horizontal">

            <input name="id" type="hidden" class="id"/>
              <div class="control-group">
                <label class="control-label">Status :</label>
                <div class="controls">
                  <input name="status" type="text" class="span11 status" placeholder="Status Jadwal Kuliah" autofocus/>
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
            <h5>Data Status</h5>
          </div>
          <div class="widget-content nopadding">
              <table class="table table-bordered data-table">
                <thead>
                  <tr>
                    <th>ID STATUS</th>
                    <th>STATUS</th>
                    <th>OPSI</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    // Perintah untuk menampilkan data
                    $status= mysql_query ('SELECT * FROM tb_status') ;  //menampikan SEMUA data dari tabel Matakuliah
                                                    
                    // perintah untuk membaca dan mengambil data dalam bentuk array
                    while ($data = mysql_fetch_array ($status)){ ?>
                      <tr>
                        <td style="text-align: center;"><?=$data['id_status']?></td>
                        <td style="text-align: center;"><?=$data['status']?></td>
                        <td style="text-align: center;">
                          <a href="javascript:;" onclick="edit('<?=$data['id_status']?>','<?=$data['status']?>');"><i class="icon-pencil" style="color:green;"></i></a> | <a href="javascript:;"><i class="icon-trash" style="color:red;" onclick="del('<?=$data['id_status']?>');"></i></a>
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
  function edit(id, status){
    $(".id").val(id);
    $(".status").val(status);
    $(".action").val('Ubah');
  }

  function batal(){
    $(".action").val('Simpan');
  }

  function del(id){
    if(id != ''){
      var r = confirm("Apakah Anda Yakin akan menghapus ini ?");
      if (r == true) {
          window.location.href = 'model/input_m.php?action=status&del='+id;
      } 
    }
  }
</script>