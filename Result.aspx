<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true"
    CodeFile="Result.aspx.cs" Inherits="Result" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead"
    runat="Server">
    <style type="text/css">
        @media print {


            header {
                display: none;
            }

            .blog {
                display: none;
            }

            .person_profile {
                display: none;
            }

            .our-cources {
                display: none;
            }

            .our-impotance {
                display: none;
            }

            .how-study {
                display: none;
            }

            .why-choose {
                display: none;
            }

            .news-events {
                display: none;
            }

            footer {
                display: none;
            }

            #princon {
                width: 630px !important;
                float: left !important;
                margin-top: -20px !important;
            }


            #page-top {
                display: none;
            }

            #header_wrapper {
                display: none;
            }

            #content-header {
                display: none;
            }

            .menu_wrapper {
                display: none;
            }

            #pridiv {
                display: none;
            }

            #divlogo {
                display: block;
            }

            .header {
                display: none;
            }

            #wrapper_menu {
                display: none;
            }

            .submenu {
                display: none;
            }

            .footer {
                display: none;
            }

            .content .right-col {
                display: none;
            }

            .head {
                display: none;
            }

            ul.css-tabs {
                display: none;
            }
        }

        #divlogo {
            width: 96%;
            float: left;
            margin-bottom: 10px;
            margin-left: 2%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody"
    runat="Server">


    <div class="inner-banner blog">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="content">
                        <h1>Result Verification</h1>
                        <p>Mahatna Gandhi Institute of Technology & Management</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="about inner padding-lg">
        <div class="container">
            <div class="row">
                <div id="t1" class="pane" style="display: block;">
                    <div style="width: 100%; float: left;">
                        <div class="inside">
                            <div style="width: 100%; float: left;">
                                <div style="width: 100%; float: left; margin-bottom: 10px; margin-top: 10px; float: left;">
                                    <asp:Panel ID="panelresultsearch" runat="server" Width="100%">

                                        <div class="row">

                                            <div class="col-md-4 ">
                                            </div>

                                            <div class="col-md-4 ">
                                                <div class="enquire-wrapper">
                                                    <figure class="hidden-xs hidden-sm">
                                                        <img src="images/Admin.gif" class="img-responsive" alt="">
                                                    </figure>
                                                    <div class="enquire-now">
                                                        <div class="inner">
                                                            <h3>Result Enquire Now</h3>
                                                            <div class="row1">

                                                                <asp:TextBox ID="txtregNo" placeholder="Enter Roll No" runat="server"></asp:TextBox>

                                                                <asp:RequiredFieldValidator ID="reqffre" runat="server" ControlToValidate="txtregNo"
                                                                    ValidationGroup="kkd" ForeColor="White" ErrorMessage="Please enter student registration no."></asp:RequiredFieldValidator>


                                                            </div>

                                                        </div>

                                                        <asp:Button ID="btnsearch" class="enquire-btn" runat="server" Text="Search" ValidationGroup="kkd"
                                                            OnClick="btnsearch_Click" />


                                                    </div>
                                                </div>
                                            </div>
                                        </div>



                                    </asp:Panel>
                                    <div id="princon" style="width: 680px; margin: auto;">
                                        <div style="width: 100%; float: left; margin-top: 5px; margin-bottom: 10px;">
                                            <div style="width: 100%; float: left;">
                                                <asp:Panel ID="paneldetails" Visible="false" runat="server" Width="100%">
                                                    <div style="width: 100%; border: solid 2px rgb(76, 157, 231); float: left; padding-top: 10px; padding-bottom: 10px; color: Black;">
                                                        <div id="divrem" style="width: 100%; float: left;">



                                                            <div id="divlogo">
                                                                <img src="images/glogo1.png" height="60px" border="0" />
                                                                <img src="images/glogo2.png" border="0" height="60px" width="270px" />
                                                                <div style="width: 250px; line-height: 16px; font-weight: bold; color: black; text-align: right; float: right;">
                                                                    Correspondence Office :
                                                                    <br />
                                                                    RC 233, Makan Pur Colony (NCR)<br />
                                                                    Ghaziabad, Uttar Pradesh
                                                                </div>
                                                            </div>
                                                            <div style="width: 100%; border-bottom: solid 2px rgb(76, 157, 231); border-top: solid 2px rgb(76, 157, 231); background-color: #FD9005; font-size: 18px; line-height: 25px; font-weight: bold; color: white; margin-top: 5px; text-align: center; float: left;">
                                                                MAHATMA GANDHI INSTITUTE OF TECHNOLOGY AND MANAGEMENT
                     
                                                            </div>
                                                            <div style="width: 100%; font-size: 15px; font-weight: bolder; margin-top: 5px; margin-bottom: 5px; color: blue; text-align: center; float: left;">
                                                                www.mgitm.in
                                                            </div>
                                                            <div style="width: 100%; font-size: 20px; font-weight: bold; margin-top: 0px; margin-bottom: 0px; color: black; text-align: center; float: left;">
                                                                RESULT VERIFICATION
                                                            </div>

                                                            <div style="width: 100%; line-height: 25px; border-bottom: solid 2px rgb(76, 157, 231); border-top: solid 2px rgb(76, 157, 231); font-size: 20px; background-color: rgb(218, 227, 233); font-weight: bold; margin-top: 15px; margin-bottom: 0px; color: black; text-align: left; float: left;">
                                                                &nbsp;&nbsp;Student Details
                                                            </div>

                                                            <div style="width: 100%; margin-top: 10px; margin-bottom: 10px; text-align: center; float: left;">

                                                                 <div style="width:70%; text-align: center; float: left;">

                                                                     <div style="width: 100%; margin-top: 10px; margin-bottom: 10px; text-align: center; float: left;">
                                                                         <div style="width: 35%; margin-left: 2%; float: left; text-align: left;">
                                                                             Roll No
                                                                         </div>
                                                                         <div style="width: 63%; float: left; text-align: left;">
                                                                             :&nbsp;
                                                            <asp:Label ID="lblregnoresult" runat="server"></asp:Label>
                                                                         </div>
                                                                     </div>
                                                            <div style="width: 100%; text-align: center; float: left;">
                                                                <div style="width: 35%; margin-left: 2%; float: left; text-align: left;">
                                                                    Name
                                                                </div>
                                                                <div style="width: 63%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lblname" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 100%; margin-top: 10px; text-align: center; float: left;">
                                                                <div style="width: 35%; margin-left: 2%; float: left; text-align: left;">
                                                                    Father's Name
                                                                </div>
                                                                <div style="width: 63%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lblfather" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                                </div>

                                                                 <div style="width: 30%; text-align: center; float: left;">
                                                                     <asp:Image ID="imgProfile" Width="110px" runat="server" />
                                                                </div>


                                                                </div>


                                                           
                                                            <div style="width: 100%; line-height: 25px; border-bottom: solid 2px rgb(76, 157, 231); border-top: solid 2px rgb(76, 157, 231); font-size: 20px; background-color: rgb(218, 227, 233); font-weight: bold; margin-top: 15px; margin-bottom: 0px; color: black; text-align: left; float: left;">
                                                                &nbsp;&nbsp;Course Details
                                                            </div>
                                                            <div style="width: 100%; margin-top: 10px; text-align: center; float: left;">
                                                                <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                    Course Name
                                                                </div>
                                                                <div style="width: 73%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lblcoursename" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 100%; margin-top: 10px; text-align: center; float: left;">
                                                                <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                    Course Duration
                                                                </div>
                                                                <div style="width: 73%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lblcourseduration" runat="server"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div style="display: none;">
                                                                <div style="width: 100%; border-bottom: solid 2px rgb(76, 157, 231); border-top: solid 2px rgb(76, 157, 231); font-size: 20px; background-color: rgb(218, 227, 233); font-weight: bold; margin-top: 15px; margin-bottom: 0px; color: black; text-align: left; float: left;">
                                                                    &nbsp;&nbsp;Branch Details
                                                                </div>
                                                                <div style="width: 100%; margin-top: 20px; text-align: center; float: left;">
                                                                    <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                        Branch Code
                                                                    </div>
                                                                    <div style="width: 73%; float: left; text-align: left;">
                                                                        :&nbsp;
                                                            <asp:Label ID="lblbranchcode" runat="server"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div style="width: 100%; margin-top: 20px; text-align: center; float: left;">
                                                                    <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                        Branch Name
                                                                    </div>
                                                                    <div style="width: 73%; float: left; text-align: left;">
                                                                        :&nbsp;
                                                            <asp:Label ID="lblbranchname" runat="server"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div style="width: 100%; margin-top: 20px; text-align: center; float: left;">
                                                                    <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                        Branch Address
                                                                    </div>
                                                                    <div style="width: 73%; float: left; text-align: left;">
                                                                        :&nbsp;
                                                            <asp:Label ID="lblbranchaddress" runat="server"></asp:Label>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div style="width: 100%; line-height: 25px; border-bottom: solid 2px rgb(76, 157, 231); border-top: solid 2px rgb(76, 157, 231); font-size: 20px; background-color: rgb(218, 227, 233); font-weight: bold; margin-top: 15px; margin-bottom: 0px; color: black; text-align: left; float: left;">
                                                                &nbsp;&nbsp;Result Details
                                                            </div>

                                                            <div style="width: 100%; margin-top: 10px; text-align: center; float: left;">
                                                                <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                    Marks of First Year
                                                                </div>
                                                                <div style="width: 73%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lblfirst" runat="server"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div runat="server" id="DivSecond" visible="true" style="width: 100%; margin-top: 10px; text-align: center; float: left;">
                                                                <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                    Marks of Second Year
                                                                </div>
                                                                <div style="width: 73%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lblsecond" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div runat="server" id="DivThird" visible="true" style="width: 100%; margin-top: 10px; text-align: center; float: left;">
                                                                <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                    Marks of Third Year
                                                                </div>
                                                                <div style="width: 73%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lblThird" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 100%; margin-top: 10px; text-align: center; float: left;">
                                                                <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                    Total
                                                                </div>
                                                                <div style="width: 73%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lbltotal" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 100%; margin-top: 10px; text-align: center; float: left;">
                                                                <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                    Result
                                                                </div>
                                                                <div style="width: 73%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lblresult" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 100%; margin-top: 10px; margin-bottom: 20px; text-align: center; float: left;">
                                                                <div style="width: 25%; margin-left: 2%; float: left; text-align: left;">
                                                                    Date of Issue
                                                                </div>
                                                                <div style="width: 73%; float: left; text-align: left;">
                                                                    :&nbsp;
                                                            <asp:Label ID="lbldateofissue" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 97%; margin-top: 20px; margin-bottom: 20px; text-align: left; padding-left: 10px; padding-right: 10px; float: left;">
                                                                <p>
                                                                    Note :
                                                                    The Result Published on the net are for immediate information to examinees. These cannot be treated as certificate. Student may apply with in 20 days for any correction at info@mgitm.in.
                                                                </p>

                                                                <p style="text-align: center;">
                                                                    Data provided by : Mahatma Gandhi Institute of Technology & Management    
                                                                </p>
                                                            </div>

                                                            <div id="pridiv" align="center" class="clr1" style="font-size: 11px;">
                                                                <span class="become-premium-bg"><a title="Print Now.." href="#" onclick="window.print();">
                                                                    <img src="images/print.png" width="40" height="40" style="border: none;" title="Click to Print"></a></span>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
