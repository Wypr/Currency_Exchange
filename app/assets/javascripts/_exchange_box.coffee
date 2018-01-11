database_ajax = ->
  if ($("#quantity").val()) and ($("#quantity").val() isnt '0')
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
    #return false


$(document).ready ->
  $('#currency_destination').change ->
    database_ajax()
  #return false
  $('#currency').change ->
    database_ajax();
  #return false
  $('#quantity').change ->
    database_ajax();
  #return false
  $('#quantity').change ->
    if $('#quantity').val() == '0'
      $("#result").val("0")
   #return false



$(document).ready ->
  $('#change').click ->
    currency_id = $('#currency option').filter(':selected').val()
    currency_destination_id = $('#currency_destination option').filter(':selected').val()
    $('#currency option').filter(':selected').attr('selected', false)
    $('#currency option').eq(currency_destination_id).attr('selected', true)
    $('#currency_destination option').filter(':selected').attr('selected', false)
    $('#currency_destination option').eq(currency_id).attr('selected', true)
