<?php
class Model_users extends CI_model
{
    function cek_login($username, $password)
    {
        return $this->db->query("SELECT * FROM users where username='" . $this->db->escape_str($username) . "' AND password='" . $this->db->escape_str($password) . "'");
    }

    function users()
    {
        return $this->db->query("SELECT * FROM users");
    }

    function generateKode()
    {
        // FORMAT SMA/TAHUN SEKARANG/0001
        // EX : SMA/2020/0001

        $this->db->select('RIGHT(username,7) as username', false);
        $this->db->order_by("username", "DESC");
        $this->db->limit(1);
        $query = $this->db->get('users');

        // SQL QUERY
        // SELECT RIGHT(kode, 4) AS kode FROM tb_siswa
        // ORDER BY kode
        // LIMIT 1

        // CEK JIKA DATA ADA
        if ($query->num_rows() <> 0) {
            $data       = $query->row(); // ambil satu baris data
            $kodeSiswa  = intval($data->username) + 1; // tambah 1
        } else {
            $kodeSiswa  = 1; // isi dengan 1
        }

        $lastKode = str_pad($kodeSiswa, 7, "0", STR_PAD_LEFT);
        $SMA      = "USR";

        $newKode  = $SMA . $lastKode;

        return $newKode;  // return kode baru

    }

    function users_tambah()
    {
        // Generate autoate code
        $this->db->select('RIGHT(username,7) as username', false);
        $this->db->order_by("username", "DESC");
        $this->db->limit(1);
        $query = $this->db->query('SELECT RIGHT(username, 7) AS username FROM users ORDER BY username desc LIMIT 1');
        if ($query->num_rows() != 0) {
            $data       = $query->row(); // ambil satu baris data
            $kodeSiswa  = intval($data->username) + 1; // tambah 1
        } else {
            $kodeSiswa  = 1; // isi dengan 1
        }

        $lastKode = str_pad($kodeSiswa, 7, "0", STR_PAD_LEFT);
        $SMA      = "USR";

        $newKode  = $SMA . $lastKode;
        // End of code

        $datadb = array(
            'username' => $newKode,
            'password' => md5($this->input->post('password')),
            'nama_lengkap' => $this->db->escape_str($this->input->post('nama')),
            'email' => $this->db->escape_str($this->input->post('email')),
            'ktp' => $this->db->escape_str($this->input->post('ktp')),
        );
        $this->db->insert('users', $datadb);

        //return $this->db->query("INSERT INTO users (username,password,nama_lengkap) VALUES ('$newKode','admin','$nama')");
    }

    function users_edit($id)
    {
        return $this->db->query("SELECT * FROM users where username='$id'");
    }

    function users_update()
    {
        if (trim($this->input->post('b')) == '') {
            $datadb = array(
                'username' => $this->db->escape_str($this->input->post('a')),
                'nama_lengkap' => $this->db->escape_str($this->input->post('c')),
                'email' => $this->db->escape_str($this->input->post('d')),
                'no_telp' => $this->db->escape_str($this->input->post('e')),
                'blokir' => $this->db->escape_str($this->input->post('h')),
                'alamat' => $this->db->escape_str($this->input->post('alamat')),
                'id_session' => md5($this->input->post('a'))
            );
            $this->db->where('username', $this->input->post('id'));
            $this->db->update('users', $datadb);
        } else {
            $datadb = array(
                'username' => $this->db->escape_str($this->input->post('a')),
                'password' => md5($this->input->post('b')),
                'nama_lengkap' => $this->db->escape_str($this->input->post('c')),
                'email' => $this->db->escape_str($this->input->post('d')),
                'no_telp' => $this->db->escape_str($this->input->post('e')),
                'blokir' => $this->db->escape_str($this->input->post('h')),
                'alamat' => $this->db->escape_str($this->input->post('alamat')),
                'id_session' => md5($this->input->post('a'))
            );
            $this->db->where('username', $this->input->post('id'));
            $this->db->update('users', $datadb);
        }
    }

    function users_delete($id)
    {
        return $this->db->query("DELETE FROM users where username='$id'");
    }
}
