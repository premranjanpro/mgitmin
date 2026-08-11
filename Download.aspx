<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true"
    CodeFile="Download.aspx.cs" Inherits="Download" Title="" %>

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
                            <h1>Download Study Materials</h1>
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
                    <div style="width: 100%; float: left;">
                        <div class="img-box">
                            <asp:Repeater ID="GrdCenterList" runat="server">
                                <ItemTemplate>
                                    <div class="box_location">
                                        <div class="boxloc_img">
                                            <a title="Download Now" style="text-decoration: none; color: Black" href='<%# Eval("DOCUMENTPATH") %>'>
                                                <asp:Image Width="180px" Height="125px" ImageUrl="images/adobe-reader-security-flaw.png"
                                                    class="l" runat="server" ID="imgbra" />
                                            </a></a></div>
                                        <div class="boxloc_dsc">
                                            <h1>
                                                <%# Eval("TITLE")%></h1>
                                            <p>
                                                
                                                <%# Eval("STUDYDESC")%></p>
                                        
                                        
                                        <div class="clear"></div>
			<div class="action"><a href='<%# Eval("DOCUMENTPATH") %>'>Download Now</a></div>
			<div class="clear"></div>
			</div>
			
			
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
		
		
		
                            
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
    </div>
    </section>
</asp:Content>
