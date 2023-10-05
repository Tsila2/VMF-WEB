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
                if (stripslashes($item->title) == 'EDUCATION') {
                    echo '<p class="desc">« L\'éducation et l\'enseignement sont les clés du développement durable. »</p>';
                } else  if (stripslashes($item->title) == 'ENTREPRENEURIAT ET EMPLOI') {
                    echo '<p class="desc">« Je ne suis pas un fardeau pour la société »</p>';
                } else if (stripslashes($item->title) == 'SANTE') {
                    echo '<p class="desc">« Corps sains, esprits sains »</p>';
                } else if (stripslashes($item->title) == 'SOCIAL') {
                    echo '<p class="desc">"Une société harmonieuse où les femmes peuvent s\'épanouir dans tous les aspects"</p>';
                }

                echo '<p class="description">' . stripslashes($item->description) . '</p>';

                if (!empty($item->project)) {


                    if (stripslashes($item->title) == 'EDUCATION') {



                        $projects = explode(';', $item->project);
                        foreach ($projects as $project) {
                            // echo stripslashes(trim($project)) ."<br>";
                        }

            ?>
                        <div class="container">
                            <div class="col-md-12">
                                <div class="col-md-7" id="ed1" style="height:200px; background-color:RosyBrown;">
                                    <p>- Education civique</p>
                                    <p>- Réduction des taux d’analphabétisme</p>
                                    <p>- Augmentation du taux de scolarisation surtout au secondaire.</p>

                                </div>
                                <div class="col-md-5" style="margin:0px -15px;">
                                    <img src="<?php echo esc_url(home_url('/')); ?>wp-content/uploads/2023/09/IMG1.png" width="100%" height="200px" alt="ed1.png">

                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="col-md-4" style="margin:0px -15px;">

                                    <img class="img-fluid" src="<?php echo esc_url(home_url('/')); ?>wp-content/uploads/2023/09/IMG2.png" alt="ed2.png" height="200px" style="width:100%;">

                                </div>
                                <div class="col-md-8" id="ed2" style=" background-color: RoyalBlue; height: 200px; height: 200px;">

                                    <p>&#9830; Renforcement de la capacité des femmes par des formations professionnelles</p>
                                    <p>&#9830; Amélioration de la qualité de l’éducation</p>

                                </div>
                            </div>
                        </div>

                    <?php
                    } else if (stripslashes($item->title) == 'SANTE') {

                        $projects = explode(';', $item->project);


                        foreach ($projects as $project) {
                            // echo stripslashes(trim($project))."<br>";
                        }
                    ?>

                        <div class="container">
                            <div class="col-md-12">

                                <div class="col-md-7" id="sn1" style="height:200px; background-color:YellowGreen;">


                                    <p>- Encourager les femmes à faire les bilans de santé réguliers. Le proverbe dit « vaut mieux prévenir que guérir ». Les bilans permettent de prévenir. Des exercices physiques, éducation nutritionnelle pour la santé,…seront au programme</p>
                                    <p>- Améliorer des équipements médicaux et de diagnostic</p>

                                </div>
                                <div class="col-md-5" style="margin:0px -15px;">
                                    <img src="<?php echo esc_url(home_url('/')); ?>wp-content/uploads/2023/09/snimg1.png" width="100%" height="200px" alt="ed1.png">

                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-6" style="margin:0px -15px;">

                                    <img class="img-fluid" src="<?php echo esc_url(home_url('/')); ?>wp-content/uploads/2023/09/snimg2.png" alt="ed2.png" height="200px" style="width:100%;">

                                </div>
                                <div class="col-md-6" id="sn2" style=" background-color: SpringGreen; height: 200px; height: 200px;">
                                    <p>&#9830; Ouverture des maternités et des services d’urgence</p>
                                    <p>&#9830; Avoir des spécialistes des professionnels de santé
                                    </p>

                                </div>
                            </div>
                        </div>

                    <?php
                    } else if (stripslashes($item->title) == 'ENTREPRENEURIAT ET EMPLOI') {

                        $projects = explode(';', $item->project);
                        foreach ($projects as $project) {
                            // echo stripslashes(trim($project))."<br>";
                        }
                    ?>
                        <div class="container">
                            <div class="col-md-12">

                                <div class="col-md-7" id="tr1" style="height:200px; background-color: DarkSeaGreen;">
                                    <p>- Renforcement de la capacité des femmes par le biais de formations</p>
                                    <p>- Créer des networks pour aider les femmes à trouver du travail</p>
                                </div>
                                <div class="col-md-5" style="margin:0px -15px;">

                                    <img src="<?php echo esc_url(home_url('/')); ?>wp-content/uploads/2023/09/entimg1.png" width="100%" height="200px" alt="ed1.png">

                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="col-md-4" style="margin:0px -15px;">


                                    <img class="img-fluid" src="<?php echo esc_url(home_url('/')); ?>wp-content/uploads/2023/09/entimg2.png" alt="ed2.png" width="100%" height="200px">

                                </div>
                                <div class="col-md-8" id="tr2" style=" background-color: Cyan;">

                                    <p>- Les aider à créer leurs propres entreprises pour avoir des revenus supplémentaires. On leur donne les cannes à pêche et non le poisson.</p>
                                    <p>- Les inspirer de manière créative pour qu’elles puissent ouvrir leurs entreprises. Un soutien particulier est accordé au secteur de la transformation, ainsi qu’à l’agriculture</p>

                                </div>

                            </div>

                        </div>
                    <?php
                    } else if (stripslashes($item->title) == 'SOCIAL') {

                        $projects = explode(';', $item->project);
                        foreach ($projects as $project) {
                            // echo stripslashes(trim($project))."<br>";
                        }
                    ?>
                        <div class="container socialmission">
                            <div class="col-md-12">

                                <div class="col-md-6" id="sc1" style="height:200px; background-color: LightGoldenRodYellow;">
                                    <p>&#9830; Développement durable</p>


                                </div>
                                <div class="col-md-6" id="sc2" style="height:200px; background-color: LightCyan;">

                                    <p>&#9830; Echange culturel</p>
                                </div>
                            </div>
                            <div class="image" style="position: absolute;z-index: 999;width: 90vw; height: 400px;">
                                <div style="display: flex;flex-wrap: nowrap;align-content: center;justify-content: center;align-items: center; height: 400px;">
                                    <img src="https://www.vmf-mada.org/wp-content/uploads/2023/10/main.png" width="400px" alt="Main">
                                </div>
                            </div>

                            <div class="col-md-12">

                                <div class="col-md-6" id="sc3" style="height:200px; background-color: LightPink; display: flex; align-items: flex-end">

                                    <p style="color:black;">&#9830; Aider les personnes vulnérables
                                    </p>
                                </div>
                                <div class="col-md-6" id="sc4" style="height:200px; background-color: LightGreen; display: flex; align-items: flex-end">

                                    <p>&#9830; Centre de conseil et accompagnement
                                    </p>

                                </div>

                            </div>

                        </div>
            <?php
                    }
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
                    echo '<div class="img-container">';
                    echo '<img class="img-thumbnail"  alt="' . $imageName . '" src="' . stripslashes(trim($images[$i])) . '"/> </div>';
                }
                echo '</div>';

                // echo '<div class="media-container">';
                // $videos = explode(',', $item->video);
                // foreach ($videos as $video) {
                //     $videoName = basename(trim($video));
                //     echo '<video controls alt="' . $videoName . '" src="' . stripslashes(trim($video)) . '"/>';
                // }
                // echo '</div>';
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

