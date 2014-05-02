<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="CrudEvent.aspx.cs" Inherits="bootstraptest01.CrudEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedProducts" runat="server">
    <div class="crud-event">
    <asp:GridView ID="GridViewCrudEvent" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EventId" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewCrudEvent_SelectedIndexChanged" HorizontalAlign="Left" SelectedRowStyle-VerticalAlign="Top" SelectedRowStyle-HorizontalAlign="Left" SelectedRowStyle-Width="500" Width="1000px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="EventId" HeaderText="EventId" InsertVisible="False" ReadOnly="True" SortExpression="EventId" ItemStyle-Width="20" >
<ItemStyle Width="20px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Headline" HeaderText="Headline" SortExpression="Headline" ItemStyle-Width="100" >
<ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Hookline" HeaderText="Hookline" SortExpression="Hookline" ItemStyle-Width="100" >
<ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="InfoText" HeaderText="InfoText" SortExpression="InfoText" ItemStyle-Width="500px" ControlStyle-Width="500" HeaderStyle-Width="500" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" ApplyFormatInEditMode="False" ControlStyle-Height="500" HeaderStyle-VerticalAlign="Top" HeaderStyle-HorizontalAlign="Left" >
<ControlStyle  Width="500px"></ControlStyle>

<HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" Width="500px"></HeaderStyle>

