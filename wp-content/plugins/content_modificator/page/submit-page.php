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
        $response = array(
            'success' => true,
            'data' => $_POST
        );
    } else {
        $response = array(
            'success' => false,
            'data' => $_POST
        );
    }


    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($response);
} else {
    $response = array('error' => true, 'data' => $_POST);

    // Send the response as JSON
    header('Content-Type: application/json');
    echo json_encode($_POST);
}
