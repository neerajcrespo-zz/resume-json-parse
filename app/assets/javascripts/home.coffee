# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

onReaderLoad = (event) ->
  console.log "eventiffyf"

  try
    obj = JSON.parse(event.target.result)
  catch err
    console.log "problem with parsing json"
    alert "Not a JSON file?"

  formdata =  {'content' : JSON.stringify(obj)}
  console.log formdata
  
  $.post "/resumes", formdata, ((data, status) ->
        location.href = '/resumes/'+data.id
        return
      ), 'json'
      .fail((data)->
        console.log "failed error"
        alert "Failed to create resource, I am fixing this shortly."
      )
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