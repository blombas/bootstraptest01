<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="EventList.aspx.cs" Inherits="bootstraptest01.Default" %>
<%@ Register TagPrefix="uc" TagName="WucEvent" Src="~/WucEvent.ascx" %>

<asp:Content ID="Feature" ContentPlaceHolderID="FeaturedProducts" runat="server">
    <div class="container-fluid">
        <uc:WucEvent runat="server" id="WucEvent" />
    </div>
</asp:Content>


