﻿<%@ Page Title="Register" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="bootstraptest01.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="FeaturedProducts">
    <asp:Panel ID="Panel1" runat="server" DefaultButton="ButtonRegister">
    <div class="login-form container">
        <div class="form-signin">
            
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>
                 
                        <h2 class="form-signin-heading text-info">Registration</h2>
                        <br />
            
            
                                <div class="form-group">
                                <asp:Label ID="Label2" runat="server" CssClass="form-group-label" AssociatedControlID="Email">Email address</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email"  CssClass="form-control" AutoCompleteType="Disabled"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                                    </div>
            

                                <div class="form-group">
                                <asp:Label ID="Label1" runat="server" CssClass="form-group-label" AssociatedControlID="UserName">User name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" AutoCompleteType="Disabled"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                                </div>
                           
                                
                            
                                <div class="form-group">
                                <asp:Label ID="Label3" runat="server" CssClass="form-group-label" AssociatedControlID="Password">Password</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" AutoCompleteType="Disabled" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                                    </div>
                           
                                <div class="form-group">
                                <asp:Label ID="Label4" runat="server" CssClass="form-group-label" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password"  CssClass="form-control" AutoCompleteType="Disabled"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                                </div>
                         
                        <asp:Button ID="ButtonRegister" CausesValidation="False" runat="server" CommandName="MoveNext" Text="Register"  CssClass="btn btn-lg  btn-block btn-custom-spin" OnClick="ButtonRegister_Click" />
         

            </div>
        </div>
    </asp:Panel>
</asp:Content>