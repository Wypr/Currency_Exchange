database_ajax = ->
  if ($("#quantity").val()) and ($("#quantity").val() >= 0)
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
      success: (data, text, jqXHR) ->
        $('#result').val(data.value)
    return false


$(document).ready ->
  $('#currency_destination').change ->
    database_ajax()
  $('#currency').change ->
    database_ajax()
  $('#quantity').change ->
    database_ajax()
  $('#quantity').change ->
    if $('#quantity').val() == '0'
      $("#result").val("0")



$(document).ready ->
  $('#change').click ->
    current_coin_of_currency = $('#currency').val();
    $('#currency').val($('#currency_destination').val())
    $('#currency_destination').val(current_coin_of_currency)
    database_ajax()
