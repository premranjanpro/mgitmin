<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true" CodeFile="Testimonials.aspx.cs" Inherits="Testimonials" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody" Runat="Server">
 <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Testimonials</h1>
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
    	
	
<div class="css-panes">

    <div id="t1" class="pane" style="display: block;">
    
    <div style="width:100%; float:left;">
        
        <asp:Repeater ID="RepeaterTestimonials" runat="server">
        <ItemTemplate>
        
        <div class="box_divider" >
				<div class="left"><img src='<%# Eval("Image") %>'></div>
				<div class="right">
					<h4><%# Eval("Name") %>&nbsp;&nbsp;<span style="color: #275a7d; font-size: 12px;">from <%# Eval("State") %></span></h4>
						<p>"<%# Eval("Message") %>"</p>
				</div>
				<div class="clear"></div>
			</div>
        
        </ItemTemplate>
        </asp:Repeater>
      
     
       
       
       
       
		
		<script>
$(function() {

  $("ul.css-tabs").tabs("div.css-panes > div", { history: true });
  

  
});
</script>
		
		
	</div>
	</div>
	</div>
	
	</div>

    </section>
</asp:Content>

