<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="EventList.aspx.cs" Inherits="bootstraptest01.EventList" %>
<%@ Register TagPrefix="uc" TagName="WucEvent" Src="~/WucEvent.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedProducts" runat="server">
    <div class="eventlist">
        <asp:Label Text="" runat="server" ID="Label1" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </div>

</asp:Content>
