<?php
/*
Plugin Name: Content Modificator
Plugin URI:  
Description: This is a custom plugin for modifying a specific table in the database.
Version:     1.0
Author:      Tsilavina Nomenjanahary
Author URI:  
License:     GPL2
License URI: https://www.gnu.org/licenses/gpl-2.0.html
Text Domain: content-modificator
Domain Path: /languages
*/

// Activation hook
register_activation_hook(__FILE__, 'content_modificator_activate');

function content_modificator_activate()
{
    // Perform activation tasks if needed
    create_table();
}

// Function to create the table in the database
function create_table()
{
    global $wpdb;

    $table_name = $wpdb->prefix . 'content_modificator_carousel'; // Replace 'custom_table' with your desired table name

    // SQL query to create the table
    $sql = "CREATE TABLE IF NOT EXISTS $table_name (
        id INT NOT NULL AUTO_INCREMENT,
        id_activity INT NOT NULL,
        type VARCHAR(255) NULL,
        title VARCHAR(255) NULL,
        description TEXT,
        image VARCHAR(255) NULL,
        PRIMARY KEY (id)
    ) ENGINE = InnoDB;";

    // Include the WordPress database upgrade file
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');

    // Execute the SQL query to create the table
    dbDelta($sql);

    $table_name = $wpdb->prefix . 'content_modificator_activity';

    $sql = "CREATE TABLE IF NOT EXISTS $table_name (
        id INT NOT NULL AUTO_INCREMENT,
        type VARCHAR(255) NULL,
        title VARCHAR(255) NOT NULL,
        description TEXT NOT NULL,
        project TEXT NULL,
        devise VARCHAR(255) NULL,
        icon VARCHAR(255) NULL,
        PRIMARY KEY (id)
    ) ENGINE = InnoDB;";

    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);

    $table_name = $wpdb->prefix . 'content_modificator_cause';

    $sql = "CREATE TABLE IF NOT EXISTS $table_name (
        id INT NOT NULL AUTO_INCREMENT,
        type VARCHAR(255) NULL,
        title VARCHAR(255) NOT NULL,
        bigtitle VARCHAR(255) NULL,
        description TEXT NOT NULL,
        image VARCHAR(255) NULL,
        raised FLOAT NULL,
        goal FLOAT NULL,
        PRIMARY KEY (id)
    ) ENGINE = InnoDB;";

    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);

    $table_name = $wpdb->prefix . 'content_modificator_event';

    $sql = "CREATE TABLE IF NOT EXISTS $table_name (
        id INT NOT NULL AUTO_INCREMENT,
        type VARCHAR(255) NULL,
        title VARCHAR(255) NOT NULL,
        description TEXT NOT NULL,
        image TEXT NULL,
        video TEXT NULL,
        location VARCHAR(255) NULL,
        eventdate DATE NULL,
        PRIMARY KEY (id)
    ) ENGINE = InnoDB;";

    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);

    global $wpdb;

    $table_name = $wpdb->prefix . 'content_modificator_member';

    $sql = "CREATE TABLE IF NOT EXISTS $table_name (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    birthplace VARCHAR(255) NOT NULL,
    cin VARCHAR(255) NOT NULL,
    cindate DATE NOT NULL,
    cinplace VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    mail VARCHAR(255) NOT NULL,
    facebook VARCHAR(255) NOT NULL,
    parent VARCHAR(255) NOT NULL,
    parentname VARCHAR(255) NOT NULL,
    situation VARCHAR(255) NOT NULL,
    children VARCHAR(255) NOT NULL,
    education TEXT,
    work TEXT,
    talent TEXT,
    religion VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;";

    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
}

