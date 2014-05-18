<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="CreateNewEvent.aspx.cs" Inherits="bootstraptest01.CreateNewEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedProducts" runat="server">
    
    <asp:Panel ID="Panel1" runat="server">
    <div class="login-form container">
        <div class="signup-for-event-info">
            <h2 class="text-center text-info" runat="server" id="CreateEvent">Create Event</h2>
        </div>
        <div class="form-signin">
                            
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="form-group-label" AssociatedControlID="EventHeadLine">Event Headline</asp:Label>
                <asp:TextBox runat="server" ID="EventHeadLine" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EventHeadLine"
                    CssClass="alert-danger alert" ErrorMessage="Event headline is required" />
            </div>
            <div class="form-group">
                <asp:Label ID="Label9" runat="server" CssClass="form-group-label" AssociatedControlID="EventLink">Event Link</asp:Label>
                <asp:TextBox runat="server" ID="EventLink" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="EventLink"
                    CssClass="alert-danger alert" ErrorMessage="Event link is required" />
            </div>             
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="form-group-label" AssociatedControlID="EventDateStart">Start date (31-05-2014 17:30)</asp:Label>
                <asp:TextBox runat="server" ID="EventDateStart" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EventDateStart"
                    CssClass="alert-danger alert" ErrorMessage="Event start date is required" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" Format="dd/MM/yyyy H:mm" Type="Date" Operator="DataTypeCheck" ControlToValidate="EventDateStart" ErrorMessage=""></asp:CompareValidator>
            </div> 
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="form-group-label" AssociatedControlID="EventEndDate">End date (31-05-2014 17:30)</asp:Label>
                <asp:TextBox runat="server" ID="EventEndDate" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EventEndDate"
                    CssClass="alert-danger alert" ErrorMessage="Event end date is required" />
                <asp:CompareValidator ID="CompareValidator2" runat="server" Type="Date" Operator="DataTypeCheck" ControlToValidate="EventEndDate" ErrorMessage=""></asp:CompareValidator>
            </div> 
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="form-group-label" AssociatedControlID="Signupdate">Latest signup date (31-05-2014 17:30)</asp:Label>
                <asp:TextBox runat="server" ID="Signupdate" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Signupdate"
                    CssClass="alert-danger alert" ErrorMessage="Event latest signup date is required" />
                <asp:CompareValidator ID="CompareValidator4" runat="server" Type="Date" Operator="DataTypeCheck" ControlToValidate="Signupdate" ErrorMessage=""></asp:CompareValidator>
            </div> 
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="form-group-label" AssociatedControlID="EventLocation">Location</asp:Label>
                <asp:TextBox runat="server" ID="EventLocation" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EventLocation"
                    CssClass="alert-danger alert" ErrorMessage="Event location is required (as number)" />
                <asp:CompareValidator ID="CompareValidator3" runat="server" Type="Integer" Operator="DataTypeCheck" ControlToValidate="EventLocation" ErrorMessage="Must be a number"></asp:CompareValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="form-group-label" AssociatedControlID="EventPrice">Price</asp:Label>
                <asp:TextBox runat="server" ID="EventPrice" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="EventPrice"
                    CssClass="alert-danger alert" ErrorMessage="Event price is required (as number)" />
                <asp:CompareValidator ID="CompareValidator5" runat="server" Type="Integer" Operator="DataTypeCheck" ControlToValidate="EventPrice" ErrorMessage="Must be a number"></asp:CompareValidator>
            </div> 
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="form-group-label" AssociatedControlID="EventMinAge">Age min</asp:Label>
                <asp:TextBox runat="server" ID="EventMinAge" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="EventMinAge"
                    CssClass="alert-danger alert" ErrorMessage="Event age min is required (as number)" />
                <asp:CompareValidator ID="CompareValidator6" runat="server" Type="Integer" Operator="DataTypeCheck" ControlToValidate="EventMinAge" ErrorMessage="Must be a number"></asp:CompareValidator>
            </div> 
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" CssClass="form-group-label" AssociatedControlID="EventMaxAge">Age max</asp:Label>
                <asp:TextBox runat="server" ID="EventMaxAge" CssClass="form-control" AutoCompleteType="Disabled"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="EventMaxAge"
                    CssClass="alert-danger alert" ErrorMessage="Event age max is required (as number)" />
                <asp:CompareValidator ID="CompareValidator7" runat="server" Type="Integer" Operator="DataTypeCheck" ControlToValidate="EventMaxAge" ErrorMessage="Must be a number"></asp:CompareValidator>
            </div>                      
        
            <asp:Button ID="ButtonRegister" runat="server" CausesValidation="false" Text="Create Event"  CssClass="btn btn-lg  btn-block btn-custom-spin" OnClick="ButtonRegister_Click" />
         

        </div>
    </div>
    </asp:Panel>
    
    <h2 runat="server" id="AfterSignupMessage" class="alert alert-success text-center" Visible="false" style="margin-top: 15%"></h2>

</asp:Content>
