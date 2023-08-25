<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificateur de Contenu d'Événement</title>
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

        h2 {
            text-align: center;
            margin-top: 50px;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Modificateur de Contenu du Carousel</h1>

        <h2>Modifier l'image Arriere Plan</h2>
        <form method="post" action="" class="form-horizontal">
            <?php
            global $wpdb;
            $table_name = $wpdb->prefix . 'content_modificator_carousel';

            $global_carousel = $wpdb->get_row("SELECT * FROM $table_name WHERE type = 'main'");
            if ($global_carousel) {
                ?>
                <div class="form-group">
                    <input type="hidden" name="modify_id" value="<?php echo stripslashes($global_carousel->id); ?>">
                    <div class="col-sm-offset-3 col-sm-6">
                        <div class="img-container">
                            <img src="<?php echo stripslashes($global_carousel->image); ?>" id="image_<?php echo $item->id; ?>"
                                class="img-thumbnail" onclick="triggerFileInput('image_<?php echo $global_carousel->id; ?>')"
                                style="cursor: pointer" alt="Cliquez pour changer">
                        </div>

                        <input type="hidden" name="image" id="image_<?php echo $item->id; ?>" class="regular-text"
                            value="<?php echo stripslashes($global_carousel->image); ?>" />
                        <button class="button upload-image-button" data-target="image_<?php echo $item->id; ?>"
                            id="image_<?php echo $global_carousel->id; ?>" style="display: none "></button>
                    </div>
                </div>
                <?php
            }
            ?>
            <div class="form-group">
                <div class="text-center">
                    <input type="submit" name="modify_carousel_background" class="btn btn-primary" value="Modifier">
                </div>
            </div>
        </form>

        <!-- Modifier les Éléments de l'Événement -->
        <h2>Modifier les Éléments du Carousel</h2>
        <div class="row">
            <?php
            global $wpdb;
            $table_name = $wpdb->prefix . 'content_modificator_carousel';
            $upload_dir = wp_upload_dir();

            $event_items = $wpdb->get_results("SELECT * FROM $table_name WHERE type IS NULL");
            foreach ($event_items as $item) {
                ?>
                <div class="col-md-6">
                    <form method="post" action="" class="form-horizontal" enctype="multipart/form-data">
                        <div class="event-item card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="title" class="col-sm-3 control-label">Titre :</label>
                                    <div class="col-sm-9">
                                        <input type="hidden" name="modify_id" value="<?php echo stripslashes($item->id); ?>">
                                        <input type="text" name="title" class="form-control"
                                            value="<?php echo stripslashes($item->title); ?>" required>
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
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <input type="submit" name="modify_carousel_item" class="btn btn-primary"
                                            value="Modifier">
                                        <input type="submit" name="delete_carousel_item" class="btn btn-warning"
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
        <h2>Ajouter un Nouvel Élément dans la Carousel</h2>
        <form method="post" action="" class="form-horizontal" enctype="multipart/form-data">
            <div class="event-item card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="title_new" class="col-sm-3 control-label">Titre :</label>
                        <div class="col-sm-9">
                            <input type="text" name="title_new" class="form-control" required>
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
                        <div class="col-sm-offset-3 col-sm-9">
                            <input type="submit" name="add_carousel_item" class="btn btn-success" value="Ajouter">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</body>

</html>