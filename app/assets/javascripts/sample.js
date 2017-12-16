
$('input[name="landing_merit_options"]').change( function(){
    if ($('input[name="landing_merit_options"]:checked').val() == 0) {
      $(".landing_merit_giver_receiver").show();
      $(".landing_merit_owner").hide();
    }else if($('input[name="landing_merit_options"]:checked').val() == 1){
      $(".landing_merit_giver_receiver").hide();
      $(".landing_merit_owner").show();
    }
});