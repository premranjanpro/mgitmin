/*!
 * FooTable - Awesome Responsive Tables
 * http://themergency.com/footable
 *
 * Requires jQuery - http://jquery.com/
 *
 * Copyright 2012 Steven Usher & Brad Vincent
 * Released under the MIT license
 * You are free to use FooTable in commercial projects as long as this copyright header is left intact.
 *
 * Date: 18 Nov 2012
 */
(function(d,a,f){a.footable={options:{delay:100,breakpoints:{phone:600,tablet:980},parsers:{alpha:function(g){return d(g).data("value")||d.trim(d(g).text())}},toggleSelector:" > tbody > tr:not(.footable-row-detail)",createDetail:function(h,j){for(var g=0;g<j.length;g++){h.append("<div><strong>"+j[g].name+"</strong> : "+j[g].display+"</div>")}},classes:{loading:"footable-loading",loaded:"footable-loaded",sorted:"footable-sorted",descending:"footable-sorted-desc",indicator:"footable-sort-indicator"},debug:false},version:{major:0,minor:1,toString:function(){return a.footable.version.major+"."+a.footable.version.minor},parse:function(g){version=/(\d+)\.?(\d+)?\.?(\d+)?/.exec(g);return{major:parseInt(version[1])||0,minor:parseInt(version[2])||0,patch:parseInt(version[3])||0}}},plugins:{_validate:function(g){if(typeof g.name!=="string"){if(a.footable.options.debug==true){console.error('Validation failed, plugin does not implement a string property called "name".',g)}return false}if(!d.isFunction(g.init)){if(a.footable.options.debug==true){console.error('Validation failed, plugin "'+g.name+'" does not implement a function called "init".',g)}return false}if(a.footable.options.debug==true){console.log('Validation succeeded for plugin "'+g.name+'".',g)}return true},registered:[],register:function(h,g){if(a.footable.plugins._validate(h)){a.footable.plugins.registered.push(h);if(g!=f&&typeof g==="object"){d.extend(true,a.footable.options,g)}if(a.footable.options.debug==true){console.log('Plugin "'+h.name+'" has been registered with the Foobox.',h)}}},init:function(g){for(var h=0;h<a.footable.plugins.registered.length;h++){try{a.footable.plugins.registered[h]["init"](g)}catch(j){if(a.footable.options.debug==true){console.error(j)}}}}}};var c=0;d.fn.footable=function(g){g=g||{};var h=d.extend(true,{},a.footable.options,g);return this.each(function(){c++;this.footable=new e(this,h,c)})};function b(){var g=this;g.id=null;g.busy=false;g.start=function(i,h){if(g.busy){return}g.stop();g.id=setTimeout(function(){i();g.id=null;g.busy=false},h);g.busy=true};g.stop=function(){if(g.id!=null){clearTimeout(g.id);g.id=null;g.busy=false}}}function e(i,j,l){var k=this;k.id=l;k.table=i;k.options=j;k.breakpoints=[];k.breakpointNames="";k.columns={};var h=k.options;var g=h.classes;k.timers={resize:new b(),register:function(m){k.timers[m]=new b();return k.timers[m]}};a.footable.plugins.init(k);k.init=function(){var o=d(a),n=d(k.table);if(n.hasClass(g.loaded)){k.raise("footable_already_initialized");return}n.addClass(g.loading);n.find("> thead > tr > th, > thead > tr > td").each(function(){var q=k.getColumnData(this);k.columns[q.index]=q;var p=q.index+1;var r=n.find("> tbody > tr > td:nth-child("+p+")");if(q.className!=null){r.not(".footable-cell-detail").addClass(q.className)}});for(var m in h.breakpoints){k.breakpoints.push({name:m,width:h.breakpoints[m]});k.breakpointNames+=(m+" ")}k.breakpoints.sort(function(q,p){return q.width-p.width});k.bindToggleSelectors();k.raise("footable_initializing");n.bind("footable_initialized",function(p){k.resize();n.removeClass(g.loading);n.find('[data-init="hide"]').hide();n.find('[data-init="show"]').show();n.addClass(g.loaded)});o.bind("resize.footable",function(){k.timers.resize.stop();k.timers.resize.start(function(){k.raise("footable_resizing");k.resize();k.raise("footable_resized")},h.delay)});k.raise("footable_initialized")};k.bindToggleSelectors=function(){var m=d(k.table);m.find(h.toggleSelector).unbind("click.footable").bind("click.footable",function(o){if(m.is(".breakpoint")){var n=d(this).is("tr")?d(this):d(this).parents("tr:first");k.toggleDetail(n.get(0))}})};k.parse=function(m,n){var o=h.parsers[n.type]||h.parsers.alpha;return o(m)};k.getColumnData=function(p){var o=d(p),n=o.data("hide");n=n||"";n=n.split(",");var q={index:o.index(),hide:{},type:o.data("type")||"alpha",name:o.data("name")||d.trim(o.text()),ignore:o.data("ignore")||false,className:o.data("class")||null};q.hide["default"]=(o.data("hide")==="all")||(d.inArray("default",n)>=0);for(var m in h.breakpoints){q.hide[m]=(o.data("hide")==="all")||(d.inArray(m,n)>=0)}var r=k.raise("footable_column_data",{column:{data:q,th:p}});return r.column.data};k.getViewportWidth=function(){return window.innerWidth||(document.body?document.body.offsetWidth:0)};k.getViewportHeight=function(){return window.innerHeight||(document.body?document.body.offsetHeight:0)};k.hasBreakpointColumn=function(m){for(var n in k.columns){if(k.columns[n].hide[m]){return true}}return false};k.resize=function(){var n=d(k.table);var s={width:n.width(),height:n.height(),viewportWidth:k.getViewportWidth(),viewportHeight:k.getViewportHeight(),orientation:null};s.orientation=s.viewportWidth>s.viewportHeight?"landscape":"portrait";if(s.viewportWidth<s.width){s.width=s.viewportWidth}if(s.viewportHeight<s.height){s.height=s.viewportHeight}var t=n.data("footable_info");n.data("footable_info",s);if(!t||((t&&t.width&&t.width!=s.width)||(t&&t.height&&t.height!=s.height))){var r=null,m;for(var p=0;p<k.breakpoints.length;p++){m=k.breakpoints[p];if(m&&m.width&&s.width<=m.width){r=m;break}}var o=(r==null?"default":r.name);var q=k.hasBreakpointColumn(o);n.removeClass("default breakpoint").removeClass(k.breakpointNames).addClass(o+(q?" breakpoint":"")).find("> thead > tr > th").each(function(){var v=k.columns[d(this).index()];var u=v.index+1;var w=n.find("> tbody > tr > td:nth-child("+u+"), > tfoot > tr > td:nth-child("+u+"), > colgroup > col:nth-child("+u+")").add(this);if(v.hide[o]==false){w.show()}else{w.hide()}}).end().find("> tbody > tr.footable-detail-show").each(function(){k.createOrUpdateDetailRow(this)});n.find("> tbody > tr.footable-detail-show:visible").each(function(){var u=d(this).next();if(u.hasClass("footable-row-detail")){if(o=="default"&&!q){u.hide()}else{u.show()}}});k.raise("footable_breakpoint_"+o,{info:s})}};k.toggleDetail=function(p){var m=d(p),o=k.createOrUpdateDetailRow(m.get(0)),n=m.next();if(!o&&n.is(":visible")){m.removeClass("footable-detail-show");n.hide()}else{m.addClass("footable-detail-show");n.show()}};k.createOrUpdateDetailRow=function(s){var m=d(s),n=m.next(),q,o=[];if(m.is(":hidden")){return}m.find("> td:hidden").each(function(){var t=k.columns[d(this).index()];if(t.ignore==true){return true}o.push({name:t.name,value:k.parse(this,t),display:d.trim(d(this).html())})});var r=m.find("> td:visible").length;var p=n.hasClass("footable-row-detail");if(!p){n=d('<tr class="footable-row-detail"><td class="footable-cell-detail"><div class="footable-row-detail-inner"></div></td></tr>');m.after(n)}n.find("> td:first").attr("colspan",r);q=n.find(".footable-row-detail-inner").empty();h.createDetail(q,o);return !p};k.raise=function(m,n){n=n||{};var o={ft:k};d.extend(true,o,n);var p=d.Event(m,o);if(!p.ft){d.extend(true,p,o)}d(k.table).trigger(p);return p};k.init();return k}})(jQuery,window);;
/*! jRespond.js v 0.10 | Author: Jeremy Fields [jeremy.fields@viget.com], 2013 | License: MIT */
!function(a,b,c){"object"==typeof module&&module&&"object"==typeof module.exports?module.exports=c:(a[b]=c,"function"==typeof define&&define.amd&&define(b,[],function(){return c}))}(this,"jRespond",function(a,b,c){"use strict";return function(a){var b=[],d=[],e=a,f="",g="",i=0,j=100,k=500,l=k,m=function(){var a=0;return a="number"!=typeof window.innerWidth?0!==document.documentElement.clientWidth?document.documentElement.clientWidth:document.body.clientWidth:window.innerWidth},n=function(a){if(a.length===c)o(a);else for(var b=0;b<a.length;b++)o(a[b])},o=function(a){var e=a.breakpoint,h=a.enter||c;b.push(a),d.push(!1),r(e)&&(h!==c&&h.call(null,{entering:f,exiting:g}),d[b.length-1]=!0)},p=function(){for(var a=[],e=[],h=0;h<b.length;h++){var i=b[h].breakpoint,j=b[h].enter||c,k=b[h].exit||c;"*"===i?(j!==c&&a.push(j),k!==c&&e.push(k)):r(i)?(j===c||d[h]||a.push(j),d[h]=!0):(k!==c&&d[h]&&e.push(k),d[h]=!1)}for(var l={entering:f,exiting:g},m=0;m<e.length;m++)e[m].call(null,l);for(var n=0;n<a.length;n++)a[n].call(null,l)},q=function(a){for(var b=!1,c=0;c<e.length;c++)if(a>=e[c].enter&&a<=e[c].exit){b=!0;break}b&&f!==e[c].label?(g=f,f=e[c].label,p()):b||""===f||(f="",p())},r=function(a){if("object"==typeof a){if(a.join().indexOf(f)>=0)return!0}else{if("*"===a)return!0;if("string"==typeof a&&f===a)return!0}},s=function(){var a=m();a!==i?(l=j,q(a)):l=k,i=a,setTimeout(s,l)};return s(),{addFunc:function(a){n(a)},getBreakpoint:function(){return f}}}}(this,this.document));;
// make console.log safe to use
window.console||(console={log:function(){}});;
// call jRespond and add breakpoints
var jRes = jRespond([
    {
        label: 'small',
        enter: 0,
        exit: 740
    },{
        label: 'medium',
        enter: 741,
        exit: 980
    },{
        label: 'large',
        enter: 981,
        exit: 999999
    }
]);

