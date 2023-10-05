<div class="wrapper">
    <div class="member">
    <?php
    global $wpdb;
    $table_name = $wpdb->prefix . 'content_modificator_member'; // Assurez-vous d'utiliser le préfixe de la table de WordPress
    $query = "SELECT * FROM $table_name";
    $results = $wpdb->get_results($query, ARRAY_A); // Récupérer les résultats sous forme d'array associatif
    ?>

    <table id="maTable" class="display table table-bordered table-hover">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>Date de naissance</th>
                <th>CIN</th>
                <th>Téléphone</th>
                <th>Mail</th>
                <th>Facebook</th>
                <th>Personne de contact</th>
                <th>Nom</th>
                <th>Situation</th>
                <th>Religion</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($results as $row) : ?>
                <tr>
                    <td><?php echo esc_html($row['id']); ?></td>
                    <td><?php echo esc_html($row['name']); ?></td>
                    <td><?php echo esc_html($row['firstname']); ?></td>
                    <td><?php echo esc_html($row['birthdate']); ?></td>
                    <td><?php echo esc_html($row['cin']); ?></td>
                    <td><?php echo esc_html($row['phone']); ?></td>
                    <td><?php echo esc_html($row['mail']); ?></td>
                    <td><?php echo esc_html($row['facebook']); ?></td>
                    <td><?php echo esc_html($row['contact']); ?></td>
                    <td><?php echo esc_html($row['parentname']); ?></td>
                    <td><?php echo esc_html($row['situation']); ?></td>
                    <td><?php echo esc_html($row['religion']); ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap.min.js"></script>


    <script>
        jQuery(document).ready(function($) {
            // Initialisation de DataTables
            $('#maTable').DataTable();
        });
    </script>

    <style>
        .member{
            margin-top: -30px;
        }
    </style>
    </div>
</div>