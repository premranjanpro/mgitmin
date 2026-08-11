<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true" CodeFile="Locations.aspx.cs" Inherits="Locations" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody" Runat="Server">
 <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Institute Locations</h1>
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
    
    <div style="width:100%; text-align:center; float:left;">

        <div class="row">

                                         <div class="col-md-4 ">
                                             </div>
                    
                    <div class="col-md-4 " style="margin-top:20px;" >
                        <div class="enquire-wrapper">
                            <figure class="hidden-xs hidden-sm">
                                </figure>
                            <div class="enquire-now">
                                   <asp:Button ID="btnsearch" Enabled="false" class="enquire-btn" runat="server" Text="Select Location to Search" ValidationGroup="kkd"
                                             />

                                <div class="inner">
                                  
                                    <div class="row1">

                                       <asp:DropDownList style="width:160px; color:black; padding:5px;" ID="Drpdown_StateName" AutoPostBack="true"
                                        class="detail_combo1" runat="server" OnSelectedIndexChanged="Drpdown_StateName_SelectedIndexChanged">
                                    </asp:DropDownList>
                                        
                                    </div>
                                  
                                </div>

                               

                              
                            </div>
                        </div>
                    </div>
                </div>
    
    
   
                                    
                                    </div>
    
    <div style="width:100%; margin-top:15px; float:left;">
    
     <asp:Repeater ID="RepeaterNews" runat="server">
                <ItemTemplate>
    
    <div class="row">
                    <div class="col-md-3">
                        <div class="video-block">
                            <div id="thumbnail_container"> 
                                
                                <asp:Image Width="180px" Height="160px" ImageUrl='<%# Eval("BRANCH_IMAGE") %>' class="img-responsive" runat="server" ID="imgbra" />
		
                                 </div>
                           

                        </div>
                      
                        
                    
                    </div>
                    <div class="col-md-9 left-block">
                        <div class="cert-head">
                            <h3><%# Eval("BRANCH_NAME")%></h3>
                        </div>
                        
                        <p style="padding-bottom:2px;" >MGITM Institute at <%# Eval("City")%>, <%# Eval("STATE_NAME")%>, India</p>
                       <p style="padding-bottom:2px;"> <span>Contact Person :&nbsp;<%# Eval("BranchContactPerson")%> </span></p>
				
				<p> <span>Email Id :&nbsp;info@mgitm.in </span></p>
				<%--<p> <span>Phone No :&nbsp;+91-826-583-9101 </span></p>--%>

                    </div>
                </div>
    
   
		
		</ItemTemplate>
		</asp:Repeater>
        
      </div>
     
       
       
       
       
		
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

