<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificateur de Contenu de Causes</title>
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
        <h1>Modificateur de Contenu de Cause</h1>

        <!-- Modifier le Titre et la Description Globaux de l'Événement -->
        <h2>Modifier le Titre et la Description Globaux du Cause</h2>
        <form method="post" action="" class="form-horizontal">
            <?php
            global $wpdb;
            $table_name = $wpdb->prefix . 'content_modificator_cause';

            $global_cause = $wpdb->get_row("SELECT * FROM $table_name WHERE type = 'main'");
            if ($global_cause) {
                ?>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">Titre :</label>
                    <div class="col-sm-10">
                        <input type="hidden" name="modify_id" value="<?php echo stripslashes($global_cause->id); ?>">
                        <input type="text" name="title" class="form-control"
                            value="<?php echo stripslashes($global_cause->title); ?>" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="description" class="col-sm-2 control-label">Description :</label>
                    <div class="col-sm-10">
                        <textarea name="description" class="form-control" rows="4" style="resize: none;"
                            required><?php echo stripslashes($global_cause->description); ?></textarea>
                    </div>
                </div>
                <?php
            }
            ?>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" name="modify_global_cause" class="btn btn-primary"
                        value="Modifier le Cause Global">
                </div>
            </div>
        </form>

        <!-- Modifier les Éléments de l'Événement -->
        <h2>Modifier les Éléments de l'Événement</h2>
        <div class="row">
            <?php
            global $wpdb;
            $table_name = $wpdb->prefix . 'content_modificator_cause';
            $upload_dir = wp_upload_dir();

            $event_items = $wpdb->get_results("SELECT * FROM $table_name WHERE type != 'main'");
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
                                    <label for="bigtitle" class="col-sm-3 control-label">Grand Titre :</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="bigtitle" class="form-control"
                                            value="<?php echo stripslashes($item->bigtitle); ?>" />
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
                                    <label for="type" class="col-sm-3 control-label">Type :</label>
                                    <select class="col-sm-9" name="type">
                                        <option value="normal" <?php echo selected($item->type, 'normal', false) ?>>Normal
                                        </option>
                                        <option value="urgent" <?php echo selected($item->type, 'urgent', false) ?>>Urgent
                                        </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Image :</label>
                                    <div class="col-sm-9">
                                        <div class="img-container">
                                            <img src="<?php echo stripslashes($item->image); ?>"
                                                id="image_<?php echo $item->id; ?>" class="img-thumbnail"
                                                onclick="triggerFileInput('image_<?php echo $item->id; ?>')"
                                                style="cursor: pointer" alt="Cliquez pour changer">
                                        </div>

                                        <input type="hidden" name="image" id="image_<?php echo $item->id; ?>"
                                            class="regular-text" value="<?php echo stripslashes($item->image); ?>" />
                                        <button class="button upload-image-button"
                                            data-target="image_<?php echo $item->id; ?>" id="image_<?php echo $item->id; ?>"
                                            style="display: none"></button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="raised" class="col-sm-3 control-label">Acquis :</label>
                                    <div class="col-sm-9">
                                        <input type="number" name="raised" class="form-control"
                                            value="<?php echo stripslashes($item->raised); ?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="goal" class="col-sm-3 control-label">But:</label>
                                    <div class="col-sm-9">
                                        <input type="number" name="goal" class="form-control"
                                            value="<?php echo stripslashes($item->goal); ?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <input type="submit" name="modify_cause_item" class="btn btn-primary"
                                            value="Modifier">
                                        <input type="submit" name="delete_cause_item" class="btn btn-warning"
                                            value="Supprimer" onclick="return confirmDelete()">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            <?php } ?>
        </div>

        <h2>Ajouter un Nouvel Élément de Cause</h2>
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
                        <label for="bigtitle_new" class="col-sm-3 control-label">Grand Titre :</label>
                        <div class="col-sm-9">
                            <input type="text" name="bigtitle_new" class="form-control" required>
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
                        <label for="type_new" class="col-sm-3 control-label">Type :</label>
                        <select class="col-sm-9" name="type_new">
                            <option value="normal">Normal</option>
                            <option value="urgent">Urgent</option>
                        </select>
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
                        <label for="raised_new" class="col-sm-3 control-label">Acquis :</label>
                        <div class="col-sm-9">
                            <input type="number" name="raised_new" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="goal_new" class="col-sm-3 control-label">But :</label>
                        <div class="col-sm-9">
                            <input type="text" name="goal_new" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <input type="submit" name="add_cause_item" class="btn btn-success" value="Ajouter">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</body>

</html>