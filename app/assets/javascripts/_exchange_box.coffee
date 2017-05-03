$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/exchange'
      console.log("Entrou coffee");
      $.ajax '/exchange',
          type: 'POST'
          dataType: 'json'
          data: {
                  currency: $("#currency").val(),
                  currency_destination: $("#currency_destination").val(),
                  quantity: $("#quantity").val()
                }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus

          success: (data, textStatus, jqXHR) ->
              $("#result").val(data.value)
        return false;
