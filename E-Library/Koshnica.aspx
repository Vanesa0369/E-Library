<%@ Page Title="" Language="C#" MasterPageFile="~/E-library.Master" AutoEventWireup="true" CodeBehind="Koshnica.aspx.cs" Inherits="E_Library.Koshnica" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" meta:resourcekey="DataList1Resource1">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
            <br />
            <br />
            Книга№:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
            <br />
            Заглавие:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            Цена:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' meta:resourcekey="PriceLabelResource1" />
            <br />
            Количество:
            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' meta:resourcekey="QtyLabelResource1" />
            <br />
            Сума:
            <asp:Label ID="SumaLabel" runat="server" Text='<%# Eval("Suma") %>' meta:resourcekey="SumaLabelResource1" />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележете за  премахване" meta:resourcekey="CheckBox1Resource1" />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <br />
    <asp:Button ID="BtnIztrivane" runat="server" OnClick="BtnIztrivane_Click" style="color: #000000; background-color: #FFFF66" Text="Изтриване на маркираните книги " Width="251px" meta:resourcekey="BtnIztrivaneResource1" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT BookID, BookTitle, Price, SUM(Qty) AS Qty, SUM(Qty * Price) AS Suma FROM ShopCart GROUP BY BookID, BookTitle, Price"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" meta:resourcekey="GridView1Resource1">
        <Columns>
            <asp:BoundField DataField="suma" HeaderText="Общо" ReadOnly="True" SortExpression="suma" meta:resourcekey="BoundFieldResource1" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT SUM(Qty * Price) AS suma FROM ShopCart"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
