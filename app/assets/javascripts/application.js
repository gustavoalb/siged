//= require jquery
//= require jquery_ujs
//= require prototype
//= require effects
//= require jquery-ui.min
//= require jquery.purr
//= require json2
//= require history
//= require history.adapter.jquery
//= require jquery.ba-bbq
//= require jquery.url
//= require twitter/bootstrap
//= require loading_notice
//= require ajax_pagination
//= require maskedinput
//= require mascara
//= require autocomplete-rails
//= require dragdrop
//= require controls
//= require facebox
//= require tabs
//= require loading_notice
//= require paginate
//= require accordion
//= require accordion_activator
//= require best_in_place
//= require best_in_place.jquery-ui

jQuery(document).ready(function () {
    jQuery('#loadingmessage').bind("ajaxSend", function() {
        jQuery(this).show();
    }).bind("ajaxComplete", function() {
        jQuery(this).hide();
    });
});

jQuery(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();
});
