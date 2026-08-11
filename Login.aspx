<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" Title="" %>

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
                            <h1>Student Login Panel</h1>
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
                    Login with your regno and password below.<br />
                    <br />
                    <div style="width: 20%; padding: 8px; float: left; text-align: right;">
                        Registration No :
                    </div>
                    <div style="width: 70%; padding: 5px; float: left; text-align: left;">
                        <input runat="server" name="username" type="text" maxlength="15" id="username" tabindex="1"
                            title="Enter User Name" class="Field150" onkeypress="return clickEnter(event);"
                            style="background-color: White; border-collapse: separate; border-color: Gray;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="fd"
                            ControlToValidate="username" ErrorMessage="Please enter username."></asp:RequiredFieldValidator>
                    </div>
                    <div style="width: 20%; padding: 8px; float: left; text-align: right;">
                        Password :
                    </div>
                    <div style="width: 70%; padding: 5px; float: left; text-align: left;">
                        <input runat="server" name="password" type="password" id="password" class="Field150"
                            maxlength="15" onpaste="return false" tabindex="2" style="background-color: White;
                            border-collapse: separate; border-color: Gray;" onfocus="GetPassWord();" onkeypress="return clickEnter(event);"
                            oncopy="return false" oncut="return false">
                        <asp:RequiredFieldValidator ID="reqpass" runat="server" ValidationGroup="fd" ControlToValidate="password"
                            ErrorMessage="Please enter Password."></asp:RequiredFieldValidator>
                    </div>
                    <div style="width: 70%; padding: 5px; float: right; text-align: left;">
                        <asp:Button ID="login" ValidationGroup="fd" runat="server" Text="Login" ToolTip="Login"
                            class="send-active-btn" OnClick="login_Click" />
                        <span title="Forgot Password ?" style="margin-left: -0px"><a href="#">
                            Forgot Password ?</a> </span>
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
