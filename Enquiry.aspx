<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Enquiry" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody" Runat="Server">
 <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Enquiry</h1>
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
        
      
     
     
	<div class="head">
    	<div class="title" style="margin-bottom: 15px;"><h2>Gurukul Programs Inquiry</h2></div>
		<div class="clear"></div> 		
	</div>
	<div class="container clearfix" style="margin-top: 10px;">
			<h4>Are you interested ?<br>Fill out the form below to get started.</h4> 
			<p>You may also email us at <a href="mailto:info@mgitm.in">info@mgitm.in</a> or call +91-8800-959-688 if you have questions.</p>
			<p></p><div id="surveyMonkeyInfo"><div></div></div><p></p>       
	</div><!-- end container -->

       <table width="400" cellspacing="0" cellpadding="0" border="0" style="width: 660px; border: 0;">	
<tbody>
<tr>
	<td width="145" style="background-color:#f5f5f5;" align="right"><font size="2" face="Arial" color="#000000">Your Name:</font></td>
	<td width="275" style="background-color:#f5f5f5;"><input id="txtname" runat="server" type="text" value="" maxlength="40" size="30" name="name">
	
	<asp:RequiredFieldValidator ID="req1" runat="server" ValidationGroup="llp" ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
	</td>
</tr>
<tr>
	<td width="145" style="background-color:#f5f5f5;" align="right"><font size="2" face="Arial" color="#000000">Your Email Address:</font></td>
	<td width="275" style="background-color:#f5f5f5;"><input id="txtemail" runat="server" type="text" value="" maxlength="40" size="30" name="email">
	
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="llp" ControlToValidate="txtemail" ErrorMessage="*"></asp:RequiredFieldValidator>
	</td>
</tr>
<tr>
	<td width="145" style="background-color:#f5f5f5;" align="right"><font size="2" face="Arial" color="#000000">Your Mobile No:</font></td>
	<td width="275" style="background-color:#f5f5f5;"><input id="txtmobile" runat="server" type="text" value="" maxlength="40" size="30" name="subject">
	
		<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="llp" ControlToValidate="txtmobile" ErrorMessage="*"></asp:RequiredFieldValidator>
	</td>
</tr>					
<tr>
	<td width="145" valign="top" style="background-color:#f5f5f5;" align="right"><font size="2" face="Arial" color="#000000">Your Message:</font></td>
	<td width="275" style="background-color:#f5f5f5;"><textarea id="txtmessage" runat="server" cols="60" rows="6" name="message"></textarea>
	
		<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="llp" ControlToValidate="txtmessage" ErrorMessage="*"></asp:RequiredFieldValidator>
	
	</td>
</tr>
<tr>
	<td width="145" valign="top" style="border-bottom:0;">&nbsp;</td>
	<td width="275" style="border-bottom:0; padding-top: 10px; padding-bottom: 10px;">	
		 <asp:Button ID="BtnSubmit" ValidationGroup="llp" runat="server" Text="Send now" class="send-active-btn"
                                        OnClick="BtnSubmit_Click"></asp:Button>
	</td>
</tr>
</tbody>
</table>
       
       
       
		
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

