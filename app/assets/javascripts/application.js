//= require jquery
//= require jquery_ujs
//= require_tree .


$( document ).ready(function() {


  $('.task-list').css('background-color', 'LightGreen');


  $('.task-list').accordion({ collapsible: true });

  var collapsible = $('.task-list').accordion('option', 'collapsible');
  $('.task-list').accordion('option', 'collapsible', true );

  $('.task-list').accordion({ disabled: true });
  var disabled = $('.task-list').accordion('option', 'collapsible');
  $('.task-list').accordion('option', 'disabled', true);

  $('.task-list').accordion({ event: "mouseover"});
  var event = $('.task-list').accordion('option', 'event' );
  $('.task-list').accordion('option', 'event', 'mouseover');




});