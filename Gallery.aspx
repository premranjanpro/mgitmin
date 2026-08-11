<%@ Page Language="C#" MasterPageFile="~/SubHomeMaster.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderSubMasterHead" Runat="Server">


<script type="text/javascript" src="highslide-4.1.13/highslide/highslide-full.js"></script>

    <link rel="stylesheet" type="text/css" href="highslide-4.1.13/highslide/highslide.css" />


    <script type="text/javascript">
        hs.graphicsDir = 'highslide-4.1.13/highslide/graphics/';
        hs.align = 'center';
        hs.transitions = ['expand', 'crossfade'];
        hs.outlineType = 'rounded-white';
        hs.fadeInOut = true;
        hs.dimmingOpacity = 0.75;

        // define the restraining box
        hs.useBox = true;
        hs.width = 640;
        hs.height = 480;

        // Add the controlbar
        hs.addSlideshow({
            //slideshowGroup: 'group1',
            interval: 5000,
            repeat: false,
            useControls: true,
            fixedControls: 'fit',
            overlayOptions: {
                opacity: 1,
                position: 'bottom center',
                hideOnMouseOut: true
            }
        });
</script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSubMasterBody" Runat="Server">
 <div class="inner-banner contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-lg-9">
                        <div class="content">
                            <h1>Gallery / Events</h1>
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
        <asp:Repeater ID="RepeaterNews" runat="server">
            <ItemTemplate>
                <div style="width: 150px;  border-radius:5px; border-box; border:solid 2px rgb(228, 210, 210); float:left; margin-right:8px; margin-bottom:8px;  ">
                    <a runat="server" id="A_1" href='<%#Eval("IMAGEPATH")%>' title='<%#Eval("HEAD")%>' class="highslide" onclick="return hs.expand(this)">
                        <asp:Image ID="ImgMemberdown" ImageUrl='<%#Bind("IMAGEPATH")%>' runat="server" Width="150"
                            Height="150" />
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>

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

