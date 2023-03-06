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
        $mail->Host     = 'ntc.co.id'; //sesuaikan sesuai nama domain hosting/server yang digunakan
        $mail->SMTPAuth = true;
        $mail->Username = 'it1@ntc.co.id'; // user email
        $mail->Password = 'ntc2743.'; // password email
        $mail->SMTPSecure = 'ssl';
        $mail->Port     = 465;

        $mail->setFrom('hris.noreply@ntc.co.id', 'Admin HRIS'); // user email
        $mail->addReplyTo('it1@ntc.co.id', 'IT Dept'); //user email

        // Add a recipient
        $mail->addAddress('inside.man108@gmail.com'); //email tujuan pengiriman email

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
