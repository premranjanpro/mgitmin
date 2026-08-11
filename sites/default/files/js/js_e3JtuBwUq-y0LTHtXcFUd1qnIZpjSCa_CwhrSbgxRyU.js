(function ($) {
  $(document).ready(function () {
  
    // Move Program Topic selector between Program Type and Program Selected
    $('div#program-topic').insertAfter('div#webform-component-program-interest--program-type');
    
    // Save original values of Program Selected dropdowns
    $('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-1').data('original', $('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-1').html());
    $('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-2').data('original', $('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-2').html());
    $('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-3').data('original', $('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-3').html());
    $('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-1').data('original', $('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-1').html());
    $('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-2').data('original', $('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-2').html());
    $('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-3').data('original', $('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-3').html());
    $('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-1').data('original', $('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-1').html());
    $('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-2').data('original', $('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-2').html());
    $('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-3').data('original', $('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-3').html());
    
    // Set program topics to both
    $('select#program-topic').html(b_topics);

    function updatePrograms() {
      var topic = $('div#program-topic select option:selected').val();
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-1', topic, 'b');
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-2', topic, 'b');
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-both-prog-program-interest-3', topic, 'b');
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-1', topic, 'g');
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-2', topic, 'g');
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-grad-prog-grad-program-interest-3', topic, 'g');
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-1', topic, 'u');
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-2', topic, 'u');
      refreshProgramList('select#edit-submitted-program-interest-fieldset-more-ugrad-prog-add-more-programs-of-interest-ugrad-3', topic, 'u');
    }
    
    function refreshProgramList(dropdown, topic, type) {
      if (topic == 0) {
        $(dropdown).html($(dropdown).data('original'));
      }
      else if (topic != undefined) {
        value = $(dropdown).val();
        
        if (type == 'u') options = u_options[topic];
        else if (type == 'g') options = g_options[topic];
        else options = b_options[topic];
        
        if (value != 0) {
          text = $(dropdown + ' option[value="' + value + '"]').text();
          $(dropdown).html('<option value="' + value + '" selected="selected">' + text + '</option>' + options);
        }
        else {
          $(dropdown).html(options);
          $(dropdown + ' option').each(function() {
            if (this.value == value) {
              $(this).val(value);
            }
          });
        }
      }
    }

    // Change available programs when Program Topic changes
    $('div#program-topic').change(function() {
      updatePrograms();
    });
    
    // Change program topics when program type changes
    $('input#edit-submitted-program-interest-program-type-1').change(function() {
      $('select#program-topic').html(g_topics);
      updatePrograms();
    });
    $('input#edit-submitted-program-interest-program-type-2').change(function() {
      $('select#program-topic').html(u_topics);
      updatePrograms();
    });
    $('input#edit-submitted-program-interest-program-type-3').change(function() {
      $('select#program-topic').html(b_topics);
      updatePrograms();
    });
    
  });
})(jQuery);;
