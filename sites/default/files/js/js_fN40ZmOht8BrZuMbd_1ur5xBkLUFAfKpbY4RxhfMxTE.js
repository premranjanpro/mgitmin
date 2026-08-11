(function($) {
  $(function(){
    $("#edit-course-abbreviation").change(function(){
      $.getJSON("/course-catalog/search-ajax",{discipline: $(this).val(), action: 'course'}, function(abbreviations){
        var options = '';
        $(abbreviations).each(function(i) {
          options += '<option value="' + abbreviations[i].code + '">' + abbreviations[i].course + '</option>';
        });
        $('#edit-course-number').html(options);
      })
    })
  });
  
  $(function(){
    $("#edit-program-type").change(function(){
      $.getJSON("/course-catalog/search-ajax",{type: $(this).val(), action: 'program'}, function(programs){
        var options = '';
        $(programs).each(function(i) {
          options += '<option value="' + programs[i].code + '">' + programs[i].name + '</option>';
        });
        $('#edit-program').html(options);
      })
    })
  });
  
  $( document ).ready(function() {
    // Toggle 'Ready To Enroll?' box on detail page open/close
    $('.ready-to-enroll h3.toggle').click(function() {
      if ($(this).hasClass('expanded')) {
        $(this).removeClass('expanded');
        $('.ready-to-enroll div.content').slideToggle('400');
      } else {
        $('.ready-to-enroll div.content').slideToggle('400');
        $(this).addClass('expanded');
      }
    });
  });
})(jQuery);;
