<div class="wrapper">
    <?php
    global $wpdb;
    $table_name = $wpdb->prefix . 'content_modificator_activity';

    $idpost = "";

    if ($_POST['itemId']) {
        $idpost = $_POST['itemId'];
    } else {
        $post = $wpdb->get_results("SELECT id FROM $table_name WHERE type IS NULL LIMIT 1");
        $idpost = $post[0]->id;
    }
    ?>
    <div class="body">
        <section class="mission">
            <?php
            $activity_items = $wpdb->get_results("SELECT * FROM $table_name WHERE type IS NULL AND id = $idpost");
            foreach ($activity_items as $item) {
                echo '<h2 class="title">' . stripslashes($item->title) . '</h2>';
                echo '<p class="description">' . stripslashes($item->description) . '</p>';

                if (!empty($item->project)) {
            ?>
                    <div class="mission-content">
                        <h2 class="project-title">
                            Les projets sur :
                            <?php
                            $title = $item->title;
                            echo stripslashes($item->title); ?>
                        </h2>
                        <ul class="project-list no-padding-left">
                            <?php

                            $projects = explode(';', $item->project);
                            foreach ($projects as $project) {
                                echo '<li class="li-margin">' . stripslashes(trim($project)) . '</li>';
                            }
                            ?>
                        </ul>
                    </div>

            <?php
                }
            }
            ?>

        </section>

        <section class="mission-event">
            <?php
            global $wpdb;
            $table_name = $wpdb->prefix . 'content_modificator_event';

            $events_items = $wpdb->get_results("SELECT * FROM $table_name WHERE id_activity = $idpost");

            echo '<h2 class="event-title">Le(s) événement(s) sur : ' . $title . '</h2>';

            foreach ($events_items as $item) {
                $event_date = date_create($item->eventdate);
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
            ?>
                <div class="event-item" id="<?php echo stripslashes($item->id); ?>">
                    <?php echo '<h3 class="description">' . stripslashes($item->description) . '</h3>'; ?>


                    <p class="event_location">
                        <span class="event_left"><i class="material-icons">date_range</i>
                            <?php echo $french_date; ?>
                        </span>
                        <span class="event_right"><i class="material-icons">location_on</i>
                            <?php echo stripslashes($item->location); ?>
                        </span>
                    </p>
                <?php
                $images = explode(',', $item->image);
                $numImages = count($images);

                echo '<div class="media-container">';

                for ($i = 0; $i < $numImages; $i++) {
                    $imageName = basename(trim($images[$i]));

                    echo '<img width="49%" alt="' . $imageName . '" src="' . stripslashes(trim($images[$i])) . '"/>';
                }
                echo '</div>';

                echo '<div class="media-container">';
                $videos = explode(',', $item->video);
                foreach ($videos as $video) {
                    $videoName = basename(trim($video));
                    echo '<video controls alt="' . $videoName . '" src="' . stripslashes(trim($video)) . '"/>';
                }
                echo '</div>';
                echo '</div>';
            }
                ?>

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

                    $activity_items = $wpdb->get_results("SELECT * FROM $table_name WHERE type IS NULL AND id != $idpost");
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
    </div>


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
    </script>
</div>