//Indicates mentors who is online
$(function() {
    $('#online-mentors').change(function() {
        if($(this).prop('checked')) {
            $.get(admins_path, {sort: "online"});
        }
        else {
            $.get(admins_path, {sort: "ofline"});
        }
    })
})