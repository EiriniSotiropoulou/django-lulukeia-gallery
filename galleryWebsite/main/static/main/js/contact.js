$(function() {
    document.getElementById("comment").focus(function(event) {

        // Erase text from inside textarea
        $(this).text("");

        // Disable text erase
        $(this).unbind(event);
    });
});
