$(function() {
        $("#mentor_logout").click(function() {
            console.log("here")
         $.get("mentors/available", {value: "0"});
        })
})    