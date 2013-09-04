<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="bootstraptest01.Events" %>
<asp:Content ID="Events" ContentPlaceHolderID="FeaturedProducts" runat="server">
    <div class="front">
            <div class="container">
               <%-- <ul class="breadcrumb">
    	            <li><a href="Default.aspx">Home</a><span class="divider">/</span></li>
    	            <li class="active">Events</li>
                </ul>--%>

                <div class="page-header">
        	        <h1>Kommende Events. <small>Lad romantiken blomstre</small></h1>
                </div>

                <div class="accordion" id="my-accordion">
                    <div class="accordion-group">
                    	<div class="accordion-heading">
                            
                            <div class="row">
                                <div class="span2">
                                    <a href="#collapse-1" data-toggle="collapse" data-parent="#my-accordion" class="accordion-toggle thumbnail">
                                <asp:Image ID="ImageFeatured" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/240/240/nature" CssClass="image-featured img-rounded" /></a>
                                </div>
                                <div class="span5">
                                    <h3 class="text-featured">Sensommer i den romatiske have</h3>
                                    <asp:Label ID="LabelEventSummery" runat="server"  CssClass="lead ">Landbrughøjskolens have bliver også kaldt den romantiske have, og med god grund. læs mere om vores event her</asp:Label>
                                    <a class="" href="#collapse-1" data-toggle="collapse" data-parent="#my-accordion">Læs mere</a>
                                </div>
                    </div>

                              
                    	</div>
                    	<div class="accordion-body collapse" id="collapse-1">
                            <div class="accordion-inner">
                                <div class="row">
                                    <div class="span4">
                                <p class="lead">Den romantiske have</p>
                                <p>hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
                                vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
                                turhej med dig, vil du med på turhej med dig,
                                 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur</p>
                                </div>
                                    <div class="span4">
                                    <p class="lead">Alt det praktiske</p>
                                <p>hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
                                vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
                                turhej med dig, vil du med på turhej med dig,
                                 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur</p>
                                </div>
                                <asp:Button ID="ButtonSignup1" runat="server" Text="Tilmeld mig" CssClass=" btn btn-featured btn-large span2 pull-right" />
                                </div>
                                </div>
                    	</div>
                    </div>

                    <div class="accordion-group">
                    	<div class="accordion-heading">
                            
                            <div class="row">
                                <div class="span2">
                                    <a href="#collapse-2" data-toggle="collapse" data-parent="#my-accordion" class="accordion-toggle thumbnail">
                                <asp:Image ID="Image1" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/240/240/nature" CssClass="image-featured img-rounded" /></a>
                                </div>
                                <div class="span5">
                                    <h3 class="text-featured">Sensommer i den romatiske have</h3>
                                    <asp:Label ID="Label1" runat="server"  CssClass="lead ">Landbrughøjskolens have bliver også kaldt den romantiske have, og med god grund. læs mere om vores event her</asp:Label>
                                    <a class="" href="#collapse-2" data-toggle="collapse" data-parent="#my-accordion">Læs mere</a>
                                </div>
                    </div>

                              
                    	</div>
                    	<div class="accordion-body collapse" id="collapse-2">
                            <div class="accordion-inner">
                                 <div class="row">
                                    <div class="span4">
                                <p class="lead">Den romantiske have</p>
                                <p>hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
                                vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
                                turhej med dig, vil du med på turhej med dig,
                                 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur</p>
                                </div>
                                    <div class="span4">
                                    <p class="lead">Alt det praktiske</p>
                                <p>hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
                                vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
                                turhej med dig, vil du med på turhej med dig,
                                 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur</p>
                                </div>
                                <asp:Button ID="ButtonSignup2" runat="server" Text="Tilmeld mig" CssClass=" btn btn-featured btn-large span2 pull-right" />
                                </div>
                            </div>
                    	</div>
                    </div>

                        <div class="accordion-group">
                    	<div class="accordion-heading">
                            
                            <div class="row">
                                <div class="span2">
                                    <a href="#collapse-3" data-toggle="collapse" data-parent="#my-accordion" class="accordion-toggle thumbnail">
                                <asp:Image ID="Image2" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/240/240/nature" CssClass="image-featured img-rounded" /></a>
                                </div>
                                <div class="span5">
                                    <h3 class="text-featured">Sensommer i den romatiske have</h3>
                                    <asp:Label ID="Label2" runat="server"  CssClass="lead ">Landbrughøjskolens have bliver også kaldt den romantiske have, og med god grund. læs mere om vores event her</asp:Label>
                                    <a class="" href="#collapse-3" data-toggle="collapse" data-parent="#my-accordion">Læs mere</a>
                                </div>
                              
                    	</div>
                    </div>

                    	<div class="accordion-body collapse" id="collapse-3">
                            <div class="accordion-inner">
                                 <div class="row">
                                    <div class="span4">
                                <p class="lead">Den romantiske have</p>
                                <p>hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
                                vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
                                turhej med dig, vil du med på turhej med dig,
                                 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur</p>
                                </div>
                                    <div class="span4">
                                    <p class="lead">Alt det praktiske</p>
                                <p>hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
                                vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
                                turhej med dig, vil du med på turhej med dig,
                                 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
                                hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur</p>
                                </div>
                                <asp:Button ID="ButtonSignup3" runat="server" Text="Tilmeld mig" CssClass=" btn btn-featured btn-large span2 pull-right" />
                                </div>
                            </div>
                    	</div>
                </div>
            </div>
    </div>
                    </div>


    
    

</asp:Content>
