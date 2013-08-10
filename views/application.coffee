client = new Faye.Client("http://localhost:3000/faye")

$ ->
  client.subscribe "/messages", (message) ->
    $('#log').append("#{message}<br>")

  $('#button').click (e) ->
    client.publish('/messages', 'hell')
    e.preventDefault()
