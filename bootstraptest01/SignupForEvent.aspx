<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="SignupForEvent.aspx.cs" Inherits="bootstraptest01.SignupForEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedProducts" runat="server">
    
    <asp:Panel ID="Panel1" runat="server">
    <div class="login-form container">
        <div class="signup-for-event-info">
            <h2 class="text-center text-info" runat="server" id="SignupHeader"></h2>
        </div>
        <div class="form-signin">
            <p id="EventLocation" runat="server" class="label label-info"></p>
            <p id="EventDate" runat="server" class="label label-info"></p>
            <br/>
            <br />                  
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="form-group-label" AssociatedControlID="Firstname">Fornavn</asp:Label>
                <asp:TextBox runat="server" ID="Firstname" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Firstname"
                    CssClass="alert-danger alert" ErrorMessage="The user name field is required." />
            </div>           
            <br />             
            <div class="form-group">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Selected="false" Value="mand">Mand</asp:ListItem>  
                    <asp:ListItem Selected="false" Value="kvinde">Kvinde</asp:ListItem>  
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequieredFieldvalidator2" runat="server" ControlToValidate="RadioButtonList1" CssClass="alert-danger alert" ErrorMessage="Vælg kvinde eller mand"></asp:RequiredFieldValidator>
            </div>
            <br />           
            <asp:Button ID="ButtonRegister" runat="server" CommandName="MoveNext" Text="Tilmeld"  CssClass="btn btn-lg  btn-block btn-custom-spin" OnClick="ButtonRegister_Click" />
         

        </div>
    </div>
    </asp:Panel>
</asp:Content>
