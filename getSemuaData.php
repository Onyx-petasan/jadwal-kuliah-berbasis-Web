<?php 
	//Importing Database Script 
	require_once('dbConnect.php');
	date_default_timezone_set('Asia/Jakarta');
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
	//Creating sql query
	$sql = ('
        SELECT
            *
        FROM 
        (SELECT
            td.*,
            mk.matakuliah,
            ds.dosen,
            tp.prodi,
            tj.jam
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
            AND tj.kelas = "'.$class.'") as tr
        LEFT JOIN tb_ruangan ON tr.id_ruangan = tb_ruangan.id_ruangan
        '); 
	
	//getting result 
	$r = mysqli_query($con,$sql);
	
	//creating a blank array 
	$result = array();
	
	//looping through all the records fetched
	while($row = mysqli_fetch_array($r)){
		
		//Pushing name and id in the blank array created 
		array_push($result,array(
			"Id"=>$row['id_today'],
            "jam"=>$row['jam'],
			"prodi"=>$row['prodi'],
			"matakuliah"=>$row['matakuliah'],
			"ruang"=>$row['ruang'],
			"dosen"=>$row['dosen'],
			"keterangan"=>$row['keterangan']
		));
	}
	
	//Displaying the array in json format 
	echo json_encode(array('result'=>$result));
	
	mysqli_close($con);