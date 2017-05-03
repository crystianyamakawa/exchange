atualiza_cot = ->
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


$(document).ready ->
  # Atualiza cotação quando mudar quantidade
  $("#quantity").keydown ->
   atualiza_cot()
  # Atualiza cotação quando mudar Moeda Local
  $("#currency",).change ->
    atualiza_cot()
  # Atualiza cotação quando mudar Moeda Destino
  $("#currency_destination").change ->
    atualiza_cot()
  $("#inverter_moeda").click ->
    currency = $("#currency").val()
    console.log("Moeda 1 :" + currency)
    currency_destination =  $("#currency_destination").val()
    console.log("Moeda 1 :" + currency_destination)

    $("#currency").val(currency_destination)
    $("#currency_destination").val(currency)
    atualiza_cot()
