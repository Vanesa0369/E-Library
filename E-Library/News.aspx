<%@ Page Title="" Language="C#" MasterPageFile="~/E-library.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="E_Library.News" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="LblRSSNews" runat="server" meta:resourcekey="LblRSSNewsResource1" Text="RSS News"></asp:Label>
&nbsp;</p>
    <p>
        <asp:Label ID="lblTitle" runat="server" meta:resourcekey="lblTitleResource1" Text="[lblTitle]"></asp:Label>
    </p>
    <asp:Label ID="lblLanguage" runat="server" meta:resourcekey="lblLanguageResource1" Text="[lblLanguage]"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblLink" runat="server" meta:resourcekey="lblLinkResource1" Text="lblLink"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescriptionResource1" Text="[lblDescription]"></asp:Label>
    <p>
        <asp:GridView ID="GrViewNews" runat="server" meta:resourcekey="GrViewNewsResource1" OnSelectedIndexChanged="GrViewNews_SelectedIndexChanged" Width="339px">
            <Columns>
                <asp:CommandField meta:resourcekey="CommandFieldResource1" SelectText="Прочит в сайта" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
