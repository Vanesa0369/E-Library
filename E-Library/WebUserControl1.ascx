<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="E_Library.WebUserControl1" %>
<asp:Panel ID="Panel1" runat="server" style="background-color: #FFFF99" Width="356px">
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Книга№"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Заглавие"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Цена"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Количествво"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Сума"></asp:Label>
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Отбележи за купуване" />
    <br />
    <br />
    <br />
    <br />
</asp:Panel>