// Function to handle form submissions
function form_submissions()
{
    if (isset($_POST['modify_carousel_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_carousel';

        $item_id = $_POST['modify_id'];
        $title = sanitize_text_field($_POST['title']);
        $description = sanitize_text_field($_POST['description']);

        $wpdb->update(
            $table_name,
            array(
                'title' => $title,
                'description' => $description,
            ),
            array('id' => $item_id),
            array('%s', '%s'),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }


    // Add new carousel item
    if (isset($_POST['add_carousel_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_carousel';

        // Handle adding a new event item
        $title_new = sanitize_text_field($_POST['title_new']);
        $description_new = sanitize_text_field($_POST['description_new']);


        // Insert the new event item into the database
        $wpdb->insert(
            $table_name,
            array(
                'title' => $title_new,
                'description' => $description_new,
            ),
            array('%s', '%s')
        );
    }

    // Delete selected carousel items
    if (isset($_POST['delete_carousel_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_carousel';

        $item_id = $_POST['modify_id'];
        // Delete the individual cause item from the database
        $wpdb->delete(
            $table_name,
            array('id' => $item_id),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    // Process "Upload Background Image" form submission
    if (isset($_POST['modify_carousel_background'])) {

        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_carousel';

        $modify_id = $_POST['modify_id'];
        $image = sanitize_text_field($_POST['image']);

        $wpdb->update(
            $table_name,
            array(
                'image' => $image,
            ),
            array('id' => $modify_id),
            array('%s'),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    // Handle form submission to modify activity title
    if (isset($_POST['modify_activity_title'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_activity';

        $modify_id = absint($_POST['modify_id']);
        $title = sanitize_text_field($_POST['title']);
        $description = sanitize_textarea_field($_POST['description']);

        // Update the title and description in the database
        $wpdb->update(
            $table_name,
            array(
                'title' => $title,
                'description' => $description
            ),
            array('id' => $modify_id),
            // Update the row with the specified ID
            array('%s', '%s'),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    // Handle form submission to modify activity items
    if (isset($_POST['modify_activity_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_activity';

        $item_id = $_POST['modify_id'];
        $title = sanitize_text_field($_POST['title']);
        $description = sanitize_text_field($_POST['description']);
        $icon = sanitize_text_field($_POST['icon']);
        $devise = sanitize_text_field($_POST['devise']);

        // Handle adding the new projects
        $project = isset($_POST['project']) && is_array($_POST['project']) ? array_map('sanitize_text_field', $_POST['project']) : array();

        // Remove empty values from the $project array
        $project = array_filter($project, 'strlen');

        $project_string = implode(';', $project);



        $wpdb->update(
            $table_name,
            array(
                'title' => $title,
                'description' => $description,
                'icon' => $icon,
                'devise' => $devise,
                'project' => $project_string
            ),
            array('id' => $item_id),
            array('%s', '%s', '%s', '%s', '%s'),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    if (isset($_POST['delete_activity_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_activity';

        $item_id = $_POST['modify_id'];
        // Delete the individual event item from the database
        $wpdb->delete(
            $table_name,
            array('id' => $item_id),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    if (isset($_POST['add_activity_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_activity';

        // Handle adding a new activity item
        $title_new = sanitize_text_field($_POST['title_new']);
        $description_new = sanitize_text_field($_POST['description_new']);
        $icon_new = sanitize_text_field($_POST['icon_new']);
        $devise_new = sanitize_text_field($_POST['devise_new']);

        // Handle adding the new projects
        $project = isset($_POST['project']) && is_array($_POST['project']) ? array_map('sanitize_text_field', $_POST['project']) : array();
        $project_string = implode(', ', $project);

        // Insert the new activity item into the database with the project details
        $wpdb->insert(
            $table_name,
            array(
                'type' => NULL,
                'title' => $title_new,
                'description' => $description_new,
                'icon' => $icon_new,
                'devise' => $devise_new,
                'project' => $project_string
            ),
            array('%s', '%s', '%s', '%s', '%s', '%s')
        );
    }

    if (isset($_POST['modify_cause_title'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_cause';
        $id = absint($_POST['modify_id']);
        $title = sanitize_text_field($_POST['title']);
        $bigtitle = sanitize_text_field($_POST['bigtitle']);
        $description = sanitize_text_field($_POST['description']);
        $raised = floatval($_POST['raised']);
        $goal = floatval($_POST['goal']);

        // Update the title, bigtitle, description, raised, and goal in the database
        $wpdb->update(
            $table_name,
            array(
                'title' => $title,
                'bigtitle' => $bigtitle,
                'description' => $description,
                'raised' => $raised,
                'goal' => $goal
            ),
            array('id' => $id),
            // Update the row with the specified ID
            array('%s', '%s', '%s', '%f', '%f'),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    if (isset($_POST['modify_global_event'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_event';

        $modify_id = absint($_POST['modify_id']);
        $title = sanitize_text_field($_POST['title']);
        $description = sanitize_textarea_field($_POST['description']);

        // Update the title and description in the database
        $wpdb->update(
            $table_name,
            array(
                'title' => $title,
                'description' => $description
            ),
            array('id' => $modify_id),
            // Update the row with the specified ID
            array('%s', '%s'),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    if (isset($_POST['modify_event_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_event';

        $item_id = intval($_POST['modify_id']); // Convertir en entier pour des raisons de sécurité
        $id_activity = intval($_POST['id_activity']); // Convertir en entier pour des raisons de sécurité
        $description = sanitize_text_field($_POST['description']);
        $location = sanitize_text_field($_POST['location']);
        $eventdate = sanitize_text_field($_POST['eventdate']);

        // Récupérer les images sous forme d'un tableau pour les stocker dans une chaîne séparée par des virgules
        if (isset($_POST['image']) && is_array($_POST['image'])) {
            $image = implode(',', array_map('sanitize_text_field', $_POST['image']));
        } else {
            $image = ''; // Si aucune image n'est sélectionnée, on vide le champ
        }

        // Récupérer les vidéos sous forme d'un tableau pour les stocker dans une chaîne séparée par des virgules
        if (isset($_POST['video']) && is_array($_POST['video'])) {
            $video = implode(',', array_map('sanitize_text_field', $_POST['video']));
        } else {
            $video = ''; // Si aucune vidéo n'est sélectionnée, on vide le champ
        }

        // Mettre à jour les données dans la table
        $wpdb->update(
            $table_name,
            array(
                'id_activity' => $id_activity,
                'description' => $description,
                'image' => $image,
                'video' => $video,
                'location' => $location,
                'eventdate' => $eventdate,
            ),
            array('id' => $item_id),
            array('%d', '%s', '%s', '%s', '%s', '%s'),
            array('%d') // Spécifier le type de données pour la clause WHERE (id est un entier)
        );
    }


    // Handle deletion of each event item
    if (isset($_POST['delete_event_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_event';

        $item_id = $_POST['modify_id'];
        // Delete the individual event item from the database
        $wpdb->delete(
            $table_name,
            array('id' => $item_id),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    if (isset($_POST['add_event_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_event';

        // Handle adding a new event item
        $id_activity = $_POST['id_activity'];
        $description_new = sanitize_text_field($_POST['description_new']);
        $location_new = sanitize_text_field($_POST['location_new']);
        $eventdate_new = sanitize_text_field($_POST['eventdate_new']);
        $image_new = sanitize_text_field($_POST['image_new']);
        $video_new = sanitize_text_field($_POST['video_new']);

        //Insert the new event item into the database
        $wpdb->insert(
            $table_name,
            array(
                'type' => NULL,
                'id_activity' => $id_activity,
                'description' => $description_new,
                'image' => $image_new,
                'video' => $video_new,
                'location' => $location_new,
                'eventdate' => $eventdate_new,
            ),
            array('%s', '%s', '%s', '%s', '%s', '%s', '%s')
        );
    }

    if (isset($_POST['modify_global_cause'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_cause';

        $modify_id = absint($_POST['modify_id']);
        $title = sanitize_text_field($_POST['title']);
        $description = sanitize_textarea_field($_POST['description']);

        // Update the title and description in the database
        $wpdb->update(
            $table_name,
            array(
                'title' => $title,
                'description' => $description
            ),
            array('id' => $modify_id),
            // Update the row with the specified ID
            array('%s', '%s'),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    if (isset($_POST['modify_cause_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_cause';

        $item_id = $_POST['modify_id'];
        $title = sanitize_text_field($_POST['title']);
        $description = sanitize_text_field($_POST['description']);
        $raised = floatval($_POST['raised']); // Convert to float
        $goal = floatval($_POST['goal']); // Convert to float
        $type = sanitize_text_field($_POST['type']);
        $bigtitle = sanitize_text_field($_POST['bigtitle']);
        $image = sanitize_text_field($_POST['image']);

        $wpdb->update(
            $table_name,
            array(
                'type' => $type,
                'title' => $title,
                'bigtitle' => $bigtitle,
                'description' => $description,
                'image' => $image,
                'raised' => $raised,
                'goal' => $goal
            ),
            array('id' => $item_id),
            array('%s', '%s', '%s', '%s', '%s', '%f', '%f'),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    if (isset($_POST['delete_cause_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_cause';

        $item_id = $_POST['modify_id'];
        // Delete the individual cause item from the database
        $wpdb->delete(
            $table_name,
            array('id' => $item_id),
            array('%d') // Specify the data type for the WHERE clause (id is an integer)
        );
    }

    if (isset($_POST['add_cause_item'])) {
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_cause';

        // Handle adding a new cause item
        $title_new = sanitize_text_field($_POST['title_new']);
        $description_new = sanitize_text_field($_POST['description_new']);
        $raised_new = floatval($_POST['raised_new']); // Convert to float
        $goal_new = floatval($_POST['goal_new']); // Convert to float
        $type_new = sanitize_text_field($_POST['type_new']);
        $bigtitle_new = sanitize_text_field($_POST['bigtitle_new']);
        $image_new = sanitize_text_field($_POST['image_new']);

        // Insert the new cause item into the database
        $wpdb->insert(
            $table_name,
            array(
                'type' => $type_new,
                'title' => $title_new,
                'bigtitle' => $bigtitle_new,
                'description' => $description_new,
                'image' => $image_new,
                'raised' => $raised_new,
                'goal' => $goal_new,
            ),
            array('%s', '%s', '%s', '%s', '%s', '%f', '%f') // Use %f for float values
        );
    }
}

add_action('admin_init', 'form_submissions');

function handle_image_upload($field_name)
{
    $upload_dir = wp_upload_dir();
    $upload_path = $upload_dir['basedir'] . '/';
    $uploaded_file = $_FILES[$field_name];

    $allowed_types = array('image/png', 'image/jpeg', 'image/jpg', 'image/gif', 'image/webp');
    $file_type = $uploaded_file['type'];

    if (in_array($file_type, $allowed_types)) {
        $file_name = sanitize_file_name(basename($uploaded_file['name']));
        $file_name = make_unique_file_name($upload_path, $file_name);
        $file_path = $upload_path . $file_name;

        if (move_uploaded_file($uploaded_file['tmp_name'], $file_path)) {
            return $file_name;
        }
    }

    return '';
}

function make_unique_file_name($upload_path, $file_name)
{
    $number = 1;
    $file_name_base = pathinfo($file_name, PATHINFO_FILENAME);
    $file_extension = pathinfo($file_name, PATHINFO_EXTENSION);

    while (file_exists($upload_path . $file_name)) {
        $file_name = $file_name_base . '-' . $number . '.' . $file_extension;
        $number++;
    }

    return $file_name;
}

function apply_green_tint_filter($image_path)
{
    // Determine the image format based on the file extension
    $image_info = getimagesize($image_path);
    $image_type = $image_info[2]; // This will give you the image type constant

    // Load the image based on its format
    if ($image_type === IMAGETYPE_JPEG) {
        $image = imagecreatefromjpeg($image_path);
    } elseif ($image_type === IMAGETYPE_PNG) {
        $image = imagecreatefrompng($image_path);
    } elseif ($image_type === IMAGETYPE_GIF) {
        $image = imagecreatefromgif($image_path);
    } elseif ($image_type === IMAGETYPE_WEBP) {
        $image = imagecreatefromwebp($image_path);
    } else {
        // Handle unsupported image formats or show an error message
        echo 'Unsupported image format.';
        exit;
    }

    // Define the green tint color
    $green_tint_color = imagecolorallocate($image, 0, 255, 0);

    // Apply the green tint filter to the image
    imagefilter($image, IMG_FILTER_COLORIZE, 0, 128, 0); // Adjust the third parameter (0) to change the intensity of the green tint

    // Save the modified image back to the original path
    if ($image_type === IMAGETYPE_JPEG) {
        imagejpeg($image, $image_path);
    } elseif ($image_type === IMAGETYPE_PNG) {
        imagepng($image, $image_path);
    } elseif ($image_type === IMAGETYPE_GIF) {
        imagegif($image, $image_path);
    } elseif ($image_type === IMAGETYPE_WEBP) {
        imagewebp($image, $image_path);
    } else {
        // Handle unsupported image formats or show an error message
        echo 'Unsupported image format.';
        exit;
    }

    // Free up memory
    imagedestroy($image);
}


function get_carousel_image_url()
{
    global $wpdb;
    $table_name = $wpdb->prefix . 'content_modificator_carousel';

    // Get the image path from the database where the name is "header_carousel_image"
    $image_path = $wpdb->get_var($wpdb->prepare("SELECT image FROM $table_name WHERE type = %s", 'main'));

    return $image_path;
}


// Deactivation hook
register_deactivation_hook(__FILE__, 'content_modificator_deactivate');

function content_modificator_deactivate()
{
    // Perform deactivation tasks if needed
}

function content_modificator_enqueue_scripts()
{
    wp_enqueue_media();

    wp_enqueue_style('material-icons', 'https://fonts.googleapis.com/icon?family=Material+Icons');
    wp_enqueue_style('gilroy-bold', 'https://fonts.cdnfonts.com/css/gilroy-bold');
    wp_enqueue_style('bootstrap-style', plugins_url('/custom/css/bootstrap.css', __FILE__));
    wp_enqueue_style('font-awesome-style', plugins_url('/custom/css/font-awesome.min.css', __FILE__));
    wp_enqueue_style('owl-carousel-style', plugins_url('/custom/css/owl.carousel.min.css', __FILE__));
    wp_enqueue_style('owl-theme-style', plugins_url('/custom/css/owl.theme.default.min.css', __FILE__));
    wp_enqueue_style('custom-style', plugins_url('/custom/style.css', __FILE__));
    wp_enqueue_style('responsive-style', plugins_url('/custom/responsive.css', __FILE__));
    wp_enqueue_style('header-style', plugins_url('/custom/header_style.css', __FILE__));
    wp_enqueue_style('footer-style', plugins_url('/custom/footer_style.css', __FILE__));

    wp_enqueue_script('jquery', plugins_url('/custom/js/jquery-3.1.1.min.js', __FILE__), array(), '3.1.1', true);
    wp_enqueue_script('feather-icons', 'https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js', array('jquery'), '1.0', true);
    wp_enqueue_script('animationCounter', plugins_url('/custom/js/animationCounter.js', __FILE__), array('jquery'), '1.0', true);
    wp_enqueue_script('bootstrap', plugins_url('/custom/js/bootstrap.min.js', __FILE__), array('jquery'), '1.0', true);
    wp_enqueue_script('owl-carousel', plugins_url('/custom/js/owl.carousel.min.js', __FILE__), array('jquery'), '1.0', true);
    wp_enqueue_script('active', plugins_url('/custom/js/active.js', __FILE__), array('jquery'), '1.0', true);
}

add_action('wp_enqueue_scripts', 'content_modificator_enqueue_scripts');

function content_modificator_admin_scripts()
{
    wp_enqueue_media();
    wp_enqueue_style('admin-bootstrap-style', plugins_url('/admin/assets/bootstrap.css', __FILE__));
    wp_enqueue_script('admin-content-modificator-script', plugins_url('/admin/assets/script.js', __FILE__), '1.0', true);
}

add_action('admin_enqueue_scripts', 'content_modificator_admin_scripts');


function content_modificator_add_menu_page()
{
    add_menu_page(
        'Content Modificator',
        // Page title
        'Content Modificator',
        // Menu title
        'manage_options',
        // Capability required to access the page
        'content-modificator-dashboard',
        // Unique menu slug
        'content_modificator_dashboard' // Callback function to render the dashboard page
        ,
        90
    );

    // Add the "Header Carousel" menu with its submenu
    add_submenu_page(
        'content-modificator-dashboard',
        // Parent menu slug (must match the parent's slug)
        'Carousel',
        // Page title
        'Carousel',
        // Menu title
        'manage_options',
        // Capability required to access the submenu
        'content-modificator-header-carousel',
        // Unique submenu slug
        'content_modificator_carousel' // Callback function to render the carousel page
    );

    add_submenu_page(
        'content-modificator-dashboard',
        // Parent menu slug (must match the parent's slug)
        'Programme',
        // Page title
        'Programme',
        // Menu title
        'manage_options',
        // Capability required to access the submenu
        'content-modificator-activity',
        // Unique submenu slug
        'content_modificator_activity' // Callback function to render the carousel page
    );

    add_submenu_page(
        'content-modificator-dashboard',
        // Parent menu slug (must match the parent's slug)
        'Evénement',
        // Page title
        'Evénement',
        // Menu title
        'manage_options',
        // Capability required to access the submenu
        'content-modificator-event',
        // Unique submenu slug
        'content_modificator_event' // Callback function to render the carousel page
    );

    add_submenu_page(
        'content-modificator-dashboard',
        // Parent menu slug (must match the parent's slug)
        'Membre',
        // Page title
        'Membre',
        // Menu title
        'manage_options',
        // Capability required to access the submenu
        'content-modificator-member',
        // Unique submenu slug
        'content_modificator_member' // Callback function to render the carousel page
    );
}

add_action('admin_menu', 'content_modificator_add_menu_page');


function content_modificator_dashboard()
{
    // Include the dashboard interface file
    include_once(plugin_dir_path(__FILE__) . 'admin/dashboard.php');
}

function content_modificator_carousel()
{
    // Include the dashboard interface file
    include_once(plugin_dir_path(__FILE__) . 'admin/header_carousel.php');
}

function content_modificator_activity()
{
    // Include the dashboard interface file
    include_once(plugin_dir_path(__FILE__) . 'admin/activity.php');
}

function content_modificator_cause()
{
    // Include the dashboard interface file
    include_once(plugin_dir_path(__FILE__) . 'admin/cause.php');
}

function content_modificator_event()
{
    // Include the dashboard interface file
    include_once(plugin_dir_path(__FILE__) . 'admin/event.php');
}

function content_modificator_member()
{
    // Include the dashboard interface file
    include_once(plugin_dir_path(__FILE__) . 'admin/member.php');
}


function custom_header()
{
    ob_start();

    $header_file = plugin_dir_path(__FILE__) . '/page/header.php';
    if (file_exists($header_file)) {
        include($header_file);
    } else {
        echo 'Header file not found.';
    }

    return ob_get_clean();
}
add_shortcode('custom_header', 'custom_header');

function custom_footer()
{
    ob_start();

    $footer_file = plugin_dir_path(__FILE__) . '/page/footer.php';
    if (file_exists($footer_file)) {
        include($footer_file);
    } else {
        echo 'Footer file not found.';
    }

    return ob_get_clean();
}
add_shortcode('custom_footer', 'custom_footer');

function custom_homepage()
{
    ob_start();

    $footer_file = plugin_dir_path(__FILE__) . '/page/home.php';
    if (file_exists($footer_file)) {
        include($footer_file);
    } else {
        echo 'Footer file not found.';
    }

    return ob_get_clean();
}
add_shortcode('custom_homepage', 'custom_homepage');

function custom_aboutpage()
{
    ob_start();

    $footer_file = plugin_dir_path(__FILE__) . '/page/about-us.php';
    if (file_exists($footer_file)) {
        include($footer_file);
    } else {
        echo 'Footer file not found.';
    }

    return ob_get_clean();
}
add_shortcode('custom_aboutpage', 'custom_aboutpage');

function custom_missionpage()
{
    ob_start();

    $footer_file = plugin_dir_path(__FILE__) . '/page/our-missions.php';
    if (file_exists($footer_file)) {
        include($footer_file);
    } else {
        echo 'Footer file not found.';
    }

    return ob_get_clean();
}
add_shortcode('custom_missionpage', 'custom_missionpage');

function custom_contactpage()
{
    ob_start();

    $footer_file = plugin_dir_path(__FILE__) . '/page/contact-us.php';
    if (file_exists($footer_file)) {
        include($footer_file);
    } else {
        echo 'Footer file not found.';
    }

    return ob_get_clean();
}
add_shortcode('custom_contactpage', 'custom_contactpage');

function custom_joinpage()
{
    ob_start();

    $footer_file = plugin_dir_path(__FILE__) . '/page/join-us.php';
    if (file_exists($footer_file)) {
        include($footer_file);
    } else {
        echo 'Footer file not found.';
    }

    return ob_get_clean();
}
add_shortcode('custom_joinpage', 'custom_joinpage');

function custom_submitpage()
{
    ob_start();

    $footer_file = plugin_dir_path(__FILE__) . '/page/submit-page.php';
    if (file_exists($footer_file)) {
        include($footer_file);
    } else {
        echo 'Footer file not found.';
    }

    return ob_get_clean();
}
add_shortcode('custom_submitpage', 'custom_submitpage');
