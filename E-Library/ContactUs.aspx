<%@ Page Title="" Language="C#" MasterPageFile="~/E-library.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="E_Library.ContactUs" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" meta:resourcekey="Panel1Resource1">
        <asp:Label ID="Label1" runat="server" Text="До" meta:resourcekey="Label1Resource1"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="От" meta:resourcekey="Label2Resource1"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Относно" meta:resourcekey="Label3Resource1"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" meta:resourcekey="TextBox3Resource1"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Запитване" meta:resourcekey="Label4Resource1"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" meta:resourcekey="TextBox4Resource1"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Изпрати" meta:resourcekey="Button1Resource1" />
        <br />
        <asp:Label ID="Label5" runat="server" Text="MailMsg" meta:resourcekey="Label5Resource1"></asp:Label>
        <br />
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
