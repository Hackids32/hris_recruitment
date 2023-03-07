<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Register extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        require APPPATH . 'libraries/phpmailer/src/Exception.php';
        require APPPATH . 'libraries/phpmailer/src/PHPMailer.php';
        require APPPATH . 'libraries/phpmailer/src/SMTP.php';
    }

    function index()
    {
        //cek_session_admin();
        if (isset($_POST['submit'])) {
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

            // Send email verification
            $response = false;
            $mail = new PHPMailer();

            // SMTP configuration
            $mail->isSMTP();
            $mail->Host     = 'ntc.co.id'; //sesuaikan sesuai nama domain hosting/server yang digunakan
            $mail->SMTPAuth = true;
            $mail->Username = 'it1@ntc.co.id'; // user email
            $mail->Password = 'nTc@1337.'; // password email
            $mail->SMTPSecure = 'ssl';
            $mail->Port     = 465;

            $mail->setFrom('hris.noreply@ntc.co.id', 'Admin HRIS'); // user email
            $mail->addReplyTo('it1@ntc.co.id', 'IT Dept'); //user email

            // Add a recipient
            $email_tujuan = $this->input->post('email');
            $mail->addAddress($email_tujuan); //email tujuan pengiriman email

            // Email subject
            $mail->Subject = '[Verifikasi Akun NTC Online Recruitment]'; //subject email

            // Set email format to HTML
            $mail->isHTML(true);

            // Email body content
            $date = '313379' . date('Ymd') . $newKode;
            $mailContent = "<h1>Verifikasi Akun NTC Online Recruitment</h1>
                        <p>Segera aktifkan akun anda untuk melanjutkan proses seleksi online karyawan <b>PT. Nusa Toyotetsu<b>. Berikut 
                        adalah link aktivasi nya : <br><br>
                        <a href='https://hris.ntc.co.id/erecruit/aktivasi.php?token=$date'>AKTIVASI DISINI</a>
                        <br><br>
                        Note: Link aktivasi expired 1x24 jam</p>"; // isi email
            $mail->Body = $mailContent;

            // Send email
            if (!$mail->send()) {
                //echo 'Message could not be sent.';
                //echo 'Mailer Error: ' . $mail->ErrorInfo;
                $this->session->set_flashdata('status', 'Maaf registrasi anda gagal, silahkan coba lagi');
                redirect('login', 'refresh');
            } else {
                //echo 'Message has been sent';
                $this->load->model('Model_users', 'model_users');
                $simpan = $this->model_users->users_tambah();
                $this->session->set_flashdata('status', 'Segera aktivasi akun anda melalui link yang sudah dikirim ke email anda');
                redirect('login', 'refresh');
            }
            
        } else {
            $data['title'] = 'Candidate &rsaquo; Sign Up';
            $this->load->view('register/view_login', $data);
        }
    }
}
