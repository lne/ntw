$(document).on "click", "#save", ->
  $("#myModal").modal("hide")
  $("#btn-save").blur()
ready = ->
  document.cookie = 'timezone='+jstz.determine().name()+';';
  $('.countdown').each ->
    $(this).countdown
      description: ''
      compact: true
      format: 'MS'
      until: new Date($(this).data('until'))
      expiryText: $(this).data('expiry')
      alwaysExpire: true
$(document).ready(ready)
$(document).on('page:load', ready)
