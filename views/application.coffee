client = new Faye.Client("http://localhost:3333/faye")

$ ->
  client.subscribe "/messages", (message) ->
    $('#log').append("#{message}<br>")