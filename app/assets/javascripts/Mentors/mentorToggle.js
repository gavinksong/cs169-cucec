
//Indicates whether a mentor is available to chat or not
$(function() {
    $('#available_mentor').change(function() {
        if($(this).prop('checked')) {
            $.get("mentors/available", {value: "1"});
        }
        else {
            $.get("mentors/available", {value: "0"});
        }
    })
})