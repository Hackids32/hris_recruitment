<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Login extends CI_Controller
{
    function index()
    {
        if (isset($_POST['submit'])) {
            $username = $this->input->post('a');
            $password = md5($this->input->post('b'));
            $cek = $this->model_users->cek_login_employee($username, $password);
            $row = $cek->row_array();
            $total = $cek->num_rows();
            if ($total > 0) {
                $this->session->set_userdata('upload_image_file_manager', true);
                $this->session->set_userdata(array(
                    'username' => $row['username'],
                    'level' => $row['level']
                ));
                redirect('login/home');
            } else {
                $data['title'] = 'Candidate &rsaquo; Log In';
                $this->load->view('login/view_login', $data);
            }
        } else {
            if ($this->session->level != '') {
                redirect('login/home');
            } else {
                $data['title'] = 'Candidate &rsaquo; Log In';
                $this->load->view('login/view_login', $data);
            }
        }
    }

    function home()
    {
        cek_session_admin();
        if($this->session->level=='user')
        {
            $this->template->load('login/template', 'login/view_home');
        }
        else
        {
            redirect('administrator/home');
        }
    }

    function identitaswebsite()
    {
        cek_session_admin();
        if (isset($_POST['submit'])) {
            $this->model_identitas->identitas_update();
            redirect('administrator/identitaswebsite');
        } else {
            $data['record'] = $this->model_identitas->identitas()->row_array();
            $this->template->load('administrator/template', 'administrator/mod_identitas/view_identitas', $data);
        }
    }

    // Controller Modul Joblist
    function joblist()
    {
        cek_session_admin();
        $data['record'] = $this->model_berita->joblist();
        $this->template->load('login/template', 'login/mod_joblist/view_joblist', $data);
    }

    function joblist_detail()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        $data['record'] = $this->model_berita->list_berita_edit($id)->row_array();
        $data['recordcat'] = $this->model_berita->kategori_department();
        $this->template->load('login/template', 'login/mod_joblist/view_joblist_edit', $data);
    }

    // Controller Modul Pegawai

    function pegawai()
    {
        cek_session_admin();
        $data['record'] = $this->model_download->pegawai();
        $this->template->load('administrator/template', 'administrator/mod_download/view_pegawai', $data);
    }

    function tambah_pegawai()
    {
        cek_session_admin();
        if (isset($_POST['submit'])) {
            $this->model_download->pegawai_tambah();
            redirect('administrator/pegawai');
        } else {
            $this->template->load('administrator/template', 'administrator/mod_download/view_pegawai_tambah');
        }
    }

    function edit_pegawai()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_download->pegawai_update();
            redirect('administrator/pegawai');
        } else {
            $data['rows'] = $this->model_download->pegawai_edit($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_download/view_pegawai_edit', $data);
        }
    }

    function delete_pegawai()
    {
        $id = $this->uri->segment(3);
        $this->model_download->pegawai_delete($id);
        redirect('administrator/pegawai');
    }

    // Controller Modul Pesan Masuk

    function pesanmasuk()
    {
        cek_session_admin();
        $data['record'] = $this->model_hubungi->pesan_masuk();
        $this->template->load('administrator/template', 'administrator/mod_pesanmasuk/view_pesanmasuk', $data);
    }

    function detail_pesanmasuk()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_hubungi->pesan_masuk_kirim();
            $data['rows'] = $this->model_hubungi->pesan_masuk_view($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_pesanmasuk/view_pesanmasuk_detail', $data);
        } else {
            $data['rows'] = $this->model_hubungi->pesan_masuk_view($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_pesanmasuk/view_pesanmasuk_detail', $data);
        }
    }

    function delete_pesanmasuk()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        $this->model_hubungi->pesan_masuk_delete($id);
        redirect($this->uri->segment(1) . '/pesanmasuk');
    }


    // Controller Modul User

    function edit_manajemenuser()
    {
        cek_session_admin();
        if($this->session->level=='user')
        {
            $id = $this->uri->segment(3);
            $idsession = $this->session->username;
            if (isset($_POST['submit'])) {
                $this->model_users->users_update();
                $this->session->set_flashdata('status', 'Data profile berhasil diubah');
                redirect('login/edit_manajemenuser/' . $idsession);
            } else {
                //cek id user / username are same
                if ($id == $idsession) {
                    $data['mo'] = $this->model_modul->users_modul();
                    $data['rows'] = $this->model_users->users_edit($id)->row_array();
                    $this->template->load('login/template', 'login/mod_users/view_users_edit', $data);
                } else {
                    redirect('login/home');
                }
            }
        }
        else
        {
            redirect('administrator/home');
        }
        
    }

    // Controller Modul Logout
    
    function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url());
    }


    // Controller Modul Download

    function download()
    {
        cek_session_admin();
        $data['record'] = $this->model_download->download();
        $this->template->load('administrator/template', 'administrator/mod_download/view_download', $data);
    }

    function tambah_download()
    {
        cek_session_admin();
        if (isset($_POST['submit'])) {
            $this->model_download->download_tambah();
            redirect('administrator/download');
        } else {
            $this->template->load('administrator/template', 'administrator/mod_download/view_download_tambah');
        }
    }

    function edit_download()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_download->download_update();
            redirect('administrator/download');
        } else {
            $data['rows'] = $this->model_download->download_edit($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_download/view_download_edit', $data);
        }
    }

    function delete_download()
    {
        $id = $this->uri->segment(3);
        $this->model_download->download_delete($id);
        redirect('administrator/download');
    }


    // Controller Modul Polling

    function polling()
    {
        cek_session_admin();
        $data['record'] = $this->model_polling->polling();
        $this->template->load('administrator/template', 'administrator/mod_polling/view_polling', $data);
    }

    function tambah_polling()
    {
        cek_session_admin();
        if (isset($_POST['submit'])) {
            $this->model_polling->polling_tambah();
            redirect('administrator/polling');
        } else {
            $this->template->load('administrator/template', 'administrator/mod_polling/view_polling_tambah');
        }
    }

    function edit_polling()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_polling->polling_update();
            redirect('administrator/polling');
        } else {
            $data['rows'] = $this->model_polling->polling_edit($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_polling/view_polling_edit', $data);
        }
    }

    function delete_polling()
    {
        $id = $this->uri->segment(3);
        $this->model_polling->polling_delete($id);
        redirect('administrator/polling');
    }



    // Controller Modul Sekilas Info

    function sekilasinfo()
    {
        cek_session_admin();
        $data['record'] = $this->model_sekilasinfo->sekilasinfo();
        $this->template->load('administrator/template', 'administrator/mod_sekilasinfo/view_sekilasinfo', $data);
    }

    function tambah_sekilasinfo()
    {
        cek_session_admin();
        if (isset($_POST['submit'])) {
            $this->model_sekilasinfo->sekilasinfo_tambah();
            redirect('administrator/sekilasinfo');
        } else {
            $this->template->load('administrator/template', 'administrator/mod_sekilasinfo/view_sekilasinfo_tambah');
        }
    }

    function edit_sekilasinfo()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_sekilasinfo->sekilasinfo_update();
            redirect('administrator/sekilasinfo');
        } else {
            $data['rows'] = $this->model_sekilasinfo->sekilasinfo_edit($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_sekilasinfo/view_sekilasinfo_edit', $data);
        }
    }

    function delete_sekilasinfo()
    {
        $id = $this->uri->segment(3);
        $this->model_sekilasinfo->sekilasinfo_delete($id);
        redirect('administrator/sekilasinfo');
    }


    // Controller Modul Link Terkait

    function linkterkait()
    {
        cek_session_admin();
        $data['record'] = $this->model_linkterkait->linkterkait();
        $this->template->load('administrator/template', 'administrator/mod_linkterkait/view_linkterkait', $data);
    }

    function tambah_linkterkait()
    {
        cek_session_admin();
        if (isset($_POST['submit'])) {
            $this->model_linkterkait->linkterkait_tambah();
            redirect('administrator/linkterkait');
        } else {
            $this->template->load('administrator/template', 'administrator/mod_linkterkait/view_linkterkait_tambah');
        }
    }

    function edit_linkterkait()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_linkterkait->linkterkait_update();
            redirect('administrator/linkterkait');
        } else {
            $data['rows'] = $this->model_linkterkait->linkterkait_edit($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_linkterkait/view_linkterkait_edit', $data);
        }
    }

    function delete_linkterkait()
    {
        $id = $this->uri->segment(3);
        $this->model_linkterkait->linkterkait_delete($id);
        redirect('administrator/linkterkait');
    }



    // Controller Modul shoutbox

    function shoutbox()
    {
        cek_session_admin();
        $data['record'] = $this->model_shoutbox->shoutbox();
        $this->template->load('administrator/template', 'administrator/mod_shoutbox/view_shoutbox', $data);
    }

    function edit_shoutbox()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_shoutbox->shoutbox_update();
            redirect('administrator/shoutbox');
        } else {
            $data['rows'] = $this->model_shoutbox->shoutbox_edit($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_shoutbox/view_shoutbox_edit', $data);
        }
    }

    function delete_shoutbox()
    {
        $id = $this->uri->segment(3);
        $this->model_shoutbox->shoutbox_delete($id);
        redirect('administrator/shoutbox');
    }


    // Controller Modul Album

    function album()
    {
        cek_session_admin();
        $data['record'] = $this->model_album->album();
        $this->template->load('administrator/template', 'administrator/mod_album/view_album', $data);
    }

    function tambah_album()
    {
        cek_session_admin();
        if (isset($_POST['submit'])) {
            $this->model_album->album_tambah();
            redirect('administrator/album');
        } else {
            $this->template->load('administrator/template', 'administrator/mod_album/view_album_tambah');
        }
    }

    function edit_album()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_album->album_update();
            redirect('administrator/album');
        } else {
            $data['rows'] = $this->model_album->album_edit($id)->row_array();
            $this->template->load('administrator/template', 'administrator/mod_album/view_album_edit', $data);
        }
    }

    function delete_album()
    {
        $id = $this->uri->segment(3);
        $this->model_album->album_delete($id);
        redirect('administrator/album');
    }


    // Controller Modul Galeri

    function galeri()
    {
        cek_session_admin();
        $data['record'] = $this->model_album->galeri();
        $this->template->load('administrator/template', 'administrator/mod_galeri/view_galeri', $data);
    }

    function tambah_galeri()
    {
        cek_session_admin();
        if (isset($_POST['submit'])) {
            $this->model_album->galeri_tambah();
            redirect('administrator/galeri');
        } else {
            $data['record'] = $this->model_album->album();
            $this->template->load('administrator/template', 'administrator/mod_galeri/view_galeri_tambah', $data);
        }
    }

    function edit_galeri()
    {
        cek_session_admin();
        $id = $this->uri->segment(3);
        if (isset($_POST['submit'])) {
            $this->model_album->galeri_update();
            redirect('administrator/galeri');
        } else {
            $data['rows'] = $this->model_album->galeri_edit($id)->row_array();
            $data['record'] = $this->model_album->album();
            $this->template->load('administrator/template', 'administrator/mod_galeri/view_galeri_edit', $data);
        }
    }

    function delete_galeri()
    {
        $id = $this->uri->segment(3);
        $this->model_album->galeri_delete($id);
        redirect('administrator/galeri');
    }
}
