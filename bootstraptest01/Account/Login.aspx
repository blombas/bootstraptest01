<%@ Page Title="Log in" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bootstraptest01.Account.Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="FeaturedProducts">
    <asp:Panel ID="Panel1" runat="server" DefaultButton="ButtonLogin">
        <div class="container login-form">
        
          <div class="form-signin">
            <strong><asp:Label ID="LabelError" runat="server" CssClass="text-danger alert alert-danger" Visible="False"></asp:Label></strong>
            <h2 class="form-signin-heading">Login</h2>
       
            <br />
            <div class="form-group">
            <p class="form-group-label"><strong>Username</strong></p>
            <asp:TextBox runat="server" id="TextBoxUsername" CssClass="form-control"/>
            </div>
            <div class="form-group">
            <p class="form-group-label"><strong>Password</strong></p>
            <asp:textBox runat="server" id="TextBoxPassword"  CssClass="form-control" TextMode="Password" />
            </div>
            <%--<label class="checkbox">
              <asp:CheckBox runat="server" ID="CheckBoxRememberMe" type="checkbox" value="remember-me"></asp:CheckBox> Remember me 
            </label>--%>
            <asp:Button runat="server" ID="ButtonLogin" Text="Login" CssClass="btn btn-lg  btn-block btn-custom-spin" type="submit" OnClick="ButtonLogin_Click"></asp:Button>
          </div>

        </div> <!-- /container -->
    </asp:Panel>
</asp:Content>
