<?php
echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Berita Terpilih</h3>
                </div>
              <div class='box-body'>";
$attributes = array('class' => 'form-horizontal', 'role' => 'form');
echo form_open_multipart('administrator/edit_job', $attributes);
echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_berita]'>
                    <input type='hidden' name='u' value='USR0000003'>
                    <input type='hidden' name='c' value='Y'>
                    <tr><th width='120px' scope='row'>Judul</th>    <td><input type='text' class='form-control' name='a' value='$rows[judul]' required></td></tr>
                    <tr><th scope='row'>Kategori</th>               <td><select name='b' class='form-control' required>
                                                                                <option value='' selected>- Pilih Kategori -</option>";
foreach ($record->result_array() as $row) {
  if ($rows['id_kategori'] == $row['id_kategori']) {
    echo "<option value='$row[id_kategori]' selected>$row[nama_kategori]</option>";
  } else {
    echo "<option value='$row[id_kategori]'>$row[nama_kategori]</option>";
  }
}
echo "</td></tr>
                    <tr><th scope='row'>Isi Berita</th>             <td><textarea id='editor1' class='form-control' name='d' style='height:320px' required>$rows[isi_berita]</textarea></td></tr>
                    <tr><th scope='row'>Ganti Gambar</th>                 <td><input type='file' class='form-control' name='e'>";
if ($rows['gambar'] != '') {
  echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='" . base_url() . "asset/foto_berita/$rows[gambar]'>$rows[gambar]</a>";
}
echo "</td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='" . base_url() . $this->uri->segment(1) . "/job'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
