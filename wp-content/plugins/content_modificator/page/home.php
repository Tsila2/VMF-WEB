<?php
$upload_dir = wp_upload_dir();
?>
<div class="wrapper">
    <section class="carousel-area">
        <div class="carousel-content" style="background-image: url('<?php echo get_carousel_image_url(); ?>');">

            <div class="carousel-item">
                <div class="client owl-carousel owl-theme">
                    <?php
                    global $wpdb;
                    $table_name = $wpdb->prefix . 'content_modificator_carousel';

                    // Fetch data from the table
                    $carousel_items = $wpdb->get_results("SELECT * FROM $table_name WHERE type IS NULL");

                    foreach ($carousel_items as $item) {
                    ?>
                        <div class="carousel-content-item">
                            <br>
                            <h2>NOTRE DEVISE</h2>
                            <h3>JUSTICE - BONTE - COURAGE</h3>

                            <h4 class="title">
                                <?php echo stripslashes($item->title); ?>
                            </h4>
                            <p class="description">
                                <?php echo stripslashes($item->description); ?>
                            </p>
                            <button tabindex="0" onclick="donate()" class="btn donation">
                                Faire un don
                            </button>
                        </div>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </section>

    <section class="activity">
        <?php
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_activity';

        $activity_items = $wpdb->get_results("SELECT * FROM $table_name WHERE type = 'main'");
        foreach ($activity_items as $item) {
            echo '<h2 class="title">' . stripslashes($item->title) . '</h2>';
            echo '<p class="description">' . stripslashes($item->description) . '</p>';
        }
        ?>
        <div class="activity-content-container">
            <div class="activity-content owl-carousel owl-theme">
                <?php
                global $wpdb;
                $table_name = $wpdb->prefix . 'content_modificator_activity';

                $activity_items = $wpdb->get_results("SELECT * FROM $table_name WHERE type IS NULL");
                foreach ($activity_items as $item) {
                ?>
                    <div class="activity-content-items" style="margin-bottom: 20px" onclick="goToMission(<?php echo $item->id; ?>)">
                        <div class="promo-icon">
                            <i class="material-icons">
                                <?php echo stripslashes($item->icon); ?>
                            </i>
                        </div>
                        <h2>
                            <?php echo stripslashes($item->title); ?>
                        </h2>
                        <p class="description">
                            <?php echo stripslashes($item->description); ?>
                        </p>
                    </div>
                <?php
                }
                ?>
            </div>
        </div>
    </section>



    <div class="block-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12 for-border">
                    <div class="block">
                        <p><i class="material-icons">language</i></p>
                        <p class="counter-wrapper"><span class="code"></span></p>
                        <p class="text-block">PLACES</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12 for-border">
                    <div class="block">
                        <p><i class="material-icons">person_add</i></p>
                        <p class="counter-wrapper"><span class="bike"></span></p>
                        <p class="text-block">BENEVOLES</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12 for-border">
                    <div class="block">
                        <p><i class="material-icons">people</i></p>
                        <p class="counter-wrapper"><span class="coffee"></span></p>
                        <p class="text-block">AIDER</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="event">
        <?php
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_event';
        $events = $wpdb->get_results("SELECT * FROM $table_name WHERE type = 'main'");


        foreach ($events as $event) {
        ?>
            <h2 class="title">
                <?php echo stripslashes($event->title); ?>
            </h2>
            <p class="description">
                <?php echo stripslashes($event->description); ?>
            </p>
        <?php
        }
        ?>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="event-content owl-carousel owl-theme">
                        <?php
                        global $wpdb;
                        $table_name = $wpdb->prefix . 'content_modificator_event';

                        $events = $wpdb->get_results("SELECT * FROM $table_name WHERE type IS NULL");

                        foreach ($events as $event) {
                            $image_urls = explode(',', $event->image); // Split the image URLs into an array

                            // Check if there are any image URLs in the array
                            if (!empty($image_urls[0])) {
                                $first_image_url = trim($image_urls[0]); // Retrieve the first image URL and remove leading/trailing spaces
                            } else {
                                $first_image_url = $upload_dir['baseurl'] . '/default-image.png'; // Use default image if no URLs found
                            }
                        ?>
                            <div class="item" onclick="goToEvent(<?php echo $event->id; ?>,<?php echo $event->id_activity; ?>)">
                                <div class="responsive-image-container">
                                    <img class="responsive-image" src="<?php echo esc_url($first_image_url); ?>" alt="">
                                </div>
                                <p class="padding-p">
                                    <span class="event_left"><i class="material-icons">date_range</i>
                                        <?php
                                        // Retrieve the date and convert it to French format
                                        $event_date = date_create($event->eventdate);
                                        $french_month = array(
                                            1 => 'Janvier',
                                            2 => 'Février',
                                            3 => 'Mars',
                                            4 => 'Avril',
                                            5 => 'Mai',
                                            6 => 'Juin',
                                            7 => 'Juillet',
                                            8 => 'Août',
                                            9 => 'Septembre',
                                            10 => 'Octobre',
                                            11 => 'Novembre',
                                            12 => 'Décembre'
                                        );
                                        $day = $event_date->format('d');
                                        $month = $french_month[intval($event_date->format('m'))];
                                        $year = $event_date->format('Y');
                                        $french_date = $day . ' ' . $month . ' ' . $year;
                                        echo $french_date;
                                        ?>
                                    </span>
                                    <span class="event_right"><i class="material-icons">location_on</i>
                                        <?php echo stripslashes($event->location); ?>
                                    </span>
                                </p>

                                <h3 class="event-title">
                                    <?php
                                    // Assume $event->id_activity contains the id of the activity in content_modificator_activity table
                                    $id_activity = $event->id_activity;

                                    // Connect to the database and retrieve the title from content_modificator_activity table
                                    global $wpdb;
                                    $table_name_activity = $wpdb->prefix . 'content_modificator_activity';
                                    $activity_title = $wpdb->get_var($wpdb->prepare("SELECT title FROM $table_name_activity WHERE id = %d", $id_activity));

                                    // Output the title
                                    echo stripslashes($activity_title);
                                    ?>

                                </h3>
                                <p class="description">
                                    <?php echo stripslashes($event->description); ?>
                                </p>
                            </div>
                        <?php
                        }
                        ?>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <script>
        // Function to submit the itemId via POST
        function goToMission(itemId) {
            const form = document.createElement('form');
            form.method = 'post';
            form.action = "<?php echo esc_url(home_url('/our-missions/')); ?>";
            const input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'itemId';
            input.value = itemId;
            form.appendChild(input);
            document.body.appendChild(form);
            form.submit();
        }

        function goToEvent(MissionId, itemId) {
            const form = document.createElement('form');
            form.method = 'post';
            form.action = "<?php echo esc_url(home_url('/our-missions/')); ?>#" + MissionId;
            const input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'itemId';
            input.value = itemId;
            form.appendChild(input);
            document.body.appendChild(form);
            form.submit();
        }
    </script>
</div>