var stateHandler = function() {
  stateChanged = false;
  initState = false;
  if (typeof lastState === 'undefined') {
    lastState = jRes.getBreakpoint();
    initState = true;
  } else {
    lastState = currentState;
  }
  currentState = jRes.getBreakpoint();
  
  if (currentState!=lastState || initState) {
    if (initState) {
      initializeState(jQuery);
    }
    switch (currentState) {
      case 'small':
        smallState(jQuery);
        break;
      case 'medium':
        mediumState(jQuery);
        break;
      case 'large':
        largeState(jQuery);
        break;
    }
    stateChanged = true;
  }
  if (stateChanged) {
    setHandleBy(currentState);
  }
}

var initializeState = function($) {
  // Init footables
  $('.footable').footable();
  
  // Init search button and region for tablet and mobile
  $('#search-magnifying-glass').click(function() {
    $('#search-slidedown').slideToggle('slow');
  });
  $('.nav-toggle').click(function() {
    $('#main-menu div ul:first-child').slideToggle(250);
    return false;
  });
  
  // Program summary toggle box
  $('.program-summary h3').click(function() {
    if ($(this).hasClass('expanded')) {
      $(this).removeClass('expanded');
    $('.program-summary div.content').slideToggle('400');
    } else {
      $('.program-summary div.content').slideToggle('400');
      $(this).addClass('expanded');
    }
  });
  
  // Related programs toggle box
  $('.related-programs h3').click(function() {
    if ($(this).hasClass('expanded')) {
      $(this).removeClass('expanded');
    $('.related-programs div.content').slideToggle('400');
    } else {
      $('.related-programs div.content').slideToggle('400');
      $(this).addClass('expanded');
    }
  });

  // Secondary menu: copy secondary links to the mobile section menu
  $('.mobile-secondary-menu-links').append($('#block-menu-block-prospects-left').children().clone());
  $('.mobile-secondary-menu-links').append($('#block-psu-program-program-menu').children().clone());
  $('.mobile-secondary-menu-links').append($('div.menu-name-menu-military-nav').children().clone());
  
  // Repeated menu: copy secondary links to the bottom of the page   
  $('#mobile-menu-repeat-links').append($('#block-menu-block-prospects-left').children().clone());
  $('#mobile-menu-repeat-links').append($('#block-psu-program-program-menu').children().clone());
  $('#mobile-menu-repeat-links').append($('div.menu-name-menu-military-nav').children().clone());
      
  // Mobile menu buttons click events
  $('#mobile-main-menu-button').click(function() {
    $('.mobile-main-menu-links').slideToggle('slow');
    $('.mobile-secondary-menu-links').hide();
  });
  $('#mobile-secondary-menu-button').click(function() {
    $('.mobile-secondary-menu-links').slideToggle('slow');
    $('.mobile-main-menu-links').hide();
  });
	  

  // TIML: Move block to the first column
  $('div.field-name-field-prgm-be-stories-ref').insertAfter('article.psu-sidemenu');
  $('div.field-name-field-p-be-stories-ref').insertAfter('article.block-menu-block-prospects-left');
  $('div.field-name-field-p-be-stories-ref').insertAfter('article.block-psu-prospects-page-military');
  if ($('div.field-name-field-p-be-stories-ref').length != 0) {
    $('div.be-pager').remove().insertAfter('div.field-name-field-p-be-stories-ref div.story-row:last');
  }
  // THML: Start on a random story
  var random = Math.floor(Math.random() * $('a.story-link').length);
  $('a.story-link-' + random + ', div.story-row-' + random).addClass('active');
  
  // TIML: Hide the quote if a TIML story exists
  if ($('div.field-name-field-p-be-stories-ref').length != 0) {
    $('article#block-psu-quote-random-quote').remove();
  }
  
  // TIML: Pager functions
  $('a.story-link').each(function(i) {
    $(this).click(function() {
      $(this).addClass('active');
      $('a.story-link').not(this).removeClass('active');
      $('.story-row-'+(i)).fadeIn('slow'); 
      $('.story-row').not('.story-row-'+(i)).css('display','none'); 
      return false;
    });
  });
  programSelectFix = [];
  programSelectFix.push('#webform-component-step-3-of-3 .fieldset-wrapper .fieldset-wrapper select');
  programSelectFix.push('#webform-component-program-interest--fieldset-more-both-prog select');
  programSelectFix.push('form.admissions-reqs #edit-undergraduate');
  programSelectFix.push('form.admissions-reqs #edit-graduate');
  programSelectFix.push('#edit-estimator #edit-graduate');
  programSelectFix.push('#psu-cc-get-program-form #edit-program');
  jQuery( window ).load(jQuery.each(programSelectFix,function(index, value) {
    iOsSelectWrap(value);
  }));
}

