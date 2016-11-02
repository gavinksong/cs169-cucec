# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$( document ).ready ->
    console.log "keydown"
    $("form.new_micropost").find("textarea").keyup ->
       $("form.new_micropost").find("input[type=submit]").prop(
            "disabled",
            $("form.new_micropost").find("textarea").val() == ""
        )
        