<style>
    .mission p {
        margin: 5% 30px;
        color: black;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }


    .content-educ .article1 {
        display: flex;
        flex-direction: row;
        margin: 0px 130px;


    }

    .content-educ .text1 {
        background-color: #FF6262;
        width: 120%;
        height: 250PX;
    }

    .content-educ .text1 p {
        margin: 40px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-educ .text2 p {
        margin: 70px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-educ .img1 {
        background-color: yellow;
        width: 80%;
        height: 250px;
    }


    .content-educ .article2 {
        display: flex;
        flex-direction: row;
        margin: 0px 130px;
    }

    .content-educ .text2 {
        background-color: #00839C;
        width: 100%;
        height: 250PX;
    }

    .content-educ .img2 {
        background-color: white;
        width: 100%;
        height: 250px;
    }


    .content-sant .article1 {
        display: flex;
        flex-direction: row;
        margin: 0px 130px;


    }

    .content-sant .text1 {
        background-color: #FF6262;
        width: 120%;
        height: 250PX;
    }

    .content-sant .text1 p {
        margin: 40px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-sant .text2 p {
        margin: 70px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-sant .img1 {
        background-color: yellow;
        width: 80%;
        height: 250px;
    }


    .content-sant .article2 {
        display: flex;
        flex-direction: row;
        margin: 0px 130px;
    }

    .content-sant .text2 {
        background-color: #00839C;
        width: 100%;
        height: 250PX;
    }

    .content-sant .img2 {
        background-color: white;
        width: 100%;
        height: 250px;
    }







    .content-ent .article1 {
        display: flex;
        flex-direction: row;
        margin: 0px 130px;


    }

    .content-ent .text1 {
        background-color: #FF6262;
        width: 120%;
        height: 250PX;
    }

    .content-ent .text1 p {
        margin: 40px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-ent .text2 p {
        margin: 70px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-ent .img1 {
        background-color: yellow;
        width: 80%;
        height: 250px;
    }


    .content-ent .article2 {
        display: flex;
        flex-direction: row;
        margin: 0px 130px;
    }

    .content-ent .text2 {
        background-color: #F5C000;
        width: 140%;
        height: 250PX;
    }

    .content-ent .img2 {
        background-color: white;
        width: 60%;
        height: 250px;
    }



    .content-social .article1 {
        display: flex;
        flex-direction: row;
        margin: 0px 130px;


    }

    .content-social .text1 {
        background-color: #FF6262;
        width: 100%;
        height: 250PX;
    }

    .content-social .text1 p {
        margin: 40px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-social .text2 p {
        margin: 70px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-social .text11 p {
        margin: 40px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-social .text22 p {
        margin: 70px 30px;
        color: white;
        /*                        line-height: 3px;*/
        font-size: 15px;
        font-weight: bold;
    }

    .content-social .text11 {
        background-color: yellow;
        width: 100%;
        height: 250px;
    }


    .content-social .article2 {
        display: flex;
        flex-direction: row;
        margin: 0px 130px;
    }

    .content-social .text2 {
        background-color: #00839C;
        width: 100%;
        height: 250PX;
    }

    .content-social .text22 {
        background-color: white;
        width: 100%;
        height: 250px;
    }
</style>