$(function() {
        $("#mentor_logout").click(function() {
                console.log("I get HERE")
         $.get("mentors/available", {value: "0"});
        })
})    