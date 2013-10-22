<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="EventList.aspx.cs" Inherits="bootstraptest01.Default" %>
<%@ Register TagPrefix="uc" TagName="Event" Src="~/WucEvent.ascx" %>

<asp:Content ID="Feature" ContentPlaceHolderID="FeaturedProducts" runat="server">
    <div class="container-fluid">
        <uc:Event id="event1" runat="server"/>
    </div>
</asp:Content>


