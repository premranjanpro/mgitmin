<%@ Page Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <!-- Start Banner Carousel -->
        <div class="banner-outer">
            <div class="banner-slider">
                <div class="slide1">
                    <div class="container">
                        <div class="content animated fadeInRight">
                            <div class="fl-right" style="color:#!important;" >
                                <h1 class="animated fadeInRight" style="color:#!important;">MGITM Institutes <span class="animated fadeInRight">Our Graduates</span> </h1>
                                <p class="animated fadeInRight" style="color:#!important;">A Leading Professional & Technical Institute governs from the capital of India from its corporate office and having its certified members in the different states of India, with a motto to promote Professional / Technical / Vocational Courses.
			</p>
                                <a href="AboutUs.aspx" class="btn animated fadeInRight">Know More <span class="icon-more-icon"></span></a> </div>
                        </div>
                    </div>
                </div>
                <div class="slide2">
                    <div class="container">
                        <div class="content">
                            <h1 class="animated fadeInUp">Who we are ?</h1>
                            <p class="animated fadeInUp">ISO 9001:2008 Certified Institute was incorporated with the idea of providing best to best services in the field of professional, vocational, technical courses.
				</p>
                            <a href="AboutUs.aspx" class="btn animated fadeInUp">Know More <span class="icon-more-icon"></span></a> <a href="gallery.html" class="btn white animated fadeInUp hidden-xs">Take a Tour <span class="icon-more-icon"></span></a> </div>
                    </div>
                </div>
                <div class="slide3">
                    <div class="container">
                        <div class="content animated fadeInLeft">
                            <h1 class="animated fadeInLeft">Our Mission & Vision</h1>
                            <p class="animated fadeInLeft">MGITM sprits reflects an individual commitment, based on teamwork and loyalty, to reach a standard of exceptional quality, reliability and service in providing system enhancement to our members in all over INDIA.</p>
                            <a href="AboutUs.aspx"
                                class="btn animated fadeInLeft">Know More <span class="icon-more-icon"></span></a> </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Banner Carousel --> 



         <!-- Start About Section -->
        <section class="about">
            <div class="container">
                <ul class="row our-links">
                    <li class="col-sm-4 apply-online clearfix equal-hight">
                        <div class="icon"><img src="images/apply-online-ico.png" class="img-responsive" alt=""></div>
                        <div class="detail">
                            <h3>Apply Online</h3>
                            <p>Mahatna Gandhi Institute of Technology & Management</p>
                            <a href="apply-online.html" class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></a> </div>
                    </li>
                    <li class="col-sm-4 prospects clearfix equal-hight">
                        <div class="icon"><img src="images/prospects-ico.png" class="img-responsive" alt=""></div>
                        <div class="detail">
                            <h3><span>Download</span>Prospects</h3>
                            <p>Mahatna Gandhi Institute of Technology & Management</p>
                            <a href="#" class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></a> </div>
                    </li>
                    <li class="col-sm-4 certification clearfix equal-hight">
                        <div class="icon"><img src="images/certification-ico.png" class="img-responsive" alt=""></div>
                        <div class="detail">
                            <h3>Certification</h3>
                            <p>Mahatna Gandhi Institute of Technology & Management</p>
                            <a href="#" class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></a> </div>
                    </li>
                </ul>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-sm-push-5 left-block"> <span class="sm-head">the Online Education portal</span>
                        <h2>MGITM Institutes</h2>
                        <p> A Leading Professional & Technical Institute governs from the capital of India from its corporate office and having its certified members in the different states of India, with a motto to promote Professional / Technical / Vocational Courses. Designing and delivering both graduate and post-graduate programs across a variety of disciplines, our research, publishing and training experience, to create online programs that offer a rich learning experience.</p>
                        <div class="know-more-wrapper"> <a href="AboutUs.aspx" class="know-more">Know More <span class="icon-more-icon"></span></a> </div>
                    </div>
                    <div class="col-sm-5 col-sm-pull-7">
                        <div class="video-block">
                            <div id="thumbnail_container"> <img src="images/upAdmin.gif" id="thumbnail" class="img-responsive" alt=""> </div>
                            <a href="https://www.youtube.com" class="start-video video"><img src="images/play-btn.png" alt=""></a> 
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End About Section -->



    <section class="news-wrapper padding-lg">
            <div class="container">
                <ul class="row news-listing" >


                    <asp:Repeater ID="RepeaterHome" runat="server">
            <ItemTemplate>


                 <li class="col-xs-6 col-sm-3 grid-item" >
                        <div class="inner"> <img style="height:200px;" src='<%# Eval("ImagePath") %>' class="img-responsive" alt="">
                            <div class="cnt-block">
                                <%--<ul class="post-detail">
                                    <li><span class="icon-date-icon ico"></span> <span class="bold">14 Feb</span> 2017</li>
                                    <li><span class="icon-chat-icon ico"></span><span class="bold">14</span> Comments</li>
                                </ul>--%>
                                <h2><%# Eval("Head") %></h2>
                                <p style="min-height:200px; max-height:200px;" > <%# Eval("GALLERYDESC")%></p>
                                <a href='MoreDetails.aspx?id=<%# Eval("ID")%>' class="read-more"><span class="icon-play-icon"></span>Read More</a> </div>
                        </div>
                    </li>                
            </ItemTemplate>
        </asp:Repeater>


                    <li class="col-xs-6 col-sm-3 grid-item" >
                        <div class="inner"> 






                            <ul class="row faq-listing">
                   
                  <asp:Repeater ID="RepeaterNews" runat="server">
                <ItemTemplate>
                   
                     <li class="col-sm-12">
                        <div class="cnt-block" >
                            <h2>  <a href='News.aspx?newsid=<%# Eval("ID") %>' target="_blank"><%# Eval("HEAD") %></a>
                        </h2>
                            <p><%# Eval("NEWS") %></p>
                            <p> <span><%# Eval("DATE") %></span></p>
                        </div>
                    </li>
                          
                            
                        
                            
                    
                    </ItemTemplate>
                </asp:Repeater>
                   
                </ul>



                                     </div>
                    </li>       
                                                       
                </ul>               
            </div>
        </section>




  
	
	

</asp:Content>

