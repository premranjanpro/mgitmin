<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead" Runat="Server">

<style type="text/css">
table.detailTable{
	font-family: verdana;
    border-collapse: collapse;
}
table.detailTable td{
	font-weight: normal;
	font-size: 12px;
	color: #333333;
}
table.detailTable td.mainhead{

	font-weight: bold;
	font-size: 14px;
	color: #136cc6;
	text-align: left;
}
table.detailTable td.heading3{

	font-weight: bold;
	font-size: 14px;
	color: #ff8800;
    border-bottom: 1px solid #e4edf6;
}

.innerh1 {
height: auto;
width: 700px;
float: left;
font: bold 21px "Trebuchet MS", Arial, Helvetica, sans-serif;
color: #0f96b8;
margin: 0px;
padding: 0px;
border-bottom: dashed 1px #ccc;
}

td
{
	border:none!important;
}

tbody
{
	border:none!important;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody" Runat="Server">






    
    <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Contact Us</h1>
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
                
            </div>
        </section>

    <section class="google-map">

         <%-- https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9168.882317160856!2d77.27681665243178!3d28.653177355890982!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfc9f7be91d2b%3A0x1e62dd66675df31!2sMAHATMA+GANDHI+INSTITUTE+OF+TECHNOLOGY+AND+MANAGEMENT!5e0!3m2!1sen!2sin!4v1541092461439--%>


            <div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27999.10147692615!2d77.44858119823715!3d28.69300618986601!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cf19de4ad8dd1%3A0x718e756ca71efd78!2sSanjay+Nagar%2C+Ghaziabad%2C+Uttar+Pradesh+201002!5e0!3m2!1sen!2sin!4v1541092141192" style="border:none;"></iframe></div>
            <div class="container">
                <div class="contact-detail">
                    <div class="address">
                        


                        <asp:Repeater ID="RepeaterAddress" runat="server">
<ItemTemplate>


    <div class="inner">
                            <h3><%#Eval("OffficeType")%></h3>
                            <p><%#Eval("Address1") %></p>
                            <p><%#Eval("Address2") %></p>
                        </div>


        
</ItemTemplate>
</asp:Repeater>

                        <div class="inner">
                            <h3>+91 98114 52322</h3>
                        </div>
                        <div class="inner"> <a href="mailto:info@mgitm.in">info@mgitm.in</a> </div>
                    </div>
                    <div class="contact-bottom">
                        <ul class="follow-us clearfix">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>


    <section class="our-impotance have-question padding-lg">
            <div class="container">
                <h2>Still have questions?</h2>
                <ul class="row">
                    <li class="col-sm-4 equal-hight" style="height: 254px;">
                        <div class="inner"> <img src="images/help-center-ico.jpg" alt="Malleable Study Time">
                            <h3>Help Center</h3>
                            <p>Study material available online 24/7. Study in your free time, no time management issues, perfect balance between work and study time.</p>
                        </div>
                    </li>
                    <li class="col-sm-4 equal-hight" style="height: 254px;">
                        <div class="inner"> <img src="images/faq-ico.jpg" alt="Placement Assistance">
                            <h3>Faq’s</h3>
                            <p>MGITM Online has access to all of Edumart Group’s placement resources and alumni network, through which thousands of job opportunities are generated.</p>
                        </div>
                    </li>
                    <li class="col-sm-4 equal-hight" style="height: 254px;">
                        <div class="inner"> <img src="images/document-ico.jpg" alt="Easy To Access">
                            <h3>Technical Documents</h3>
                            <p>There is easy accessibility to online help in terms of online teachers and online forums. Teachers can be contacted with the help of video chats and e-mails.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </section>








		
		

</asp:Content>

