<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Gallery Foto</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/edit_galeri',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_gallery]'>
                    <tr><th width='120px' scope='row'>Album</th>      <td><select name='a' class='form-control' required>
                                                                            <option value='' selected>- Pilih Album -</option>";
                                                                            foreach ($record->result_array() as $row){
                                                                              if ($rows['id_album']==$row['id_album']){
                                                                                echo "<option value='$row[id_album]' selected>$row[jdl_album]</option>";
                                                                              }else{
                                                                                echo "<option value='$row[id_album]'>$row[jdl_album]</option>";
                                                                              }
                                                                            }
                    echo "</td></tr>
                    <tr><th scope='row'>Judul Foto</th>               <td><input type='text' class='form-control' name='b' value='$rows[jdl_gallery]'></td></tr>
                    <tr><th scope='row'>Keterangan</th>               <td><textarea id='editor1' class='form-control' name='c' style='height:220px'>$rows[keterangan]</textarea></td></tr>
                    <tr><th scope='row'>Ganti Gambar</th>                    <td><input type='file' class='form-control' name='d'><hr style='margin:5px'>";
                                                                               if ($rows['gbr_gallery'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."asset/img_galeri/$rows[gbr_gallery]'>$rows[gbr_gallery]</a>"; } echo "</td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url().$this->uri->segment(1)."/galeri'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";