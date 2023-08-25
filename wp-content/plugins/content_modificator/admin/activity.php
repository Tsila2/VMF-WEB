<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificateur de Contenu du Programme</title>
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

        .activity-item-container {
            display: flex;
            flex-wrap: wrap;
            /* gap: 20px; */
            /* Adjust the gap between items as needed */
        }

        .activity-item-container .col-md-6 {
            flex: 0 0 calc(50% - 20px);
            /* Two items per row */
            max-width: calc(50% - 20px);
            /* Two items per row */
        }

        @media (max-width: 767px) {
            .activity-item-container {
                flex-direction: column;
                /* Display items in a single column */
            }
            .activity-item-container .col-md-6 {
            flex: 0 0 calc(100% - 20px);
            /* Two items per row */
            max-width: calc(1000% - 20px);
            /* Two items per row */
        }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Modificateur de Contenu du Programme</h1>

        <!-- Modifier le Titre et la Description Globaux de l'Événement -->
        <h2>Modifier le Titre et la Description Global</h2>
        <form method="post" action="" class="form-horizontal">
            <?php
            global $wpdb;
            $table_name = $wpdb->prefix . 'content_modificator_activity';

            $global_activity = $wpdb->get_row("SELECT * FROM $table_name WHERE type = 'main'");
            if ($global_activity) {
                ?>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">Titre :</label>
                    <div class="col-sm-10">
                        <input type="hidden" name="modify_id" value="<?php echo stripslashes($global_activity->id); ?>">
                        <input type="text" name="title" class="form-control"
                            value="<?php echo stripslashes($global_activity->title); ?>" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="description" class="col-sm-2 control-label">Description :</label>
                    <div class="col-sm-10">
                        <textarea name="description" class="form-control" rows="4" style="resize: none;"
                            required><?php echo stripslashes($global_activity->description); ?></textarea>
                    </div>
                </div>
                <?php
            }
            ?>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" name="modify_activity_title" class="btn btn-primary" value="Modifier">
                </div>
            </div>
        </form>

        <!-- Modifier les Éléments de l'Événement -->
        <h2>Modifier les Éléments du Programme</h2>
        <div class="row">
            <div class="activity-item-container">
                <?php
                global $wpdb;
                $table_name = $wpdb->prefix . 'content_modificator_activity';

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
                                            <input type="hidden" name="modify_id"
                                                value="<?php echo stripslashes($item->id); ?>">
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
                                        <label for="icon" class="col-sm-3 control-label">Icon :</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="icon" class="form-control"
                                                value="<?php echo stripslashes($item->icon); ?>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="project" class="col-sm-3 control-label">Project :</label>
                                        <div class="col-sm-9" id="projects_container_<?php echo stripslashes($item->id); ?>"
                                            style="position: relative;">
                                            <?php
                                            // Check if projects are set and it's not empty
                                            if (!empty($item->project)) {
                                                // Split the projects string into an array
                                                $projects = explode(';', $item->project);

                                                // Loop through the projects and display an input field for each one
                                                foreach ($projects as $project) {
                                                    ?>
                                                    <input type="text" name="project[]" class="form-control"
                                                        value="<?php echo stripslashes($project); ?>">
                                                    <?php
                                                }
                                            } else {
                                                // If no projects are set, display a single input field
                                                ?>
                                                <input type="text" name="project[]" class="form-control">
                                                <?php
                                            }
                                            ?>
                                        </div>
                                        <div class="col-sm-offset-3 col-sm-9 text-center" style="padding-top: 10px">
                                            <button type="button" class="btn btn-primary text-center"
                                                onclick="addProjectInput('projects_container_<?php echo stripslashes($item->id); ?>')">Ajouter
                                                un projet</button>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="devise" class="col-sm-3 control-label">Devise :</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="devise" class="form-control"
                                                value="<?php echo stripslashes($item->devise); ?>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-3 col-sm-9">
                                            <input type="submit" name="modify_activity_item" class="btn btn-primary"
                                                value="Modifier">
                                            <input type="submit" name="delete_activity_item"
                                                onclick="return confirmDelete()" class="btn btn-warning" value="Supprimer">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                <?php } ?>
            </div>
        </div>

        <!-- Nouveau formulaire pour ajouter un nouvel élément d'événement -->
        <h2>Ajouter un Nouvel Élément au Programme</h2>
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
                        <label for="icon_new" class="col-sm-3 control-label">Icon :</label>
                        <div class="col-sm-9">
                            <input type="text" name="icon_new" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="project" class="col-sm-3 control-label">Project :</label>
                        <div class="col-sm-9" id="projects_container_new" style="position: relative;">
                            <input type="text" name="project[]" class="form-control">
                        </div>
                        <div class="col-sm-offset-3 col-sm-9 text-center" style="padding-top: 10px">
                            <button type="button" class="btn btn-primary text-center"
                                onclick="addProjectInput('projects_container_new')">Ajouter un projet</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="devise_new" class="col-sm-3 control-label">Devise :</label>
                        <div class="col-sm-9">
                            <input type="text" name="devise_new" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <input type="submit" name="add_activity_item" class="btn btn-success" value="Ajouter">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</body>

</html>