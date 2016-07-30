# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

onReaderLoad = (event) ->
    console.log "eventiffyf"
    console.log event.target.result
    obj = JSON.parse(event.target.result)
    console.log obj
    return

$('document').ready ->

  $('#uploaded').change (event) ->
    uploadedFile = event.target.files[0];

    if uploadedFile
      readFile = new FileReader

    readFile.onload = onReaderLoad
    readFile.readAsText event.target.files[0]
  
  return
return