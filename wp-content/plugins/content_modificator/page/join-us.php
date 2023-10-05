<div class="wrapper">
  <div class="join">
    <h2 class="title">Nous Rejoindre</h2>
    <div class="join-container">
      <form id="joinUsForm">
        <div class="row">
          <div class="form-group col-md-6">
            <label for="membername" class="form-label">Nom :</label>
            <input type="text" name="membername" id="membername" class="form-control">
          </div>
          <div class="form-group col-md-6">
            <label for="firstname" class="form-label">Prénom :</label>
            <input type="text" name="firstname" id="firstname" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-6">
            <label for="birthdate" class="form-label">Date de Naissance :</label>
            <input type="date" name="birthdate" id="birthdate" class="form-control">
          </div>
          <div class="form-group col-md-6">
            <label for="birthplace" class="form-label">à : </label>
            <input type="text" name="birthplace" id="birthplace" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-4">
            <label for="cin" class="form-label">Numéro CIN :</label>
            <input type="number" name="cin" id="cin" class="form-control">
          </div>
          <div class="form-group col-md-4">
            <label for="cindate" class="form-label">Delivré le :</label>
            <input type="date" name="cindate" id="cindate" class="form-control">
          </div>
          <div class="form-group col-md-4">
            <label for="cinplace" class="form-label"> à :</label>
            <input type="text" name="cinplace" id="cinplace" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-4">
            <label for="phone" class="form-label">Numéro Telephone</label>
            <input type="number" name="phone" id="phone" class="form-control">
          </div>
          <div class="form-group col-md-4">
            <label for="mail" class="form-label">Email :</label>
            <input type="mail" name="mail" id="mail" class="form-control">
          </div>
          <div class="form-group col-md-4">
            <label for="facebook" class="form-label">Facebook :</label>
            <input type="text" name="facebook" id="facebook" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-4">
            <label for="parent" class="form-label">Personne de contact :</label>
            <select name="parent" id="parent" class="form-control">
              <option value="Mère">Mère</option>
              <option value="Père">Père</option>
              <option value="Tuteur">Tuteur</option>
              <option value="Père">Mari</option>
              <option value="Ami">Ami(e)</option>
              <option value="Fils">Fils</option>
              <option value="Fille">Fille</option>
            </select>
          </div>
          <div class="form-group col-md-4">
            <label for="parentname" class="form-label">Nom du contact :</label>
            <input type="text" name="parentname" id="parentname" class="form-control">
          </div>
          <div class="form-group col-md-4">
            <label for="tcontact" class="form-label">Numéro Telephone Contact :</label>
            <input type="number" name="tcontact" id="tcontact" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-6">
            <label for="situation" class="form-label">Situation Matrimoniale :</label>
            <select name="situation" id="situation" class="form-control">
              <option value="Célibataire ">Célibataire</option>
              <option value="Mariée">Mariée</option>
              <option value="Divorcée">Divorcée</option>
              <option value="Veuve">Veuve</option>
              <option value="Séparée">Séparée</option>
            </select>
          </div>
          <div class="form-group col-md-6">
            <label for="children" class="form-label">Nombre d'enfants :</label>
            <input type="number" name="children" id="children" class="form-control">
          </div>
        </div>
        <div class="form-group">
          <label for="education" class="form-label">Etudes effectuées et diplômes obtenus :</label>
          <textarea name="education" id="education" class="form-control"></textarea>
        </div>

        <div class="form-group">
          <label for="work" class="form-label">Travail et expériences :</label>
          <textarea name="work" id="work" class="form-control"></textarea>
        </div>

        <div class="form-group">
          <label for="talent" class="form-label">Talent ou loisirs :</label>
          <textarea name="talent" id="talent" class="form-control"></textarea>
        </div>

        <div class="form-group">
          <label for="religion" class="form-label">Religion :</label>
          <input type="text" name="religion" id="religion" class="form-control">
        </div>

        <div class="form-group text-center">
          <input type="button" class="btn btn-primary" name="join" value="Enregistrer" onclick="saveMember()">
        </div>

      </form>
    </div>
  </div>

  <script>
    function saveMember() {
      // Find form elements by name
      var form = document.getElementById('joinUsForm');

      // Check if any form fields are empty
      var isAnyEmpty = false;

      var elements = form.elements;
      for (var i = 0; i < elements.length; i++) {
        var element = elements[i];

        if (element.type === 'text' || element.type === 'number' || element.type === 'date' || element.type === 'email' || element.tagName.toLowerCase() === 'textarea') {
          if (element.value.trim() === '') {
            isAnyEmpty = true;
            element.style.border = '1px solid red';
          } else {
            element.style.border = '';
          }
        }
      }

      if (isAnyEmpty) {
        alert('Veuillez renseigner tous les champs');
      } else {
        var formData = new FormData(form);

        var xhr = new XMLHttpRequest();
        xhr.open('POST', '<?php echo esc_url(home_url('/')); ?>admin-only-submit-page/', true);

        xhr.onload = function() {
          if (xhr.status === 200) {
            var response = JSON.parse(xhr.responseText);
            if (response.success) {
              alert('Enregistrement effectuer');
              location.href = '<?php echo esc_url(home_url('/')); ?>thank-you-2/';
            } else {
              alert('Erreur d\'enregistrement');
            }
            console.log(response);
          } else {
            alert('Il y a eu un erreur');
          }
        };

        xhr.onerror = function() {
          alert('Il y a eu un erreur');
        };

        xhr.send(formData);
      }
    }
    // function saveMember() {
    //   var isAnyEmpty = false;

    //   // Iterate through form elements
    //   $('form[name="your_form_name"] :input').each(function() {
    //     var element = $(this);

    //     if (
    //       (element.is('input[type="text"]') ||
    //         element.is('input[type="number"]') ||
    //         element.is('input[type="date"]') ||
    //         element.is('input[type="email"]') ||
    //         element.is('textarea')) &&
    //       $.trim(element.val()) === ''
    //     ) {
    //       isAnyEmpty = true;
    //       element.css('border', '1px solid red');
    //     } else {
    //       element.css('border', '');
    //     }
    //   });

    //   if (isAnyEmpty) {
    //     alert('Veuillez renseigner tous les champs');
    //   } else {
    //     var formData = $('form[name="your_form_name"]').serialize();

    //     $.ajax({
    //       type: 'POST',
    //       url: '<?php echo esc_url(home_url("/")); ?>admin-only-submit-page/',
    //       data: formData,
    //       success: function(response) {
    //         if (response.success) {
    //           alert('Enregistrement effectué');
    //           window.location.href = '<?php echo esc_url(home_url("/")); ?>thank-you-2/';
    //         } else {
    //           alert('Erreur d\'enregistrement');
    //         }
    //       },
    //       error: function() {
    //         alert('Il y a eu une erreur');
    //       },
    //     });
    //   }
    // }
  </script>


</div>