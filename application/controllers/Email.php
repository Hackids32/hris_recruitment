<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Email extends CI_Controller{
    
    function  __construct(){
        parent::__construct();
    }
    
    function send(){
        // Load PHPMailer library
        $this->load->library('Phpmailer_lib');
        
        // PHPMailer object
        $mail = $this->phpmailer_lib->load();
        
        // SMTP configuration
        $mail->isSMTP();
        $mail->Host     = 'ntc.co.id';
        $mail->SMTPAuth = true;
        $mail->Username = 'it1@ntc.co.id';
        $mail->Password = 'nTc@1337.';
        $mail->SMTPSecure = 'ssl';
        $mail->Port     = 465;
        
        $mail->setFrom('it1@ntc.co.id', 'Admin HRIS');
        $mail->addReplyTo('it1@ntc.co.id', 'Admin HRIS');
        
        // Add a recipient
        $mail->addAddress('inside.man108@gmail.com');
        
        // Add cc or bcc 
        $mail->addCC('nusatoyotetsu.it@gmail.com');
        $mail->addBCC('nusatoyotetsu.it@gmail.com');
        
        // Email subject
        $mail->Subject = 'Send Email via SMTP using PHPMailer in CodeIgniter';
        
        // Set email format to HTML
        $mail->isHTML(true);
        
        // Email body content
        $mailContent = "<h1>Send HTML Email using SMTP in CodeIgniter</h1>
            <p>This is a test email sending using SMTP mail server with PHPMailer.</p>";
        $mail->Body = $mailContent;
        
        // Send email
        if(!$mail->send()){
            echo 'Message could not be sent.';
            echo 'Mailer Error: ' . $mail->ErrorInfo;
        }else{
            echo 'Message has been sent';
        }
    }
    
}