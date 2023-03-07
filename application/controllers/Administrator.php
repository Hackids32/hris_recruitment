<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Administrator extends CI_Controller
{
	function index()
	{
		if (isset($_POST['submit'])) {
			$username = $this->input->post('a');
			$password = md5($this->input->post('b'));
			$cek = $this->model_users->cek_login_admin($username, $password);
			$row = $cek->row_array();
			$total = $cek->num_rows();
			if ($total > 0) {
				$this->session->set_userdata('upload_image_file_manager', true);
				$this->session->set_userdata(array(
					'username' => $row['username'],
					'level' => $row['level']
				));
				redirect('administrator/home');
			} else {
				$data['title'] = 'Administrator &rsaquo; Log In';
				$this->load->view('administrator/view_login', $data);
			}
		} else {
			if ($this->session->level != '') {
				redirect('administrator/home');
			} else {
				$data['title'] = 'Administrator &rsaquo; Log In';
				$this->load->view('administrator/view_login', $data);
			}
		}
	}

	function home()
	{
		cek_session_admin();
        if($this->session->level=='admin')
        {
            $this->template->load('administrator/template', 'administrator/view_home');
        }
        else
        {
            redirect('login/home');
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

	// Controller Modul Menu Utama

	function menuutama()
	{
		cek_session_admin();
		$data['record'] = $this->model_menu->menuutama();
		$this->template->load('administrator/template', 'administrator/mod_menu/view_menu', $data);
	}

	function tambah_menuutama()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_menu->menuutama_tambah();
			redirect('administrator/menuutama');
		} else {
			$this->template->load('administrator/template', 'administrator/mod_menu/view_menu_tambah');
		}
	}

	function edit_menuutama()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_menu->menuutama_update();
			redirect('administrator/menuutama');
		} else {
			$data['rows'] = $this->model_menu->menuutama_edit($id)->row_array();
			$this->template->load('administrator/template', 'administrator/mod_menu/view_menu_edit', $data);
		}
	}

	function delete_menuutama()
	{
		$id = $this->uri->segment(3);
		$this->model_menu->menuutama_delete($id);
		redirect('administrator/menuutama');
	}

	// Controller Modul Sub Menu

	function submenu()
	{
		cek_session_admin();
		$data['record'] = $this->model_menu->submenu();
		$this->template->load('administrator/template', 'administrator/mod_submenu/view_submenu', $data);
	}

	function tambah_submenu()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_menu->submenu_tambah();
			redirect('administrator/submenu');
		} else {
			$data['utama'] = $this->model_menu->cek_menuutama();
			$data['submenu'] = $this->model_menu->cek_submenu();
			$this->template->load('administrator/template', 'administrator/mod_submenu/view_submenu_tambah', $data);
		}
	}

	function edit_submenu()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_menu->submenu_update();
			redirect('administrator/submenu');
		} else {
			$data['rows'] = $this->model_menu->submenu_edit($id)->row_array();
			$data['utama'] = $this->model_menu->cek_menuutama();
			$data['submenu'] = $this->model_menu->cek_submenu();
			$this->template->load('administrator/template', 'administrator/mod_submenu/view_submenu_edit', $data);
		}
	}

	function delete_submenu()
	{
		$id = $this->uri->segment(3);
		$this->model_menu->submenu_delete($id);
		redirect('administrator/submenu');
	}


	// Controller Modul Halaman Baru

	function halamanbaru()
	{
		cek_session_admin();
		$data['record'] = $this->model_halaman->halamanstatis();
		$this->template->load('administrator/template', 'administrator/mod_halaman/view_halaman', $data);
	}

	function tambah_halamanbaru()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_halaman->halamanstatis_tambah();
			redirect('administrator/halamanbaru');
		} else {
			$this->template->load('administrator/template', 'administrator/mod_halaman/view_halaman_tambah');
		}
	}

	function edit_halamanbaru()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_halaman->halamanstatis_update();
			redirect('administrator/halamanbaru');
		} else {
			$data['rows'] = $this->model_halaman->halamanstatis_edit($id)->row_array();
			$this->template->load('administrator/template', 'administrator/mod_halaman/view_halaman_edit', $data);
		}
	}

	function delete_halamanbaru()
	{
		$id = $this->uri->segment(3);
		$this->model_halaman->halamanstatis_delete($id);
		redirect('administrator/halamanbaru');
	}

	// Controller Modul List Berita

	function cepat_berita()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_berita->list_berita_cepat();
			redirect('administrator/berita');
		}
	}

	function job()
	{
		cek_session_admin();
		$data['record'] = $this->model_berita->list_berita();
		$data['iden'] = $this->db->query("SELECT * FROM identitas ORDER BY id_identitas DESC LIMIT 1")->row_array();
		$this->load->view(template() . '/rss', $data);
		$this->template->load('administrator/template', 'administrator/mod_job/view_job', $data);
	}

	function tambah_job()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_berita->list_berita_tambah();
			redirect('administrator/job');
		} else {
			$data['record'] = $this->model_berita->kategori_department();
			$data['users'] = $this->model_users->users();
			$this->template->load('administrator/template', 'administrator/mod_job/view_job_tambah', $data);
		}
	}

	function edit_job()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_berita->list_berita_update();
			redirect('administrator/job');
		} else {
			$data['record'] = $this->model_berita->kategori_department();
			$data['rows'] = $this->model_berita->list_berita_edit($id)->row_array();
			$data['users'] = $this->model_users->users();
			$this->template->load('administrator/template', 'administrator/mod_job/view_job_edit', $data);
		}
	}

	function delete_job()
	{
		$id = $this->uri->segment(3);
		$this->model_berita->list_berita_delete($id);
		redirect('administrator/job');
	}

	// Controller Modul nama dept

	function department()
	{
		cek_session_admin();
		$data['record'] = $this->model_berita->kategori_department();
		$this->template->load('administrator/template', 'administrator/mod_department/view_department', $data);
	}

	function tambah_department()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_berita->kategori_berita_tambah();
			redirect('administrator/department');
		} else {
			$this->template->load('administrator/template', 'administrator/mod_department/view_department_tambah');
		}
	}

	function edit_department()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_berita->kategori_berita_update();
			redirect('administrator/department');
		} else {
			$data['rows'] = $this->model_berita->kategori_berita_edit($id)->row_array();
			$this->template->load('administrator/template', 'administrator/mod_department/view_department_edit', $data);
		}
	}

	function delete_department()
	{
		$id = $this->uri->segment(3);
		$this->model_berita->kategori_berita_delete($id);
		redirect('administrator/department');
	}


	// Controller Modul Sensor Kata

	function sensorkata()
	{
		cek_session_admin();
		$data['record'] = $this->model_berita->sensorkata();
		$this->template->load('administrator/template', 'administrator/mod_sensorkata/view_sensorkata', $data);
	}

	function tambah_sensorkata()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_berita->sensorkata_tambah();
			redirect('administrator/sensorkata');
		} else {
			$this->template->load('administrator/template', 'administrator/mod_sensorkata/view_sensorkata_tambah');
		}
	}

	function edit_sensorkata()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_berita->sensorkata_update();
			redirect('administrator/sensorkata');
		} else {
			$data['rows'] = $this->model_berita->sensorkata_edit($id)->row_array();
			$this->template->load('administrator/template', 'administrator/mod_sensorkata/view_sensorkata_edit', $data);
		}
	}

	function delete_sensorkata()
	{
		$id = $this->uri->segment(3);
		$this->model_berita->sensorkata_delete($id);
		redirect('administrator/sensorkata');
	}

	// Controller Modul Iklan Sidebar

	function banner()
	{
		cek_session_admin();
		$data['record'] = $this->model_iklan->banner();
		$this->template->load('administrator/template', 'administrator/mod_banner/view_banner', $data);
	}

	function tambah_banner()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_iklan->banner_tambah();
			redirect('administrator/banner');
		} else {
			$this->template->load('administrator/template', 'administrator/mod_banner/view_banner_tambah');
		}
	}

	function edit_banner()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_iklan->banner_update();
			redirect('administrator/banner');
		} else {
			$data['rows'] = $this->model_iklan->banner_edit($id)->row_array();
			$this->template->load('administrator/template', 'administrator/mod_banner/view_banner_edit', $data);
		}
	}

	function delete_banner()
	{
		$id = $this->uri->segment(3);
		$this->model_iklan->banner_delete($id);
		redirect('administrator/banner');
	}



	// Controller Modul Template Website

	function templatewebsite()
	{
		cek_session_admin();
		$data['record'] = $this->model_template->template();
		$this->template->load('administrator/template', 'administrator/mod_template/view_template', $data);
	}

	function tambah_templatewebsite()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_template->template_tambah();
			redirect('administrator/templatewebsite');
		} else {
			$this->template->load('administrator/template', 'administrator/mod_template/view_template_tambah');
		}
	}

	function edit_templatewebsite()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_template->template_update();
			redirect('administrator/templatewebsite');
		} else {
			$data['rows'] = $this->model_template->template_edit($id)->row_array();
			$this->template->load('administrator/template', 'administrator/mod_template/view_template_edit', $data);
		}
	}

	function delete_templatewebsite()
	{
		$id = $this->uri->segment(3);
		$this->model_template->template_delete($id);
		redirect('administrator/templatewebsite');
	}



	// Controller Modul Agenda

	function agenda()
	{
		cek_session_admin();
		$data['record'] = $this->model_agenda->agenda();
		$this->template->load('administrator/template', 'administrator/mod_agenda/view_agenda', $data);
	}

	function tambah_agenda()
	{
		cek_session_admin();
		if (isset($_POST['submit'])) {
			$this->model_agenda->agenda_tambah();
			redirect('administrator/agenda');
		} else {
			$this->template->load('administrator/template', 'administrator/mod_agenda/view_agenda_tambah');
		}
	}

	function edit_agenda()
	{
		cek_session_admin();
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])) {
			$this->model_agenda->agenda_update();
			redirect('administrator/agenda');
		} else {
			$data['rows'] = $this->model_agenda->agenda_edit($id)->row_array();
			$this->template->load('administrator/template', 'administrator/mod_agenda/view_agenda_edit', $data);
		}
	}

	function delete_agenda()
	{
		$id = $this->uri->segment(3);
		$this->model_agenda->agenda_delete($id);
		redirect('administrator/agenda');
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

	function manajemenuser()
	{
		cek_session_admin();
		$data['record'] = $this->model_users->users();
		$this->template->load('administrator/template', 'administrator/mod_users/view_users', $data);
	}

	function tambah_manajemenuser()
	{
		cek_session_admin();
		$id = $this->session->username;
		if (isset($_POST['submit'])) {
			$this->model_users->users_tambah();
			redirect('administrator/manajemenuser');
		} else {
			$data['mo'] = $this->model_modul->users_modul();
			$data['rows'] = $this->model_users->users_edit($id)->row_array();
			$this->template->load('administrator/template', 'administrator/mod_users/view_users_tambah', $data);
		}
	}

	function edit_manajemenuser()
	{
		cek_session_admin();
		if($this->session->level=='admin')
        {
            $id = $this->uri->segment(3);
			if (isset($_POST['submit'])) {
				$this->model_users->users_update();
				redirect('administrator/manajemenuser');
			} else {
				$data['mo'] = $this->model_modul->users_modul();
				$data['rows'] = $this->model_users->users_edit($id)->row_array();
				$this->template->load('administrator/template', 'administrator/mod_users/view_users_edit', $data);
			}
        }
        else
        {
            redirect('login/home');
        }
	}

	function delete_manajemenuser()
	{
		$id = $this->uri->segment(3);
		$this->model_users->users_delete($id);
		redirect('administrator/manajemenuser');
	}

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
