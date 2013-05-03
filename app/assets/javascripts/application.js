// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require twitter/bootstrap
//= require allPages
//= require autocomplete-rails

$(function() {
    $('.draggable span').draggable();

    $('.droppable').droppable({
        drop: function(event, ui) {
            var draggable = ui.draggable
            var draggableId = ui.draggable.attr("id");
            
            var algo = ui.draggable.find("a").attr("id")
            ui.draggable.remove()
            $(this).append("<input type='hidden' value="+ ui.draggable.attr("id") +"><span class='label label-info'>" + draggable.text() + "</span>");
        }
    });
})


