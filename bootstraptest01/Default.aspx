<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bootstraptest01.Default" %>
<asp:Content ID="Feature" ContentPlaceHolderID="FeaturedProducts" runat="server">
    <section>
        <div class="container">
            <div class="carousel slide" id="my-carousel">

                <ol class="carousel-indicators">
                    <li data-target="#my-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#my-carousel" data-slide-to="1" class="active"></li>
                    <li data-target="#my-carousel" data-slide-to="2" class="active"></li>
                </ol>

                <div class="carousel-inner">
                        <div class="item active">
                            <asp:Image ID="Image1" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/1170/300/people" />
                        </div>
                        <div class="item">
                            <asp:Image ID="Image2" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/1170/300/nature" />
                        </div>
                        <div class="item">
                            <asp:Image ID="Image3" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/1170/300/city" />
                        </div>

                        <%--<a href="#my-carousel" class="carousel-control left" data-slide="prev">&lsaquo;</a>
                        <a href="#my-carousel" class="carousel-control right" data-slide="next">&rsaquo;</a> --%>
                     
                    </div>
                </div>   
            </div>
        </section>

</asp:Content>
