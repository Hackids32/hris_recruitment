<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Sendemail extends CI_Controller
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

        // PHPMailer object
        $response = false;
        $mail = new PHPMailer();


        // SMTP configuration
        $mail->isSMTP();
        $mail->Host     = ''; //sesuaikan sesuai nama domain hosting/server yang digunakan
        $mail->SMTPAuth = true;
        $mail->Username = 'xxx@email.com'; // user email
        $mail->Password = ''; // password email
        $mail->SMTPSecure = 'ssl';
        $mail->Port     = 465;
	$mail->SMTPDebug = 2;

        $mail->setFrom('xxx@email.com', 'Admin HRIS'); // user email
        $mail->addReplyTo('xxx@email.com', 'IT Dept'); //user email

        // Add a recipient
        $mail->addAddress('xxx@email.com'); //email tujuan pengiriman email

        // Email subject
        $mail->Subject = '[Verifikasi Akun NTC Online Recruitment]'; //subject email

        // Set email format to HTML
        $mail->isHTML(true);

        // Email body content
        $mailContent = "<h1>Verifikasi Akun NTC Online Recruitment</h1>
                        <p>Laporan email SMTP Codeigniter.</p>"; // isi email
        $mail->Body = $mailContent;

        // Send email
        if (!$mail->send()) {
            echo 'Message could not be sent.';
            echo 'Mailer Error: ' . $mail->ErrorInfo;
        } else {
            echo 'Message has been sent';
        }
    }
}
