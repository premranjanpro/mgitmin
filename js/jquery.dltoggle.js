//
//  Automagic dl/dt/dd toggle
//
// Steve Kemp
// --
// http://www.steve.org.uk/jquery/
//

//
// create closure
//
(function($){
    //
    // plugin definition
    //
    $.fn.dltoggle = function(options){

        // build main options before element iteration
        var opts = $.extend({}, $.fn.dltoggle.defaults, options);

        //
        // The open/shut images.
        //
        // var shut =  ( opts["closed-image"] || "..images/plus.png" );
        // var open =  ( opts["open-image"]   || "..images/minus.png"   );
		var shut =  ( opts["closed-image"]);
		var open =  ( opts["open-image"]);
        
        //
        // Save the open + shut images away with this element
        // so that "dltoggle_show()" + "dltoggle_hide()" can access
        // them.
        //
        this.data( "shut", shut );
        this.data( "open", open );

        //
        // Setup CSS - TODO: Use the options more than for open/closed
        //
        this.parent().find('dt').css( {
            "background-repeat"    : "no-repeat",
            "background-position"  : "left 3px",
            "padding-top"         : "0px",
            "padding-bottom"         : "10px",
            "padding-left"         : "17px",
            "font-weight"          : "bold",
            "cursor"               : "pointer",
        })

        //
        //  All are open by default.
        //
        this.parent().find('dt').css( {
            "background-image" : "url(" + open + ")" ,
        })

        //
        //  If "leave-open" is not set then close all but the first.
        //
        if ( !opts["leave-open"] )
        {
            //
            // hide all non-first dds
            //
            //this.find('dd:not(:first)').hide();
			this.find('dd').hide();
            
            //
            // Set the image to be "shut" for all non-first dts.
            //
            // this.parent().find('dt:not(:first)').css( {
			this.parent().find('dt').css( {
                "background-image"     : "url(" + shut + ")" ,
            })
        }

        //
        // add the click handler
        //
        return this.find('dt').each(function(){
            $this = $(this);
            jQuery(this).click( function() {

                //
                // Toggle the state.
                //
                $(this).next().toggle();

                //
                // Update the images on the dt's to match the state.
                //
                if ( $(this).next().is(":visible") )
                {
                    $(this).css({ "background-image" : "url(" + open + ")" } );
                }
                else
                {
                    $(this).css({ "background-image" : "url(" + shut + ")" } )
                }
                return false;
            } );
        } );
     }

     //
     //  exported function - show all dd-children.
     //
     $.fn.dltoggle_show = function(options)
     {
        //
        // The saved "open" image.
        //
        var open= $(this).data("open");

        return $(this).find('dt').each(function(){
            $this = $(this);
            $this.next().show().end();
            $this.css( { "background-image" : "url(" + open + ")" });
        });
     }

     //
     //  exported function - hide all dd-children.
     //
     $.fn.dltoggle_hide = function(options)
     {
        //
        //  The saved "shut" image.
        //
        var shut= $(this).data("shut");

        return $(this).find('dt').each(function(){
            $this = $(this);
            $this.next().hide().end();
            $this.css( { "background-image" : "url(" + shut + ")" } );
        });
     }

     //
     // plugin defaults
     //
     $.fn.dltoggle.defaults = { "open-image"   : "open.gif",
                                "closed-image" : "closed.gif",
                                "leave-open"   : 0 };

     //
     // end of closure
     //
})(jQuery);
