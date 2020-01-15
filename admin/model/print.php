<?php
include '../koneksi.php';

$jad = mysql_query(' 
    SELECT
    tp.*,
    tm.matakuliah,
    ts.status
    FROM 
    tb_presensi tp,
    tb_matakuliah tm,
    tb_status ts
    WHERE
    tp.id_matakuliah     = tm.id_matakuliah
    AND tp.id_status     = ts.id_status
    AND tp.id_matakuliah = "'.$_POST['matakuliah'].'" 

    ');
// echo $_POST['matakuliah'];
	
    // $data = mysql_query('
    //         SELECT * 
    //         FROM 
    //             tb_presensi 
    //         LEFT JOIN 
    //             tb_ruangan 
    //         ON 
    //             tb_presensi.id_ruangan = tb_ruangan.id_ruangan 
    //         WHERE 
    //             tb_presensi.id_matakuliah = "'.$_POST['matakuliah'].'"
    //     '); 

    $data = mysql_query('
            SELECT * 
            FROM 
                tb_presensi 
            LEFT JOIN 
                tb_ruangan 
            ON 
                tb_presensi.id_ruangan = tb_ruangan.id_ruangan WHERE
                tb_presensi.id_matakuliah = "'.$_POST['matakuliah'].'"

        ');



	date_default_timezone_set('Asia/Jakarta');
    $tanggal = date('d-M-Y');
?>
<html>
<head>
	<title>Print Document</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<h4 align="center">LAPORAN PRESENSI MATAKULIAH</h4>
	<h4 align="center">UNIVERSITAS JANABADRA YOGYAKARTA</h4>
    <?php
        $pil = mysql_fetch_array($jad);
    ?>
	<h4 align="center"><?php echo $pil['matakuliah']; ?></h4></td>
     
	<table border="1" width="100%" style="border-collapse:collapse;" align="center">
    	<tr>
        	<th>Pertemuan</th>
            <th>Dilaksanakan</th> 
			<th>Ruangan</th>
			<th>Status</th>
        </tr>
        <?php
        $no = 1;
        while($hasil = mysql_fetch_array($data)){ ?>
        <tr>
        	<td width="10%" align="center"><?php echo $no++; ?></td>
        	<td width="15%" align="center"><?php echo $hasil['dimulai']; ?></td>
            <td width="10%" align="center"><?php echo $hasil['ruang']; ?></td>
            <td width="10%" align="center"><?php echo $pil['status']; ?></td>
        </tr>
        <?php } ?>
    </table>
    <br>
    <div class="col-lg-12 col-md-" align="right">
		Yogyakarta, <?php echo $tanggal; ?> <br/><br/><br/><br/>
		Pimpinan 
	</div>
    <!-- <script>
		window.load = print_d();
		function print_d(){
			window.print();
		}
	</script> -->
</body>
</html>