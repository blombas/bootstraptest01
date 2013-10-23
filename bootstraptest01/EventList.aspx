<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="EventList.aspx.cs" Inherits="bootstraptest01.EventList" %>
<%@ Register TagPrefix="uc" TagName="WucEvent" Src="~/WucEvent.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedProducts" runat="server">
    <br />
    <br />
    <br />
    <asp:Label Text="" runat="server" ID="Label1" ForeColor="Red" Font-Size="Larger" Font-Bold="True" />

    <uc:WucEvent runat="server" ID="WucEvent1" />
    

</asp:Content>
