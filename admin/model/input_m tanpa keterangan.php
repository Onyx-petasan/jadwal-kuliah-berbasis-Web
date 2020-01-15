<?php
include '../koneksi.php';
// menyimpan data kedalam variabel
// $id             = $_POST['id'];
//$prodi          = $_POST['prodi'];
date_default_timezone_set('Asia/Jakarta');

    if(!empty($_GET['action'])){
        //proses prodi
        if($_GET['action']=='prodi'){
            //simpan
            if(!empty($_POST['submit'])){ //jika GET_act maka masok 
                if($_POST['submit'] == 'Simpan'){ //jika submit bernilai simpan maka masok
                    $SQL =mysql_query( 
                        "INSERT INTO tb_prodi (id_prodi, prodi)
                            VALUES ('$_POST[id]','$_POST[prodi]')"
                        ); //sql untuk menyimpan data prodi
                    if ($SQL) { //jika simpan berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'>
                            alert('Data Prodi Berhasil diinput!');
                            window.location='../home.php?page=input-prodi';
                            </script>";
                    }
                }
                //UBAH
                else if($_POST['submit'] == 'Ubah'){ //jika submit bernilai ubah maka masok
                    $SQL =mysql_query("
                        UPDATE 
                            tb_prodi 
                        SET 
                            prodi      = '$_POST[prodi]'
                        WHERE id_prodi = '$_POST[id]'
                        "); //sql untuk merubah data prodi
                    if ($SQL) { //jika ubah berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'>
                            alert('Data Prodi Berhasil diubah!');
                            window.location='../home.php?page=input-prodi';
                            </script>";
                    }
                }
                else {
                //Jika Gagal
                echo "Data prodi Gagal diinput, Silahkan diulangi!"; 
                }
            }
            //DELETE 
            elseif(!empty($_GET['del'] OR $_GET['del']==0)){ //jika ada GET bernilai del atau del berisi nol maka masok proses hapus
                mysql_query("DELETE FROM tb_prodi WHERE id_prodi=".$_GET['del']); //pokoke proses delete
                echo '<script>window.location=history.go(-1)</script>'; // balik maning
            }
            else{ 
               echo '<script>window.location=history.go(-1)</script>'; //jika tidak act dan del maka balik
            }
        }
        //proes prodi mandeg

        //proses dosen
        elseif($_GET['action']=='dosen'){
            //SIMPAN
            if(!empty($_POST['submit'])){ //jika GET_act maka masok 
                if($_POST['submit'] == 'Simpan'){ //jika submit bernilai simpan maka masok
                    $SQL = mysql_query("
                        INSERT INTO tb_dosen (id_prodi, nip, dosen, hp, alamat)
                            VALUES ('$_POST[prodi]','$_POST[nip]','$_POST[dosen]','$_POST[hp]','$_POST[alamat]')
                        "); //sql untuk menyimpan data dosen
                    if ($SQL) { //jika simpan berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'> 
                            alert('Data dosen Berhasil diinput!'); 
                            window.location='../home.php?page=input-dosen';
                            </script>";
                    }
                    else{
                        echo" <script language='JavaScript'> 
                            alert('Data dosen Gagal diinput!'); 
                            window.location=history.go(-1) 
                            </script>";
                    }

                }
                //UBAH
                else if($_POST['submit'] == 'Ubah'){ //jika submit bernilai ubah maka masok
                    $SQL =mysql_query("
                        UPDATE 
                            tb_dosen 
                        SET                         
                            id_prodi   = '$_POST[prodi]',
                            nip        = '$_POST[nip]',
                            dosen      = '$_POST[dosen]',
                            hp         = '$_POST[hp]',
                            alamat     = '$_POST[alamat]'
                        WHERE id_dosen = '$_POST[id]'
                        "); //sql untuk merubah data prodi
                    if ($SQL) { //jika ubah berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'>
                            alert('Data dosen Berhasil diubah!');
                            window.location='../home.php?page=input-dosen';
                            </script>";
                    }
                }
                else {
                //Jika Gagal
                echo "Data dosen Gagal diinput, Silahkan diulangi!"; 
                }
            }
            //DELETE 
            elseif(!empty($_GET['del'] OR $_GET['del']==0)){ //jika ada GET bernilai del atau del berisi nol maka masok proses hapus
                mysql_query("DELETE FROM tb_dosen WHERE id_dosen=".$_GET['del']); //pokoke proses delete
                echo" <script language='JavaScript'>
                            alert('Data dosen Berhasil dihapus!');
                            window.location='../home.php?page=input-dosen';
                            </script>"; // balik maning
            }
            else{ 
               echo '<script>window.location=history.go(-1)</script>'; //jika tidak act dan del maka balik
            }
        }
        //proses dosen mandeg

        //proses ruangan
        elseif($_GET['action']=='ruangan'){
            //SIMPAN
            if(!empty($_POST['submit'])){ //jika GET_act maka masok 
                if($_POST['submit'] == 'Simpan'){ //jika submit bernilai simpan maka masok
                    $SQL = mysql_query("
                        INSERT INTO tb_ruangan (ruang, lantai, kapasitas, fungsi)
                            VALUES ('$_POST[ruang]','$_POST[lantai]','$_POST[kapasitas]','$_POST[fungsi]')
                        "); //sql untuk menyimpan data dosen
                    if ($SQL) { //jika simpan berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'> 
                            alert('Data Ruangan Berhasil diinput!'); 
                            window.location='../home.php?page=input-ruangan';
                            </script>";
                    }
                    else{
                        echo" <script language='JavaScript'> 
                        alert('Data Ruangan Gagal diinput!'); 
                        window.location=history.go(-1) </script>";
                    }

                }
                //UBAH
                else if($_POST['submit'] == 'Ubah'){ //jika submit bernilai ubah maka masok
                    $SQL =mysql_query("
                        UPDATE 
                            tb_ruangan
                        SET                         
                            ruang        = '$_POST[ruang]',
                            lantai       = '$_POST[lantai]',
                            kapasitas    = '$_POST[kapasitas]',
                            fungsi       = '$_POST[fungsi]'
                        WHERE id_ruangan = '$_POST[id]'
                        "); //sql untuk merubah data prodi
                    if ($SQL) { //jika ubah berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'>
                            alert('Data Ruangan Berhasil diubah!');
                            window.location='../home.php?page=input-ruangan';
                            </script>";
                    }
                }
                else {
                //Jika Gagal
                echo "Data Ruangan Gagal diinput, Silahkan diulangi!"; 
                }
            }
            //DELETE 
            elseif(!empty($_GET['del'] OR $_GET['del']==0)){ //jika ada GET bernilai del atau del berisi nol maka masok proses hapus
                mysql_query("DELETE FROM tb_ruangan WHERE id_ruangan=".$_GET['del']); //pokoke proses delete
                echo "<script language='JavaScript'>
                            alert('Data Ruangan Berhasil dihapus!');
                            window.location='../home.php?page=input-ruangan';
                            </script>"; 
                            // balik maning
            }
            else{ 
               echo '<script>window.location=history.go(-1)</script>'; //jika tidak act dan del maka balik
            }
        }
        //proses ruang mandeg

        //proses matakuliah
        elseif($_GET['action']=='matakuliah'){
            //SIMPAN
            if(!empty($_POST['submit'])){ //jika GET_act maka masok 
                if($_POST['submit'] == 'Simpan'){ //jika submit bernilai simpan maka masok
                    $SQL = mysql_query("
                        INSERT INTO tb_matakuliah (id_matakuliah, id_prodi, matakuliah, id_dosen, sks, semester)
                            VALUES ('$_POST[id]','$_POST[prodi]','$_POST[matakuliah]','$_POST[dosen]','$_POST[sks]','$_POST[semester]')
                        "); //sql untuk menyimpan data dosen
                    if ($SQL) { //jika simpan berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'> 
                            alert('Data Matakuliah Berhasil diinput!'); 
                            window.location='../home.php?page=input-matakuliah';
                            </script>";
                    }
                    else{
                        echo" <script language='JavaScript'> 
                        alert('Data Matakuliah Gagal diinput!'); 
                        window.location=history.go(-1) </script>";
                    }

                }
                //UBAH
                else if($_POST['submit'] == 'Ubah'){ //jika submit bernilai ubah maka masok
                    $SQL =mysql_query("
                        UPDATE 
                            tb_matakuliah
                        SET                         
                            id_prodi        = '$_POST[prodi]',
                            matakuliah      = '$_POST[matakuliah]',
                            id_dosen        = '$_POST[dosen]',
                            semester        = '$_POST[semester]',
                            sks             = '$_POST[sks]'
                        WHERE id_matakuliah = '$_POST[id]'
                        "); //sql untuk merubah data prodi
                    if ($SQL) { //jika ubah berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'>
                            alert('Data Matakuliah Berhasil diubah!');
                            window.location='../home.php?page=input-matakuliah';
                            </script>";
                    }
                    else{
                        echo" <script language='JavaScript'> 
                        alert('Data Matakuliah Gagal diubah!'); 
                        window.location=history.go(-1) </script>";
                    }
                }
                else {
                //Jika Gagal
                echo "Data Ruangan Gagal diinput, Silahkan diulangi!"; 
                }
            }
            //DELETE 
            elseif(!empty($_GET['del'] OR $_GET['del']==0)){ //jika ada GET bernilai del atau del berisi nol maka masok proses hapus
                mysql_query("DELETE FROM tb_matakuliah WHERE id_matakuliah=".$_GET['del']); //pokoke proses delete
                echo "<script language='JavaScript'>
                            alert('Data Matakuliah Berhasil dihapus!');
                            window.location='../home.php?page=input-matakuliah';
                            </script>"; 
                            // balik maning
            }
            else{ 
               echo '<script>window.location=history.go(-1)</script>'; //jika tidak act dan del maka balik
            }
        }
        //proses matakuliah mandeg

        //proses jadwalkuliah
        elseif($_GET['action']=='jadwalkuliah'){
            //SIMPAN
            if(!empty($_POST['submit'])){ //jika GET_act maka masok 
                if($_POST['submit'] == 'Simpan'){ //jika submit bernilai simpan maka masok
                    $SQL = mysql_query("
                        INSERT INTO tb_jadwalkuliah (kelas, hari, jam, id_matakuliah)
                            VALUES ('$_POST[kelas]','$_POST[hari]','$_POST[jam]','$_POST[matakuliah]')
                        "); //sql untuk menyimpan data dosen
                    if ($SQL) { //jika simpan berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'> 
                            alert('Data Jadwalkuliah Berhasil diinput!'); 
                            window.location=history.go(-1);
                            </script>";
                    }
                    else{
                        echo" <script language='JavaScript'> 
                            alert('Data Jadwalkuliah Gagal diinput!'); 
                            window.location=history.go(-1);
                            </script>";
                    }

                }
                //UBAH
                else if($_POST['submit'] == 'Ubah'){ //jika submit bernilai ubah maka masok
                    $SQL =mysql_query("
                        UPDATE 
                            tb_jadwalkuliah
                        SET                         
                            kelas           = '$_POST[kelas]',
                            hari            = '$_POST[hari]',
                            jam             = '$_POST[jam]',
                            id_matakuliah   = '$_POST[matakuliah]'
                        WHERE id_jadwalkuliah = '$_POST[id]'
                        "); //sql untuk merubah data prodi
                    if ($SQL) { //jika ubah berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'>
                            alert('Data jadwalkuliah Berhasil diubah!');
                            window.location=history.go(-1);
                            </script>";
                    }
                    else{
                        echo" <script language='JavaScript'> 
                        alert('Data jadwalkuliah Gagal diubah!'); 
                        window.location=history.go(-1); </script>";
                    }
                }
                else {
                //Jika Gagal
                echo "Data Jadwalkuliah Gagal diinput, Silahkan diulangi!"; 
                }
            }
            //DELETE 
            elseif(!empty($_GET['del'] OR $_GET['del']==0)){ //jika ada GET bernilai del atau del berisi nol maka masok proses hapus
                mysql_query("DELETE FROM tb_jadwalkuliah WHERE id_jadwalkuliah=".$_GET['del']); //pokoke proses delete
                echo "<script language='JavaScript'>
                            alert('Data Jadwalkuliah Berhasil dihapus!');
                            window.location=history.go(-1);
                            </script>"; 
                            // balik maning
            }
            else{ 
               echo '<script>window.location=history.go(-1)</script>'; //jika tidak act dan del maka balik
            }
        }
        //proses matakuliah mandeg

        //proses today
        elseif($_GET['action']=='today'){
            //SIMPAN
            if(!empty($_POST['submit'])){ //jika GET_act maka masok 
                if($_POST['submit'] == 'Ubah'){ //jika submit bernilai ubah maka masok
                    $tgl = date("Y-m-d H:i:s");
                    $SQL =mysql_query("
                        UPDATE 
                            tb_today
                        SET                         
                            keterangan      = '$_POST[keterangan]',
                            id_ruangan      = '$_POST[ruangan]',
                            masuk           = '$tgl'
                        WHERE id_today = '$_POST[id]'
                        "); //sql untuk merubah data prodi
                    if($_POST['keterangan']=='Masuk'){
                        mysql_query("
                        INSERT INTO tb_presensi (id_matakuliah, masuk, id_ruangan, keterangan)
                            VALUES ('$_POST[id_matakuliah]', '$tgl','$_POST[ruangan]','$_POST[keterangan]')
                        ");
                    }

                    if ($SQL) { //jika ubah berhasil maka menampilkan alert dan kembali 
                        echo" <script language='JavaScript'>
                            alert('Data jadwalkuliah Berhasil diubah!');
                            window.location=history.go(-1);
                            </script>";
                    }
                    else{
                        echo" <script language='JavaScript'> 
                        alert('Data jadwalkuliah Gagal diubah!'); 
                        window.location=history.go(-1); </script>";
                    }
                }
                else {
                //Jika Gagal
                echo "Data Jadwalkuliah Gagal diinput, Silahkan diulangi!"; 
                }
            }
            //DELETE 
            elseif(!empty($_GET['del'] OR $_GET['del']!=0)){ //jika ada GET bernilai del atau del berisi nol maka masok proses hapus
                date_default_timezone_set('Asia/Jakarta');
                $sql = mysql_query('
                        SELECT * FROM 
                            tb_today 
                        WHERE 
                            id_today = "'.$_GET['del'].'"
                    ');
                $data = mysql_fetch_array($sql);

                mysql_query("
                     UPDATE tb_presensi SET 
                        kembalikan = '".date("Y-m-d H:i:s")."'
                    WHERE
                        id_matakuliah = '".$data['id_matakuliah']."' AND
                        masuk ='".$data['masuk']."'
                    ");
                echo "<script language='JavaScript'>
                            alert('Data Jadwalkuliah Berhasil dihapus!');
                            window.location=history.go(-1);
                            </script>"; 
                
            }
            else{ 
               echo '<script>window.location=history.go(-1)</script>'; //jika tidak act dan del maka balik
            }
        }
        //proses matakuliah mandeg
    }
    else{
        echo '<script>window.location=history.go(-1)</script>'; 
    }


    /*mysql_query("
                    UPDATE tb_presensi SET 
                        kembalikan = NOW()
                    WHERE 
                        id_matakuliah = ".$_data['id_matakuliah']." AND 
                        tanggal LIKE %'".$data['tanggal']."'");*/

                // mysql_query("DELETE FROM tb_today WHERE id_today=".$_GET['del']); //pokoke proses delete
                // echo "<script language='JavaScript'>
                //             alert('Data Jadwalkuliah Berhasil dihapus!');
                //             window.location=history.go(-1);
                //             </script>"; 
                            // balik maning
?>