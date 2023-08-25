<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificateur de Contenu d'Événement</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <style>
        .img-container {
            position: relative;
            width: 100%;
            padding-top: 56.25%;
            /* 16:9 Aspect Ratio (h/w * 100) */
            overflow: hidden;
        }

        .img-container img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .event-item {
            background-color: whitesmoke;
            margin-right: 1;
        }

        .card {
            width: 100% !important;
            position: relative;
            margin-top: 20px;
            padding: .7em 2em 1em;
            min-width: 100%;
            max-width: 100%;
        }

        h2 {
            text-align: center;
            margin-top: 50px;
            margin-bottom: 20px;
        }

        .image-options {
            position: absolute;
            top: 5px;
            right: 5px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 5px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Modificateur de Contenu d'Événement</h1>

        <!-- Modifier le Titre et la Description Globaux de l'Événement -->
        <h2>Modifier le Titre et la Description Globaux de l'Événement</h2>
        <form method="post" action="" class="form-horizontal">
            <?php
            global $wpdb;
            $table_name = $wpdb->prefix . 'content_modificator_event';

            $global_event = $wpdb->get_row("SELECT * FROM $table_name WHERE type = 'main'");
            if ($global_event) {
                ?>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">Titre :</label>
                    <div class="col-sm-10">
                        <input type="hidden" name="modify_id" value="<?php echo stripslashes($global_event->id); ?>">
                        <input type="text" name="title" class="form-control"
                            value="<?php echo stripslashes($global_event->title); ?>" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="description" class="col-sm-2 control-label">Description :</label>
                    <div class="col-sm-10">
                        <textarea name="description" class="form-control" rows="4" style="resize: none;"
                            required><?php echo stripslashes($global_event->description); ?></textarea>
                    </div>
                </div>
                <?php
            }
            ?>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" name="modify_global_event" class="btn btn-primary"
                        value="Modifier l'Événement Global">
                </div>
            </div>
        </form>

        <!-- Modifier les Éléments de l'Événement -->
        <h2>Modifier les Éléments de l'Événement</h2>
        <div class="row">
            <?php
            global $wpdb;
            $table_name = $wpdb->prefix . 'content_modificator_event';
            $upload_dir = wp_upload_dir();

            $event_items = $wpdb->get_results("SELECT * FROM $table_name WHERE type IS NULL");
            foreach ($event_items as $item) {
                ?>
                <div class="col-md-6">
                    <form method="post" action="" class="form-horizontal" enctype="multipart/form-data">
                        <div class="event-item card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="id_activity" class="col-sm-3 control-label">Titre Programme:</label>
                                    <div class="col-sm-9">
                                        <input type="hidden" name="modify_id"
                                            value="<?php echo stripslashes($item->id); ?>">
                                        <select name="id_activity" class="form-control" required>
                                            <?php
                                            // Connexion à la base de données WordPress
                                            global $wpdb;

                                            // Récupérer les données de la table content_modificator_activity
                                            $table_name = $wpdb->prefix . 'content_modificator_activity';
                                            $query = "SELECT id, title FROM $table_name WHERE type IS NULL";
                                            $results = $wpdb->get_results($query);

                                            // Parcourir les résultats et afficher les options dans le select
                                            foreach ($results as $result) {
                                                $id = $result->id;
                                                $title = $result->title;
                                                $selected = ($item->id_activity == $id) ? 'selected' : ''; // Check if the value matches, then add 'selected' attribute
                                                echo "<option value=\"$id\" $selected>$title</option>";
                                            }
                                            ?>
                                        </select>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="description" class="col-sm-3 control-label">Description :</label>
                                    <div class="col-sm-9">
                                        <textarea name="description" class="form-control" rows="4" style="resize: none;"
                                            required><?php echo stripslashes($item->description); ?></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Images :</label>
                                    <div class="col-sm-9">
                                        <?php
                                        $images = explode(',', stripslashes($item->image));
                                        foreach ($images as $index => $image) {
                                            ?>
                                            <div class="img-container" id="div_<?php echo $item->id . '_' . $index; ?>"
                                                onclick="toggleOptions('<?php echo $item->id . '_' . $index; ?>')">
                                                <img src="<?php echo $image; ?>"
                                                    id="image_<?php echo $item->id . '_' . $index; ?>" class="img-thumbnail"
                                                    alt="Click to change">
                                                <div class="image-options" id="options_<?php echo $item->id . '_' . $index; ?>"
                                                    style="display: none;">
                                                    <i class="material-icons upload-image-button"
                                                        style="color: green; cursor: pointer"
                                                        data-target="image_<?php echo $item->id . '_' . $index; ?>">edit</i>
                                                    &nbsp;&nbsp;
                                                    <i class="material-icons" style="color: red; cursor: pointer"
                                                        onclick="deleteImage('<?php echo $item->id . '_' . $index; ?>')">delete</i>
                                                </div>
                                                <input type="hidden" name="image[]"
                                                    id="image_<?php echo $item->id . '_' . $index; ?>" class="regular-text"
                                                    value="<?php echo $image; ?>" />
                                            </div>
                                            <?php
                                        }
                                        ?>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Videos :</label>
                                    <div class="col-sm-9">
                                        <?php
                                        $videos = explode(',', stripslashes($item->video));
                                        foreach ($videos as $index => $video) {
                                            ?>
                                            <video src="<?php echo $video; ?>"
                                                id="video_<?php echo $item->id . '_' . $index; ?>" class="img-thumbnail"
                                                onclick="triggerFileInput('video_<?php echo $item->id . '_' . $index; ?>')"
                                                style="cursor: pointer" alt="Click to change" controls> </video>

                                            <input type="hidden" name="video[]"
                                                id="video_<?php echo $item->id . '_' . $index; ?>" class="regular-text"
                                                value="<?php echo $video; ?>" />
                                            <button class="button upload-video-button"
                                                data-target="video_<?php echo $item->id . '_' . $index; ?>"
                                                id="video_<?php echo $item->id . '_' . $index; ?>"
                                                style="display: none "></button>
                                            <?php
                                        }
                                        ?>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="location" class="col-sm-3 control-label">Lieu :</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="location" class="form-control"
                                            value="<?php echo stripslashes($item->location); ?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="eventdate" class="col-sm-3 control-label">Date :</label>
                                    <div class="col-sm-9">
                                        <input type="date" name="eventdate" class="form-control"
                                            value="<?php echo stripslashes($item->eventdate); ?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <input type="submit" name="modify_event_item" class="btn btn-primary"
                                            value="Modifier">
                                        <input type="submit" name="delete_event_item" class="btn btn-warning"
                                            value="Supprimer" onclick="return confirmDelete()">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            <?php } ?>
        </div>

        <!-- Nouveau formulaire pour ajouter un nouvel élément d'événement -->
        <h2>Ajouter un Nouvel Élément d'Événement</h2>
        <form method="post" action="" class="form-horizontal" enctype="multipart/form-data">
            <div class="col-md-offset-3 col-md-6">
                <div class="event-item card">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="id_activity" class="col-sm-3 control-label">Titre Programme:</label>
                            <div class="col-sm-9">
                                <select name="id_activity" class="form-control" required>
                                    <?php
                                    // Connexion à la base de données WordPress
                                    global $wpdb;

                                    // Récupérer les données de la table content_modificator_activity
                                    $table_name = $wpdb->prefix . 'content_modificator_activity';
                                    $query = "SELECT id, title FROM $table_name WHERE type IS NULL";
                                    $results = $wpdb->get_results($query);

                                    // Parcourir les résultats et afficher les options dans le select
                                    foreach ($results as $result) {
                                        $id = $result->id;
                                        $title = $result->title;
                                        echo "<option value=\"$id\">$title</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description_new" class="col-sm-3 control-label">Description :</label>
                            <div class="col-sm-9">
                                <textarea name="description_new" class="form-control" rows="4" style="resize: none;"
                                    required></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="image_new" class="col-sm-3 control-label">Image :</label>
                            <div class="col-sm-9">
                                <input type="text" name="image_new" id="image_new" class="form-control" />
                                <button class="button upload-image-button" data-target="image_new"
                                    id="image_new">Ajouter/Choisir</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="video_new" class="col-sm-3 control-label">Video :</label>
                            <div class="col-sm-9">
                                <input type="text" name="video_new" id="video_new" class="form-control" />
                                <button class="button upload-video-button" data-target="video_new"
                                    id="image_new">Ajouter/Choisir</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="location_new" class="col-sm-3 control-label">Lieu :</label>
                            <div class="col-sm-9">
                                <input type="text" name="location_new" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="eventdate_new" class="col-sm-3 control-label">Date :</label>
                            <div class="col-sm-9">
                                <input type="date" name="eventdate_new" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <input type="submit" name="add_event_item" class="btn btn-success" value="Ajouter">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</body>

</html>