<div class="wrapper">
  <div class="join">
    <h2 class="title">Rejoindre VMF</h1>
      <div class="join-container">
        <form>
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
              <label for="cindate" class="form-label">Delivréé le :</label>
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
            <div class="form-group col-md-6">
              <label for="parent" class="form-label">Le plus proche parent :</label>
              <select name="parent" id="parent" class="form-control">
                <option value="Mère">Mère</option>
                <option value="Père">Père</option>
                <option value="Tuteur">Tuteur</option>
              </select>
            </div>
            <div class="form-group col-md-6">
              <label for="parentname" class="form-label">Nom(s) et Prénom(s)</label>
              <input type="text" name="parentname" id="parentname" class="form-control">
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

      var elements = document.querySelectorAll('input[type="text"], input[type="number"], input[type="date"], input[type="mail"], textarea');

      var isAnyEmpty = false;

      elements.forEach(function(element) {
        if (element.value.trim() === '') {
          isAnyEmpty = true;
          element.style.border = '1px solid red'; // Apply red border to elements with empty value
        } else {
          element.style.border = ''; // Remove border styling from elements with non-empty value
        }
      });

      if (isAnyEmpty) {
        alert('Veuillez renseigner tous les champs');
      } else {
        var formData = $('form').serialize();

        // Send AJAX request to the server
        $.ajax({
          type: 'POST',
          url: '<?php echo esc_url(home_url('/')); ?>admin-only-submit-page/', // Update this path
          data: formData,
          dataType: 'json',
          success: function(response) {
            if (response.success) {
              alert('Data successfully saved.');
              // You can perform any additional actions here
            } else {
              alert('Failed to save data.');
            }
            console.log(response);
          },
          error: function(e) {
            alert('An error occurred.');
            console.log(e)
          }
        });
      }
    }
  </script>

</div>