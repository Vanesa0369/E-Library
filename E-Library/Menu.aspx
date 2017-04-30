<%@ Page Title="" Language="C#" MasterPageFile="~/E-library.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="E_Library.Menu" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Меню и категориии" meta:resourcekey="Label1Resource1"></asp:Label>
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" ShowHeader="False" meta:resourcekey="GridView1Resource1">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%# Eval("BookType") %>' meta:resourcekey="LinkButton1Resource1"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="Select distinct BookType from Books"></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" style="text-align: left" Text="Търсене:" meta:resourcekey="Label2Resource1"></asp:Label>
    <br />
    <asp:TextBox ID="TextBoxSearch" runat="server" meta:resourcekey="TextBoxSearchResource1"></asp:TextBox>
    <asp:Button ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click" Text="Търси" meta:resourcekey="ButtonSearchResource1" />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Кошница:" meta:resourcekey="Label3Resource1"></asp:Label>
&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BookPictures/kosh.jpg" Width="25px" OnClick="ImageButton1_Click1" meta:resourcekey="ImageButton1Resource1" />
<br />
<br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" meta:resourcekey="GridView2Resource1">
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource5" />
            <asp:CommandField meta:resourcekey="CommandFieldResource1" />
            <asp:CommandField SelectText="Виж детайли за книгата" ShowSelectButton="True" meta:resourcekey="CommandFieldResource2" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="web" Name="BookType" QueryStringField="Category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
