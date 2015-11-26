
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
