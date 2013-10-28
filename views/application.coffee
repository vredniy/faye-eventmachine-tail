client = new Faye.Client("http://localhost:3333/faye")

$ ->
  client.subscribe "/messages", (message) ->
    $log = $('#log')
    $log.append("#{message}<br>").scrollTop($log[0].scrollHeight)
