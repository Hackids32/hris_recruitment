<?php
            echo "<p class='sidebar-title'> &nbsp; $title</p><hr>";
                $no = 1;
                foreach ($berita->result_array() as $row){
                    $isi_berita = strip_tags($row['isi_berita']); 
                    $isi = substr($isi_berita,0,100); 
                    $isi = substr($isi_berita,0,strrpos($isi," "));
                    $tanggal = tgl_indo($row['tanggal']);
                    if ($row['gambar'] == ''){ $foto = 'small_no-image.jpg'; }else{ $foto = $row['gambar']; }
                    echo "<div class='col-md-4'>
                            <small class='date pull-right'><span class='glyphicon glyphicon-time'></span> $row[hari], $tanggal</small>
                            <img width='100%' style='max-height:130px' src='".base_url()."asset/foto_berita/".$foto."'>
                            <a href='".base_url()."berita/detail/$row[judul_seo]'>".$row['judul']."</a>

                        </div>";
                        if ($no % 3 == 0){
                            echo "<div style='clear:both'><hr></div>";
                        }
                    $no++;
                }
            ?>
            <div style="clear:both"></div>
            <?php echo $this->pagination->create_links(); ?>