// Large breakpoint above 980px
var largeState = function($) {
  // Move Search box to hidden container
  $('#block-search-form').appendTo($('.region-header'));
  // Move second sidebar contents to the right column
  $('.group-full-right-inner').appendTo($('.group-full-right'));
  if ($('#admissions-result-right').length) {
    // Admission reqs hack
    $('#admissions-result-right').appendTo($('.admissions-right.group-full-right'));
  }
  // Move program summer to right column
  $('.program-summary').prependTo($('.group-full-right'));
  
  // Hide mobile menus for larger displays
  $('div.mobile-section-menu').hide();
  $('#mobile-menu-repeat').hide();
  
  // Homepage: Move title for tablet and mobile (I'm ugly - Rob, help!)
  $('#we-are-block .item1 h2').appendTo($('#we-are-block .item1 .we-are-above'));
  $('#we-are-block .item2 h2').appendTo($('#we-are-block .item2 .we-are-above'));
  $('#we-are-block .item3 h2').appendTo($('#we-are-block .item3 .we-are-above'));
  
}

// Medium breakpoint between 741px and 980px
var mediumState = function($) {
  // Move Search box to hidden container
  $('#block-search-form').appendTo($('.src-wrap'));
  // Move second sidebar contents to the left column
  $('.group-full-right-inner').appendTo($('#second-sidebar-tablet'));
  if ($('#admissions-result-right').length) {
    // Admission reqs hack
    $('#admissions-result-right').appendTo($('#second-sidebar-tablet'));
  }
  // Move program summery to main content area
  $('.program-summary').insertBefore($('.program-overview .field-name-body'));
  
  // Hide mobile menus for larger displays
  $('div.mobile-section-menu').hide();
  $('#mobile-menu-repeat').hide();
  
  // Homepage: Move title for tablet and mobile (I'm ugly - Rob, help!)
  $('#we-are-block .item1 h2').appendTo($('#we-are-block .item1 .we-are-right'));
  $('#we-are-block .item2 h2').appendTo($('#we-are-block .item2 .we-are-right'));
  $('#we-are-block .item3 h2').appendTo($('#we-are-block .item3 .we-are-right'));
}

