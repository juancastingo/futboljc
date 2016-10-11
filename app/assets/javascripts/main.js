$(document).on('turbolinks:load', function() {

  $('#field_club_id').on('change', function() {
    updateSelect(this.value);
  });

  var updateSelect = function(select_id) {
    //console.log( select_id ); // or $(this).val()
    var valor = select_id
    $('#saving').html('<span >saving... </span> <div class="loader"></div>');
    var url = '/clubs/select_update';
    $.ajax({
      url: url,
      type: 'POST',
      dataType: 'script',
      data: {
        ClubID: valor
      },
      success: function(data, err, other) {
        var jsonObj = $.parseJSON(data);
        $('#event_field_id').empty();
        var count = 0;
        for (var i in jsonObj) {
          count++;
          var obj = jsonObj[i];
          $("#event_field_id").append("<option value=\"" + obj.id + "\">" + obj.comment + "</option>");
          $('#fieldSelect').show();
          $( "#eventCreate" ).prop( "disabled", false );
        }
        if (count == 0) {
          alert("No fields found for this club");
          $('#fieldSelect').hide();
          $( "#eventCreate" ).prop( "disabled", true );
          //$('#fieldSelect option:first').prop('selected', true);
        }

      },
      error: function(XMLHttpRequest, textStatus, errorThrown) {
        console.log("Status: " + textStatus);
        console.log("Error: " + errorThrown);
        $('#field_club_id').hide();
     }
    });
  }

  updateSelect($( "#field_club_id option:selected" ).val());

});
