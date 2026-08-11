<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true"
    CodeFile="BranchLogin.aspx.cs" Inherits="BranchLogin" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead"
    runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody"
    runat="Server">


     <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Branch Login</h1>
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

    <div class="container clearfix">
        <!-- start tabs -->
        
        <div class="css-panes">
            <div id="t1" class="pane" style="display: block;">
            
            
             <div style="width:100%; float:left;">
    
                                           
                                                Login with your regno and password below.<br /><br />
                                                
                                                <div style="width:20%; padding:8px; float:left; text-align:right;">
                                                Select Period :
                                                </div>
     
      <div style="width:70%; padding:5px; float:left; text-align:left;">
                     
                <asp:DropDownList ID="Drop_Time" class="inputdrop" style="width:138px; padding:2px;" runat="server">
                    <asp:ListItem Value="5">5 Minute</asp:ListItem>
                    <asp:ListItem Value="10">10 Minute</asp:ListItem>
                    <asp:ListItem Value="20">20 Minute</asp:ListItem>
                    <asp:ListItem Value="30">30 Minute</asp:ListItem>
                    <asp:ListItem Value="60">60 Minute</asp:ListItem>
                    <asp:ListItem Value="120">120 Minute</asp:ListItem>
                    <asp:ListItem Selected Value="86400">1 Day</asp:ListItem>
                </asp:DropDownList>
                </div>
                
                   <div style="width:20%; padding:8px; float:left; text-align:right;">
                                                                             Enter RegNo :
                                                </div>
                                                
                            <div style="width:70%; padding:5px; float:left; text-align:left;">
      
                <asp:TextBox ID="txtUserName" runat="server" class="input username" 
                    onfocus="this.value=''"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="ffd"
                    ErrorMessage="Enter RegNo ?" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                    
                    </div>
                    
                      <div style="width:20%; padding:8px; float:left; text-align:right;">
                                                                          Enter Password :
                                                </div>
                                                
                                                
                      <div style="width:70%; padding:5px; float:left; text-align:left;">
                
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="input password"
                    Text="Password" onfocus="this.value=''"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="ffd"
                    ErrorMessage="Enter Password ?" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </div>
                    
                      <div style="width:70%; padding:5px; float:right; text-align:left;">
      
                <asp:Button ID="btnLogin" runat="server" Text="Login" class="send-active-btn" ValidationGroup="ffd"
                    OnClick="btnLogin_Click" /> <span title="Forgot Password ?" style="margin-left: -0px">
                                                           <a href="#">Forgot Password ?</a>
                                                            
    <br />
                <asp:Label ID="Label1" runat="server" class="register"></asp:Label>
                
                </div>
                
                </div>
            </div>
        </div>
        <!-- end tabs -->

        <script>
            $(function() {

                $("ul.css-tabs").tabs("div.css-panes > div", { history: true });



            });
        </script>

    </div>
                </div>
             </section>   
</asp:Content>
