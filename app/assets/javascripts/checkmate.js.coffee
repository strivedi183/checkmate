class Checkmate
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Checkmate.clear_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

$(document).ready(Checkmate.document_ready)



Morris.Donut({
  element: 'donut-example',
  data: [
    {label: "Download Sales", value: 400},
    {label: "In-Store Sales", value: 12},
    {label: "Mail-Order Sales", value: 200}
  ]
});

