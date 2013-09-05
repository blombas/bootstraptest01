<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bootstraptest01.Default" %>
<asp:Content ID="Feature" ContentPlaceHolderID="FeaturedProducts" runat="server">

    <div class="front">

    <!-- featured area -->
        <section class="section-featured">  
            <div class="row">
                <div class="span3 offset1">
                    <h2 class="text-featured text-left">En ny måde at mødes på!</h2>
                    <p class="lead text-featured text-left">
                        Moderne dating omgivet af naturens skønhed.
                    </p>
                    
                    <asp:Button ID="Buttonfeatured" runat="server" Text="LÆS MERE" CssClass=" btn btn-featured btn-large" />
                   <%-- <p><asp:LinkButton ID="LinkButtonFeatured" runat="server" CssClass="btn btn-link">SE EVENTS</asp:LinkButton></p>--%>         
                </div>
                <div class="span9">
                    <asp:Image ID="ImageFeatured" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/850/240/nature" CssClass="image-featured img-rounded" />
                </div>
            </div>
        </section>

        
    <!-- main section -->
        <section class="main">
            <div class="container">
                <hr />
            
                <h3 class="text-featured">Romantisk gåtur hvor du måske møder din kærlighed</h3>
                <div class="row">
                    <div class="span3">
                        <p class="text-featured">Igennem årtusinder har par mødtes under åben himmel i naturskønne omgivelser for at date. Man er mere afslappet og snakken glider nemmere. Romantikken blomstrer simpelthen nemmere når man er omgivet skønne omgivelser</p>
                    </div>
                    <div class="span3">
                        <p class="text-featured">Igennem årtusinder har par mødtes under åben himmel i naturskønne omgivelser for at date. Man er mere afslappet og snakken glider nemmere. Romantikken blomstrer simpelthen nemmere når man er omgivet skønne omgivelser</p>
                    </div>
                    <div class="span4 offset2">
                        <strong><p class="well text-center">
                            Mange singler ønsker at møde dig og gå en tur i romantiske omgivelser. Se om ikke et af vores events passer dig.<br />    
                            <asp:Button ID="ButtonEvents" runat="server" Text="SE ALLE EVENTS" CssClass="btn btn-featured pull-center" />
                        </p></strong>

                    </div>
                </div>
            </div>
        </section>

    </div>
    <section class="events" id="my-events">
        <br />  <br />
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
                                <asp:Image ID="Image1" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/240/240/nature" CssClass="image-featured img-rounded" /></a>
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
                                <asp:Image ID="Image2" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/240/240/nature" CssClass="image-featured img-rounded" /></a>
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
                                <asp:Image ID="Image3" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/240/240/nature" CssClass="image-featured img-rounded" /></a>
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
        <asp:Label ID="LabelTest" runat="server" Text=""></asp:Label>
    </section>

</asp:Content>