<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="500px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="LocationId" HeaderText="LocationId" SortExpression="LocationId" ControlStyle-Width="200px" FooterStyle-HorizontalAlign="Left" FooterStyle-VerticalAlign="Top" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" ItemStyle-Width="200px" HeaderStyle-Width="200px" />
            <asp:BoundField DataField="DateStart" HeaderText="DateStart" SortExpression="DateStart" />
            <asp:BoundField DataField="DateEnd" HeaderText="DateEnd" SortExpression="DateEnd" />
            <asp:BoundField DataField="AgeMin" HeaderText="AgeMin" SortExpression="AgeMin" />
            <asp:BoundField DataField="AgeMax" HeaderText="AgeMax" SortExpression="AgeMax" />
            <asp:BoundField DataField="NumOfPersons" HeaderText="NumOfPersons" SortExpression="NumOfPersons" />
            <asp:BoundField DataField="SignupDeadline" HeaderText="SignupDeadline" SortExpression="SignupDeadline" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="PracticalText" HeaderText="PracticalText" SortExpression="PracticalText" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </div>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="bootstraptest01.WalkDatingDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Events">
    </asp:LinqDataSource>
    <br />

    <asp:ListView ID="ListView1" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" DataKeyNames="EventId" DataSourceID="LinqDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">EventId:
                <asp:Label ID="EventIdLabel" runat="server" Text='<%# Eval("EventId") %>' />
                <br />
                Headline:
                <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                <br />
                Hookline:
                <asp:Label ID="HooklineLabel" runat="server" Text='<%# Eval("Hookline") %>' />
                <br />
                InfoText:
                <asp:Label ID="InfoTextLabel" runat="server" Text='<%# Eval("InfoText") %>' />
                <br />
                LocationId:
                <asp:Label ID="LocationIdLabel" runat="server" Text='<%# Eval("LocationId") %>' />
                <br />
                DateStart:
                <asp:Label ID="DateStartLabel" runat="server" Text='<%# Eval("DateStart") %>' />
                <br />
                DateEnd:
                <asp:Label ID="DateEndLabel" runat="server" Text='<%# Eval("DateEnd") %>' />
                <br />
                AgeMin:
                <asp:Label ID="AgeMinLabel" runat="server" Text='<%# Eval("AgeMin") %>' />
                <br />
                AgeMax:
                <asp:Label ID="AgeMaxLabel" runat="server" Text='<%# Eval("AgeMax") %>' />
                <br />
                NumOfPersons:
                <asp:Label ID="NumOfPersonsLabel" runat="server" Text='<%# Eval("NumOfPersons") %>' />
                <br />
                SignupDeadline:
                <asp:Label ID="SignupDeadlineLabel" runat="server" Text='<%# Eval("SignupDeadline") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                PracticalText:
                <asp:Label ID="PracticalTextLabel" runat="server" Text='<%# Eval("PracticalText") %>' />
                <br />
                UserEvents:
                <asp:Label ID="UserEventsLabel" runat="server" Text='<%# Eval("UserEvents") %>' />
                <br />
                Location:
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">EventId:
                <asp:Label ID="EventIdLabel1" runat="server" Text='<%# Eval("EventId") %>' />
                <br />
                Headline:
                <asp:TextBox ID="HeadlineTextBox" runat="server" Text='<%# Bind("Headline") %>' />
                <br />
                Hookline:
                <asp:TextBox ID="HooklineTextBox" runat="server" Text='<%# Bind("Hookline") %>' />
                <br />
                InfoText:
                <asp:TextBox ID="InfoTextTextBox" runat="server" Text='<%# Bind("InfoText") %>' />
                <br />
                LocationId:
                <asp:TextBox ID="LocationIdTextBox" runat="server" Text='<%# Bind("LocationId") %>' />
                <br />
                DateStart:
                <asp:TextBox ID="DateStartTextBox" runat="server" Text='<%# Bind("DateStart") %>' />
                <br />
                DateEnd:
                <asp:TextBox ID="DateEndTextBox" runat="server" Text='<%# Bind("DateEnd") %>' />
                <br />
                AgeMin:
                <asp:TextBox ID="AgeMinTextBox" runat="server" Text='<%# Bind("AgeMin") %>' />
                <br />
                AgeMax:
                <asp:TextBox ID="AgeMaxTextBox" runat="server" Text='<%# Bind("AgeMax") %>' />
                <br />
                NumOfPersons:
                <asp:TextBox ID="NumOfPersonsTextBox" runat="server" Text='<%# Bind("NumOfPersons") %>' />
                <br />
                SignupDeadline:
                <asp:TextBox ID="SignupDeadlineTextBox" runat="server" Text='<%# Bind("SignupDeadline") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                PracticalText:
                <asp:TextBox ID="PracticalTextTextBox" runat="server" Text='<%# Bind("PracticalText") %>' />
                <br />
                UserEvents:
                <asp:TextBox ID="UserEventsTextBox" runat="server" Text='<%# Bind("UserEvents") %>' />
                <br />
                Location:
                <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Headline:
                <asp:TextBox ID="HeadlineTextBox" runat="server" Text='<%# Bind("Headline") %>' />
                <br />Hookline:
                <asp:TextBox ID="HooklineTextBox" runat="server" Text='<%# Bind("Hookline") %>' />
                <br />InfoText:
                <asp:TextBox ID="InfoTextTextBox" runat="server" Text='<%# Bind("InfoText") %>' />
                <br />LocationId:
                <asp:TextBox ID="LocationIdTextBox" runat="server" Text='<%# Bind("LocationId") %>' />
                <br />DateStart:
                <asp:TextBox ID="DateStartTextBox" runat="server" Text='<%# Bind("DateStart") %>' />
                <br />DateEnd:
                <asp:TextBox ID="DateEndTextBox" runat="server" Text='<%# Bind("DateEnd") %>' />
                <br />AgeMin:
                <asp:TextBox ID="AgeMinTextBox" runat="server" Text='<%# Bind("AgeMin") %>' />
                <br />AgeMax:
                <asp:TextBox ID="AgeMaxTextBox" runat="server" Text='<%# Bind("AgeMax") %>' />
                <br />NumOfPersons:
                <asp:TextBox ID="NumOfPersonsTextBox" runat="server" Text='<%# Bind("NumOfPersons") %>' />
                <br />SignupDeadline:
                <asp:TextBox ID="SignupDeadlineTextBox" runat="server" Text='<%# Bind("SignupDeadline") %>' />
                <br />Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />PracticalText:
                <asp:TextBox ID="PracticalTextTextBox" runat="server" Text='<%# Bind("PracticalText") %>' />
                <br />UserEvents:
                <asp:TextBox ID="UserEventsTextBox" runat="server" Text='<%# Bind("UserEvents") %>' />
                <br />Location:
                <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">EventId:
                <asp:Label ID="EventIdLabel" runat="server" Text='<%# Eval("EventId") %>' />
                <br />
                Headline:
                <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                <br />
                Hookline:
                <asp:Label ID="HooklineLabel" runat="server" Text='<%# Eval("Hookline") %>' />
                <br />
                InfoText:
                <asp:Label ID="InfoTextLabel" runat="server" Text='<%# Eval("InfoText") %>' />
                <br />
                LocationId:
                <asp:Label ID="LocationIdLabel" runat="server" Text='<%# Eval("LocationId") %>' />
                <br />
                DateStart:
                <asp:Label ID="DateStartLabel" runat="server" Text='<%# Eval("DateStart") %>' />
                <br />
                DateEnd:
                <asp:Label ID="DateEndLabel" runat="server" Text='<%# Eval("DateEnd") %>' />
                <br />
                AgeMin:
                <asp:Label ID="AgeMinLabel" runat="server" Text='<%# Eval("AgeMin") %>' />
                <br />
                AgeMax:
                <asp:Label ID="AgeMaxLabel" runat="server" Text='<%# Eval("AgeMax") %>' />
                <br />
                NumOfPersons:
                <asp:Label ID="NumOfPersonsLabel" runat="server" Text='<%# Eval("NumOfPersons") %>' />
                <br />
                SignupDeadline:
                <asp:Label ID="SignupDeadlineLabel" runat="server" Text='<%# Eval("SignupDeadline") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                PracticalText:
                <asp:Label ID="PracticalTextLabel" runat="server" Text='<%# Eval("PracticalText") %>' />
                <br />
                UserEvents:
                <asp:Label ID="UserEventsLabel" runat="server" Text='<%# Eval("UserEvents") %>' />
                <br />
                Location:
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">EventId:
                <asp:Label ID="EventIdLabel" runat="server" Text='<%# Eval("EventId") %>' />
                <br />
                Headline:
                <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                <br />
                Hookline:
                <asp:Label ID="HooklineLabel" runat="server" Text='<%# Eval("Hookline") %>' />
                <br />
                InfoText:
                <asp:Label ID="InfoTextLabel" runat="server" Text='<%# Eval("InfoText") %>' />
                <br />
                LocationId:
                <asp:Label ID="LocationIdLabel" runat="server" Text='<%# Eval("LocationId") %>' />
                <br />
                DateStart:
                <asp:Label ID="DateStartLabel" runat="server" Text='<%# Eval("DateStart") %>' />
                <br />
                DateEnd:
                <asp:Label ID="DateEndLabel" runat="server" Text='<%# Eval("DateEnd") %>' />
                <br />
                AgeMin:
                <asp:Label ID="AgeMinLabel" runat="server" Text='<%# Eval("AgeMin") %>' />
                <br />
                AgeMax:
                <asp:Label ID="AgeMaxLabel" runat="server" Text='<%# Eval("AgeMax") %>' />
                <br />
                NumOfPersons:
                <asp:Label ID="NumOfPersonsLabel" runat="server" Text='<%# Eval("NumOfPersons") %>' />
                <br />
                SignupDeadline:
                <asp:Label ID="SignupDeadlineLabel" runat="server" Text='<%# Eval("SignupDeadline") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                PracticalText:
                <asp:Label ID="PracticalTextLabel" runat="server" Text='<%# Eval("PracticalText") %>' />
                <br />
                UserEvents:
                <asp:Label ID="UserEventsLabel" runat="server" Text='<%# Eval("UserEvents") %>' />
                <br />
                Location:
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>

</asp:Content>
