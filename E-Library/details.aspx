<%@ Page Title="" Language="C#" MasterPageFile="~/E-library.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="E_Library.details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" meta:resourcekey="FormView1Resource1">
        <EditItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabel1Resource1" />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource1" />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource1" />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource1" />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource1" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" meta:resourcekey="UpdateButtonResource1" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="UpdateCancelButtonResource1" />
        </EditItemTemplate>
        <InsertItemTemplate>
            BookID:
            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' meta:resourcekey="BookIDTextBoxResource1" />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource2" />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource2" />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource2" />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource2" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" meta:resourcekey="InsertButtonResource1" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="InsertCancelButtonResource1" />
        </InsertItemTemplate>
        <ItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' Visible="False" meta:resourcekey="BookIDLabelResource1" />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
            <br />
            <br />
            <span class="auto-style1">BookTitle</span>:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            BookAuthor:
            <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorLabelResource1" />
            <br />
            BookPrice:
            <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceLabelResource1" />
            <br />
            BookDescription:
            <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionLabelResource1" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Количество" meta:resourcekey="Label2Resource1"></asp:Label>
            <asp:TextBox ID="TextBoxQty" runat="server" meta:resourcekey="TextBoxQtyResource1"></asp:TextBox>
            <br />
            <asp:Button ID="ButtonAdd" runat="server" Text="Добавяне в кошницата" OnClick="ButtonAdd_Click" meta:resourcekey="ButtonAddResource1" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" meta:resourcekey="LinkButton1Resource1">Назад</asp:LinkButton>
            <br />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [BookAuthor], [BookPrice], [BookDescription], [BookQty] FROM [Books] WHERE ([BookID] = @BookID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label" runat="server" Text="Label" meta:resourcekey="LabelResource2"></asp:Label>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
