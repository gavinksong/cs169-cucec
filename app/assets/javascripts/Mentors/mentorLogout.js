// This resets mentor availability after logout
$(function() {
        $("#mentor_logout").click(function() {
            $.get("mentors/available", {value: "0"});
        })
})    