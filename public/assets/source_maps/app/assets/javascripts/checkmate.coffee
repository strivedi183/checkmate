class Checkmate
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Checkmate.clear_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

$(document).ready(Checkmate.document_ready)
