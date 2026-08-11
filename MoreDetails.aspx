<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true" CodeFile="MoreDetails.aspx.cs" Inherits="MoreDetails" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody" Runat="Server">
 <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>News</h1>
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
    	
		<!-- start tabs -->
			<ul class="css-tabs">
				<li><a class="current" id="t1" href="#whoweare?"><asp:Label ID="lblmoretitle" runat="server"></asp:Label> </a></li>
				
				
			</ul>
<div class="css-panes">

    <div id="t1" class="pane" style="display: block;">
        <!--<div class="alertbox"></div>-->
        
        <div class="img-box">
    <div style="width:100%;float:left;margin-bottom:20px; text-align:justify;"> 
    
    <asp:Image ID="imgmore" Width="225px" Height="150px" runat="server" />
   
   <asp:Label ID="lblmoredetails" runat="server"></asp:Label>
   
  
   </div>
           
           
        </div>
        
       
    </div>
  
    

		</div><!-- end tabs -->
		
		<script>
$(function() {

  $("ul.css-tabs").tabs("div.css-panes > div", { history: true });
  

  
});
</script>
		
		
	</div>
    </section>
</asp:Content>

