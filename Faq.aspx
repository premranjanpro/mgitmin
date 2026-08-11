<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true" CodeFile="Faq.aspx.cs" Inherits="Faq" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody" Runat="Server">
 <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Frequently Asked Questions</h1>
                            <p>Mahatna Gandhi Institute of Technology & Management</p>
                        </div>
                    </div>
                    <div class="col-sm-4 col-lg-3"> <a href="Registration.aspx" class="apply-online clearfix">
                        <div class="left clearfix"> <span class="icon"><img src="images/apply-online-sm-ico.png" class="img-responsive" alt=""></span> <span class="txt">Apply Online</span> </div>
                        <div class="arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                        </a></div>
                </div>
            </div>
        </div>


<section class="about inner padding-lg" style="padding-bottom:0px;">
            <div class="container">
    	
    	
    	<script type="text/javascript">
$(document).ready(function() {
	$('#dl1').dltoggle({  
		"open-image" : "images/minus.png",
        "closed-image" : "images/plus.png" 
	});
   $("#dl1open").click(function(event){
      $('#dl1').dltoggle_show();
      return false;
   });
   $("#dl1close").click(function(event){
      $('#dl1').dltoggle_hide();
      return false;
   });
	$('#dl2').dltoggle({  
		"open-image" : "images/minus.png",
		"closed-image" : "images/plus.png" });

   $("#dl2open").click(function(event){
      $('#dl2').dltoggle_show();
      return false;
   });
   $("#dl2close").click(function(event){
      $('#dl2').dltoggle_hide();
      return false;
   });
   
   $("ul.css-tabs").tabs("div.css-panes > div", { history: true });
   
});

</script>
		
<div class="css-panes">

    <div id="t1" class="pane" style="display: block;">
    
    <div style="width:100%; float:left;">
        

			<h3>Program Questions</h3>
			<p>[ <a href="#" id="dl1open">Open all</a> | <a href="#" id="dl1close">Close all</a> ]</p>
			<dl id="dl1">
			
			<asp:Repeater ID="RepeaterFaq" runat="server">
			<ItemTemplate>
			 <dt style="padding-top: 0px; padding-bottom: 10px; padding-left: 17px; font-weight: bold;
                    cursor: pointer; background-image: url(images/plus.png); background-position: 0% 3px;
                    background-repeat: no-repeat no-repeat;"><%# Eval("Question") %></dt>
			<dd style="display: none;">
			<i><%# Eval("Answer") %></i><br><br>
			<ul>
				
			</ul>
			
			</dd>
			</ItemTemplate>
			</asp:Repeater>
			
			
                
			
			
			</dl>
		</div>
		
	</div>
	</div>
	
	</div>

    </section>
</asp:Content>

