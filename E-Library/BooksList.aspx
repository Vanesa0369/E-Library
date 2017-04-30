<%@ Page Title="" Language="C#" MasterPageFile="~/E-library.Master" AutoEventWireup="true" CodeBehind="BooksList.aspx.cs" Inherits="E_Library.BooksList" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" meta:resourcekey="GridView1Resource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" meta:resourcekey="CommandFieldResource1" />
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" SortExpression="BookDescription" meta:resourcekey="BoundFieldResource5" />
            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource6" />
            <asp:BoundField DataField="BookQty" HeaderText="BookQty" SortExpression="BookQty" meta:resourcekey="BoundFieldResource7" />
            <asp:CheckBoxField DataField="BookSale" HeaderText="BookSale" SortExpression="BookSale" meta:resourcekey="CheckBoxFieldResource1" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (@BookID, @BookType, @BookTitle, @BookAuthor, @BookDescription, @BookPrice, @BookQty, @BookSale)" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookType] = @BookType, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookDescription] = @BookDescription, [BookPrice] = @BookPrice, [BookQty] = @BookQty, [BookSale] = @BookSale WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookID" Type="String" />
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
            <asp:Parameter Name="BookID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Изберете файла" meta:resourcekey="Label1Resource1"></asp:Label>
</p>
<p>
    <asp:FileUpload ID="FileUpload1" runat="server" meta:resourcekey="FileUpload1Resource1" />
&nbsp;<asp:Button ID="BtnUpload" runat="server" OnClick="BtnUpload_Click" Text="Качване на файл " meta:resourcekey="BtnUploadResource1" />
</p>
<p>
    <br />
</p>
<p>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
