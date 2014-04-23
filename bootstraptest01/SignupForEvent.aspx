<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="SignupForEvent.aspx.cs" Inherits="bootstraptest01.SignupForEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedProducts" runat="server">
    
    <asp:Panel ID="Panel1" runat="server">
    <div class="login-form container">
        <div class="form-signin">
            
            <p class="validation-summary-errors">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>
                 
            <h2 class="form-signin-heading text-center text-info">Tilmelding</h2>
            <br />
           
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="form-group-label" AssociatedControlID="Firstname">Fornavn</asp:Label>
                <asp:TextBox runat="server" ID="Firstname" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Firstname"
                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
            </div>           
                            
            <div class="form-group">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Selected="false">Mand</asp:ListItem>  
                    <asp:ListItem Selected="false">Kvinde</asp:ListItem>  
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequieredFieldvalidator2" runat="server" ControlToValidate="RadioButtonList1" CssClass="field-validation-error" ErrorMessage="Du skal vælge om du er kvinde eller mand"></asp:RequiredFieldValidator>
            </div>
                         
            <asp:Button ID="ButtonRegister" runat="server" CommandName="MoveNext" Text="Register"  CssClass="btn btn-lg  btn-block btn-custom-spin" OnClick="ButtonRegister_Click" />
         

        </div>
    </div>
    </asp:Panel>
</asp:Content>
