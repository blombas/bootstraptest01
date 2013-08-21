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
                <div class="span8 offset1">
                    <asp:Image ID="ImageFeatured" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/750/240/nature" CssClass="image-featured img-rounded" />
                </div>
            </div>
        </section>

        
    <!-- main section -->
        <section class="main">
            <div class="container">
                <hr />
                <br />
                <h3 class="text-featured">Romantiske events</h3>
                <div class="row">
                    <div class="span6">
                        <p class="text-featured">Igennem årtusinder har par mødtes under åben himmel i naturskønne omgivelser for at date. Man er mere afslappet og snakken glider nemmere. Romantikken blomstrer simpelthen nemmere når man er omgivet skønne omgivelser</p>
                    </div>
                    <div class="span4 offset2">
                        <strong><p class="well well-large text-center">
                            Mange andre singler ønsker at møde dig og gå en tur i romantiske omgivelser. Se om ikke et af vores events passer dig.<br />    
                            <asp:Button ID="ButtonEvents" runat="server" Text="SE ALLE EVENTS" CssClass="btn btn-small btn-featured pull-center" />
                        </p></strong>

                    </div>
                </div>
            </div>
        </section>

    </div>

</asp:Content>
