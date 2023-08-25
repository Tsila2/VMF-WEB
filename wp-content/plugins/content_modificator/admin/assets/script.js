jQuery(document).ready(function ($) {
    $('.upload-image-button').on('click', function (e) {
        e.preventDefault();

        // Create a media frame
        var media_frame = wp.media({
            title: 'Ajouter/Selectionner des images',
            button: {
                text: 'Utiliser ces images'
            },
            library: {
                type: 'image'
            },
            multiple: 'add'
        });

        var targetInput = $(this).data('target');

        // Image selection handler
        media_frame.on('select', function () {
            var attachments = media_frame.state().get('selection').toJSON();
            var imageSizeInBytes = attachments.filesize;
            var imageSizeInMB = imageSizeInBytes / (1024 * 1024);

            // Check if image size exceeds the limit (4MB)
            if (imageSizeInMB > 4) {
                alert('Error: The selected image exceeds the maximum allowed size of 4MB.');
                return;
            }

            var selectedUrls = attachments.map(function (attachment) {
                return attachment.url;
            });

            $('input#' + targetInput).val(selectedUrls.join(','));

            var image = $('img#' + targetInput);
            if (image) {
                image.attr('src', selectedUrls[0]);
            }
        });

        // Open media frame
        media_frame.open();
    });

    $('.upload-video-button').on('click', function (e) {
        e.preventDefault();

        // Create a media frame
        var media_frame = wp.media({
            title: 'Ajouter/Selectionner des videos',
            button: {
                text: 'Utiliser ces videos'
            },
            library: {
                type: 'video'
            },
            multiple: 'add' // Allow only one video to be selected
        });

        var targetInput = $(this).data('target');

        // Video selection handler
        media_frame.on('select', function () {
            var attachments = media_frame.state().get('selection').toJSON();

            var videoSizeInBytes = attachments.filesize;

            // Convert video size from bytes to MB
            var videoSizeInMB = videoSizeInBytes / (1024 * 1024);

            // Check if video size exceeds the limit (300MB)
            if (videoSizeInMB > 300) {
                alert('Error: The selected video exceeds the maximum allowed size of 300MB.');
                return;
            }

            var selectedUrls = attachments.map(function (attachment) {
                return attachment.url;
            });

            $('input#' + targetInput).val(selectedUrls.join(','));

            var video = $('video#' + targetInput);
            if (video) {
                video.attr('src', selectedUrls[0]);
            }
        });

        // Open media frame
        media_frame.open();
    });

});

function confirmDelete() {
    return confirm("Êtes-vous sûr de vouloir supprimer cet élément ?");
}

function triggerFileInput(inputId) {
    const button = document.querySelector('button#' + inputId);
    button.click();
}

function toggleOptions(imageId) {
    const optionsElement = document.getElementById('options_' + imageId);
    if (optionsElement) {
        optionsElement.style.display = optionsElement.style.display === 'none' ? 'block' : 'none';
    }
}

function deleteImage(imageId) {
    console.log(imageId);

    var confirmed = confirmDelete();

    if (confirmed) {
        const divElement = document.getElementById("div_" + imageId);
        if (divElement) {
            divElement.parentNode.removeChild(divElement); // Remove the image container and all its children
        }
        console.log("Image with ID " + imageId + " has been deleted.");
    } else {
        console.log("Deletion cancelled.");
    }
}

function addProjectInput(itemId) {
    const projectsContainer = document.getElementById(itemId);
    const input = document.createElement('input');
    input.type = 'text';
    input.name = 'project[]';
    input.className = 'form-control';
    projectsContainer.appendChild(input);
}