<div class="wrap">
    <h1>Header Carousel Content Modifier</h1>

    <!-- Form for adding new content -->
    <h2>Add New Carousel Item</h2>
    <form method="post" action="">
        <label for="title">Title:</label>
        <input type="text" name="title" required>
        <br>
        <label for="description">Description:</label>
        <textarea name="description" rows="4" required></textarea>
        <br>
        <input type="submit" name="add_header_carousel" class="button button-primary" value="Add Carousel Item">
    </form>

    <!-- Form for deleting content -->
    <h2>Delete Carousel Items</h2>
    <form method="post" action="">
        <?php
        global $wpdb;
        $table_name = $wpdb->prefix . 'content_modificator_header_carousel';

        $carousel_items = $wpdb->get_results("SELECT * FROM $table_name");
        foreach ($carousel_items as $item) {
            echo '<label>';
            echo '<input type="checkbox" name="delete[]" value="' . stripslashes($item->id) . '"> ';
            echo stripslashes($item->title);
            echo '</label><br>';
        }
        ?>
        <br>
        <input type="submit" name="delete_items_header_carousel" class="button button-primary"
            value="Delete Selected Items">
    </form>

    <!-- Form for uploading background image -->
    <h2>Upload Background Image</h2>
    <form method="post" action="" enctype="multipart/form-data">
        <label for="background_image">Background Image:</label>
        <input type="file" name="background_image" accept=".jpg, .jpeg, .png, .gif, .webp" required>
        <br>
        <input type="submit" name="upload_header_carousel_image" class="button button-primary"
            value="Upload Background Image">
    </form>
</div>