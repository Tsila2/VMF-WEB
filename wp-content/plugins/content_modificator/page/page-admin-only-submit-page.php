<?php
// Include WordPress core files if not already included
require_once('wp-load.php');

// Check if the form data was submitted via POST
if ($_POST) {

    global $wpdb;

    $table_name = $wpdb->prefix . 'content_modificator_member';

    $insert_data = array(
        'name' => sanitize_text_field($_POST['membername']),
        'firstname' => sanitize_text_field($_POST['firstname']),
        'birthdate' => sanitize_text_field($_POST['birthdate']),
        'birthplace' => sanitize_text_field($_POST['birthplace']),
        'cin' => sanitize_text_field($_POST['cin']),
        'cindate' => sanitize_text_field($_POST['cindate']),
        'cinplace' => sanitize_text_field($_POST['cinplace']),
        'phone' => sanitize_text_field($_POST['phone']),
        'mail' => sanitize_email($_POST['mail']),
        'facebook' => sanitize_text_field($_POST['facebook']),
        'parent' => sanitize_text_field($_POST['parent']),
        'parentname' => sanitize_text_field($_POST['parentname']),
        'situation' => sanitize_text_field($_POST['situation']),
        'children' => sanitize_text_field($_POST['children']),
        'education' => sanitize_text_field($_POST['education']),
        'work' => sanitize_text_field($_POST['work']),
        'talent' => sanitize_text_field($_POST['talent']),
        'religion' => sanitize_text_field($_POST['religion'])
    );

    // Insert data into the database


    // Prepare the response
    if ($wpdb->insert($table_name, $insert_data)) {

        $preferred_language = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

        // Default to English if the preferred language is not supported
        $message = '';
        switch ($preferred_language) {
            case 'fr':
                // French
                $message = "Cher nouveau membre,\n";
                $message .= "Nous sommes très reconnaissantes et très ravies de vous accueillir comme membre de l’association VMF ou « Femmes Moteurs de Développement ».\n";
                $message .= "Ensemble nous parviendrons à impacter positivement la vie des Malagasy.\n";
                $message .= "Nous vous encourageons à être active, loyale et engagée envers notre association, ainsi qu’envers sa vision et sa mission.\n";
                $message .= "Que Dieu vous bénisse déjà d’avoir accepté d’être parmi nous pour participer de manière significative au développement des femmes Malagasy et de Madagascar.\n";
                $message .= "Cordialement,\n";
                $message .= "Pasteur Annick\n";
                $message .= "La Présidente de VMF\n";
                break;
                // Add more languages as needed
            default:
                // Default to English
                $message = "Dear new member,\n";
                $message .= "We are very grateful and delighted to welcome you as a member of the VMF or 'Femmes Moteurs de Développement' association.\n";
                $message .= "Together we will positively impact the lives of the Malagasy people.\n";
                $message .= "We encourage you to be active, loyal, and committed to our association, as well as its vision and mission.\n";
                $message .= "May God bless you for choosing to be among us and contribute significantly to the development of Malagasy women and Madagascar.\n";
                $message .= "Sincerely,\n";
                $message .= "Pastor Annick\n";
                $message .= "President of VMF\n";
                break;
        }

        $to = sanitize_email($_POST['mail']);
        $subject = 'Welcome to VMF';

        $headers = 'From: Pastor Annick <annick@vmf-mada.org>';

        // Send the email
        $mail_sent = wp_mail($to, $subject, $message, $headers);

        $response = array(
            'success' => true,
            'data' => $_POST,
            'message' => 'Email Sent'
        );
    } else {
        $response = array(
            'success' => false,
            'data' => $_POST,
            'message' => 'Email Failed'
        );
    }


    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
} else {
    $response = array('error' => true);

    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
}