// Small breakoint up to 740px
var smallState = function($) {
  // Move Search box to hidden container
  $('#block-search-form').appendTo($('.src-wrap'));
  // Move second sidebar contents to the left column
  $('.group-full-right-inner').appendTo($('#second-sidebar-tablet'));
  if ($('#admissions-result-right').length) {
    // Admission reqs hack
    $('#admissions-result-right').appendTo($('#second-sidebar-tablet'));
  }
  // Move program summery to main content area
  $('.program-summary').insertBefore($('.program-overview .field-name-body'));
	
  // If a secondary menu exists, show it and make room
  if ($('.mobile-secondary-menu-links ul').length != 0) {
    $('div.mobile-site-menu').css('width', '50%');
	$('div.mobile-section-menu').show();
	$('#mobile-menu-repeat').show();
  }	
}

var setHandleBy = function(state) {
  if (jQuery("[name='submitted[handle_by]']").length) {
    handle_by = state=='large' ? 1 : 8;
    jQuery("[name='submitted[handle_by]']").val(handle_by);
  }
}

var iOsSelectWrap = function(element) {
  jQuery(element).append('<optgroup label=""></optgroup>');
}

jQuery( window ).load(stateHandler);

jQuery(function() {
    var timer_id;
    jQuery(window).resize(function() {
        clearTimeout(timer_id);
        timer_id = setTimeout(function() {
            stateHandler();
        }, 200);
    });
});	

;
