<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="Registration" Title="" %>

<%@ Register Src="UserControls/BtDateTimeControl.ascx" TagName="BtDateTimeControl"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead"
    runat="Server">
    <link href="css/stylereg.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        select
        {
            padding: 5px;
            border: solid 1px #e5e5e5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody"
    runat="Server">
    <asp:UpdatePanel ID="Update_Log" runat="server" UpdateMode="Conditional">
        <Triggers>
            <asp:PostBackTrigger ControlID="BtnSubmit" />
        </Triggers>
        <ContentTemplate>
            <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Online Student Registration</h1>
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
                            <table id="tdfm" class="detailTable" align="center" cellpadding="4" cellspacing="4"
                                width="100%">
                                <tbody>
                                    <tr>
                                        <td style="width: 18%;">
                                        </td>
                                        <td style="width: 32%;">
                                        </td>
                                        <td style="width: 18%;">
                                        </td>
                                        <td style="width: 32%;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="heading" colspan="4">
                                            Personal Information
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="description" colspan="4">
                                            Please enter details below to complete registration.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Course Duration
                                        </td>
                                        <td class="reqfield">
                                            <asp:DropDownList Style="width: 160px;" ID="DrpCourseDuration" class="detail_combo2"
                                                runat="server" AutoPostBack="true" OnSelectedIndexChanged="DrpCourseDuration_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="DrpCourseDuration"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            Course Type
                                        </td>
                                        <td class="reqfield">
                                            <asp:DropDownList Style="width: 160px;" ID="DropDown_Course_Type" class="detail_combo2"
                                                AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDown_Course_Type_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DropDown_Course_Type"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Course Name
                                        </td>
                                        <td class="reqfield" colspan="3">
                                            <asp:DropDownList Style="width: 160px;" ID="DropDown_CourseName" class="detail_combo2"
                                                runat="server">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="DropDown_CourseName"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            State
                                        </td>
                                        <td>
                                            <asp:DropDownList Style="width: 160px;" ID="Drpdown_StateName" AutoPostBack="true"
                                                class="detail_combo1" runat="server" OnSelectedIndexChanged="Drpdown_StateName_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="Drpdown_StateName"
                                                InitialValue="Select" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            Branch
                                        </td>
                                        <td>
                                            <asp:DropDownList AutoPostBack="true" Style="width: 160px;" ID="DropDown_Branch" class="detail_combo1"
                                                runat="server" 
                                                onselectedindexchanged="DropDown_Branch_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="DropDown_Branch"
                                                InitialValue="Select" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    
                                    
                                    <tr id="trbranchdetails" runat="server" visible="false" >
                                        <td>
                                        Branch Email
                                        
                                        </td>
                                        
                                         <td>
                                        <asp:Label ID="lblbranchemail" runat="server"></asp:Label>
                                        
                                        </td>
                                         <td>
                                        
                                        Branch MobileNo
                                        
                                        </td>
                                        
                                         <td>
                                         <asp:Label ID="lblbranchmobile" runat="server"></asp:Label>
                                       
                                        
                                        </td>
                                        
                                        </tr>
                                    <tr>
                                        <td>
                                            Candidate Name
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Txtbox_Name" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Txtbox_Name"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            Father Name
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Txtfather_Name" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Txtfather_Name"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Mother Name
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Txt_mother_Name" runat="server" class="detail_text1"></asp:TextBox>
                                        </td>
                                        <td>
                                            Gender
                                        </td>
                                        <td class="reqfield">
                                            <asp:DropDownList Style="width: 160px;" ID="dropgender" runat="server">
                                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Date of Birth
                                        </td>
                                        <td class="description1" colspan="3">
                                            <uc2:BtDateTimeControl TabIndex="7" style="border: none;" ID="Txt_birthdate" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Address
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Txt_Address" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="Txt_Address"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            City
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_city" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txt_city"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    
                                    
                                    <tr>
                                        <td>
                                            Pin Code
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpincode" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtpincode"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            Password
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="txtpassword"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    
                                    
                                    
                                    <tr>
                                        <td>
                                            Phone Number
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Txtphone_no" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="Txtphone_no"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            Mobile Number
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TxtMobile" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="TxtMobile"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Email Address
                                        </td>
                                        <td class="description1">
                                            <asp:TextBox ID="Txt_mail" runat="server" class="detail_text1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="Txt_mail"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            Upload Photo
                                        </td>
                                        <td>
                                            <asp:FileUpload Width="180px" ID="FileUploadPhoto" runat="server"></asp:FileUpload>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="description1" colspan="3">
                                            Please provide active email address to receive login details.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Category
                                        </td>
                                        <td>
                                            <asp:DropDownList Style="width: 160px;" ID="drp_Category" class="detail_combo1" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Sc</asp:ListItem>
                                                <asp:ListItem>St</asp:ListItem>
                                                <asp:ListItem>Obc</asp:ListItem>
                                                <asp:ListItem>Handicapped</asp:ListItem>
                                                <asp:ListItem>Ex serviceman</asp:ListItem>
                                                <asp:ListItem>General</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="drp_Category"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            Occupation
                                        </td>
                                        <td class="description1">
                                            <asp:DropDownList Style="width: 160px;" ID="drpService" class="detail_combo1" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Student</asp:ListItem>
                                                <asp:ListItem>Service</asp:ListItem>
                                                <asp:ListItem>Bussiness</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="drpService"
                                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="heading" colspan="4">
                                            Qualification Details
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="description" colspan="4">
                                            Please enter qualification details and upload a scan copy of degree or marksheet.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Qualification 1
                                        </td>
                                        <td>
                                            <asp:DropDownList Style="width: 160px;" ID="drp_Qualification1" class="detail_combo1"
                                                runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Post Graduation</asp:ListItem>
                                                <asp:ListItem>Graduation</asp:ListItem>
                                                <asp:ListItem>Senior Secondary</asp:ListItem>
                                                <asp:ListItem>Secondary</asp:ListItem>
                                                <asp:ListItem>8TH Class</asp:ListItem>
                                                <asp:ListItem>5TH Class</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            Upload Document
                                        </td>
                                        <td>
                                            <asp:FileUpload Width="180px" ID="FileUploadqual1" runat="server"></asp:FileUpload>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Qualification 2
                                        </td>
                                        <td>
                                            <asp:DropDownList Style="width: 160px;" ID="drpqUALIFICATION2" class="detail_combo1"
                                                runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Post Graduation</asp:ListItem>
                                                <asp:ListItem>Graduation</asp:ListItem>
                                                <asp:ListItem>Senior Secondary</asp:ListItem>
                                                <asp:ListItem>Secondary</asp:ListItem>
                                                <asp:ListItem>8TH Class</asp:ListItem>
                                                <asp:ListItem>5TH Class</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            Upload Document
                                        </td>
                                        <td>
                                            <asp:FileUpload Width="180px" ID="FileUploadqual2" runat="server"></asp:FileUpload>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Qualification 3
                                        </td>
                                        <td>
                                            <asp:DropDownList Style="width: 160px;" ID="drpqUALIFICATION3" class="detail_combo1"
                                                runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Post Graduation</asp:ListItem>
                                                <asp:ListItem>Graduation</asp:ListItem>
                                                <asp:ListItem>Senior Secondary</asp:ListItem>
                                                <asp:ListItem>Secondary</asp:ListItem>
                                                <asp:ListItem>8TH Class</asp:ListItem>
                                                <asp:ListItem>5TH Class</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            Upload Document
                                        </td>
                                        <td>
                                            <asp:FileUpload Width="180px" ID="FileUploadqual3" runat="server"></asp:FileUpload>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr style="display:none;">
                                        <td class="heading" colspan="4">
                                            Payment Mode
                                        </td>
                                    </tr>
                                    <tr style="display:none;">
                                        <td class="description" colspan="4">
                                            Please select your payment method.
                                        </td>
                                    </tr>
                                    <tr style="display:none;">
                                        <td class="description" colspan="2">
                                            <asp:RadioButtonList AutoPostBack="true" OnSelectedIndexChanged="radiopayment_SelectedIndexChanged"
                                                RepeatDirection="Horizontal" ID="radiopayment" runat="server">
                                                <asp:ListItem>Branch Wallet</asp:ListItem>
                                                <asp:ListItem Selected>NEFT</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td class="description" colspan="2">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr id="trbranch" visible="false" runat="server">
                                        <td>
                                            Branch Regno
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtbranchregno" runat="server" class="detail_text1"></asp:TextBox>
                                        </td>
                                        <td>
                                            Password
                                        </td>
                                        <td>
                                            <asp:TextBox TextMode="Password" ID="txtbranchpassword" runat="server" class="detail_text1"></asp:TextBox>
                                        </td>
                                    </tr>
                                     <tr id="trneft1" visible="false" runat="server">
                                        <td>
                                            Bank Name
                                        </td>
                                        <td>
                                      <asp:Label ID="lblbank" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Branch Name
                                        </td>
                                        <td>
                                        <asp:Label ID="lblbranch" runat="server"></asp:Label></td>
                                    </tr>
                                     <tr id="trneft2" visible="false" runat="server">
                                        <td>
                                            Account No
                                        </td>
                                        <td>
                                     <asp:Label ID="lblaccountno" runat="server"></asp:Label>   </td>
                                        <td>
                                            IFSC Code
                                        </td>
                                        <td>
                                        <asp:Label ID="Lblifsccode" runat="server"></asp:Label></td>
                                    </tr>
                                    
                                    
                                    <tr id="trneft3" visible="false" runat="server">
                                        <td>
                                            Transaction No
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txttransactionno" runat="server" class="detail_text1"></asp:TextBox>
                                        </td>
                                        <td>
                                            Date
                                        </td>
                                        <td>
                                            <uc2:BtDateTimeControl style="border: none; width:160px;" ID="dtneft" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <p align="center">
                                                <b>I declare that the information given above is true and complete to the best of my
                                                    knowledge &amp; belief.</b></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" align="center">
                                            <asp:Button ID="BtnSubmit" runat="server" Text="Add My details" class="send-active-btn"
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
