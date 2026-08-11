<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true"
    CodeFile="RegistrationComplete.aspx.cs" Inherits="RegistrationComplete" Title="Registration Complete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead"
    runat="Server">
    <style type="text/css">
        @media print
        {
            #pridiv
            {
                display: none;
            }
            #divlogo
            {
                display: block;
            }
            .header
            {
                display: none;
            }
            #wrapper_menu
            {
                display: none;
            }
            .submenu
            {
                display: none;
            }
            .footer
            {
                display: none;
            }
            .content .right-col
            {
                display: none;
            }
            .head
            {
                display: none;
            }
            ul.css-tabs
            {
                display: none;
            }
        }
        #divlogo
        {
            width: 96%;
            float: left;
            margin-bottom: 10px;
            margin-left: 2%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody"
    runat="Server">
   
        <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Registration Complete</h1>
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
                <div style="width: 100%; float: left;">
                    <div id="princon" style="width: 650px; margin: auto;">
                        <div style="width: 100%; float: left; margin-top: 5px; margin-bottom: 10px;">
                            <div style="width: 100%; float: left;">
                                <div style="width: 100%; border: solid 1px black; float: left; padding-top: 10px;
                                    padding-bottom: 10px; color: Black;">
                                    <div id="divlogo">
                                        <img src="images/glogo1.png" height="60px" border="0" />
                                        <img src="images/glogo2.png" border="0" height="60px" width="300px" />
                                        <div style="width: 210px; font-weight: bold; color: black; text-align: right; float: right;">
                                            <br />
                                            Registration No :
                                            <asp:Label ID="lblregnoresult" runat="server"></asp:Label><br />
                                            Date :
                                            <asp:Label ID="lbldateresult" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div style="width: 100%; font-size:17px; font-weight:bold; color:Green; margin-top:5px; text-align: center; float: left;">
                        MAHATMA GANDHI INSTITUTE OF TECHNOLOGY AND MANAGEMENT
                        
                        </div>
                        
                         <div style="width: 100%; font-size:15px; font-weight:bolder; margin-top:5px; margin-bottom:10px; color:blue; text-align: center; float: left;">
                        www.mgitm.in
                        
                        </div>
                                    <div style="width: 100%; font-size: 20px; font-weight: bold; margin-top: 5px; margin-bottom: 15px;
                                        text-decoration: underline; color: black; text-align: center; float: left;">
                                        ADMISSION NOTIFICATION
                                    </div>
                                    <div style="width: 100%; margin-left:20px; float: left;">
                                    
                                    <div style="width: 70%;  float: left;">
                                        <p>
                                            Dear
                                            <asp:Label ID="lblname1" runat="server"></asp:Label>,</p>
                                        <p>
                                            Welcome to www.mgitm.in .</p>
                                        <p>
                                            You Have Completed Online Application Process.</p>
                                        <p>
                                            Registration No :&nbsp;<asp:Label ID="lblregno" runat="server"></asp:Label>
                                        </p>
                                        <p>
                                            Name :&nbsp;<asp:Label ID="lblname" runat="server"></asp:Label>
                                        </p>
                                        
                                         <p>
                                            Father's Name :&nbsp;<asp:Label ID="lblfather" runat="server"></asp:Label>
                                        </p>
                                        
                                        
                                        <p>
                                            Duration :&nbsp;<asp:Label ID="lblduration" runat="server"></asp:Label>
                                        </p>
                                        <p>
                                            Course Name :&nbsp;<asp:Label ID="lblcourseame" runat="server"></asp:Label>
                                        </p>
                                        <p>
                                            Branch Name :&nbsp;<asp:Label ID="lblbranchname" runat="server"></asp:Label>
                                        </p>
                                        
                                        </div>
                                        <div style="width:25%; float: left;">
                                        
                                        
                                        <asp:Image Width="160px" Height="180px" ID="ImgStudent" runat="server" />
                                        
                                        </div>
                                        
                                    </div>
                                    <div id="pridiv" align="center" class="clr1" style="font-size: 11px;">
                                        <span class="become-premium-bg"><a title="Print Now.." href="#" onclick="window.print();">
                                            <img src="images/print.png" width="40" height="40" style="border: none;" title="Click to Print"></a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <script>
                    $(function() {

                        $("ul.css-tabs").tabs("div.css-panes > div", { history: true });



                    });
                </script>

            </div>
        </div>
    </div>
   </section>
</asp:Content>
