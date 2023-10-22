<%@ Page Title="" Language="C#" MasterPageFile="~/govsec/include/MasterPage.master" AutoEventWireup="true" CodeFile="BookDatalistA.aspx.cs" Inherits="govsec_include_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/govsec/secDB.mdb" 
        SelectCommand="SELECT [no], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher], [book_author] FROM [t_book2] ORDER BY [no] DESC">
    </asp:AccessDataSource>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyField="no" DataSourceID="AccessDataSource1" GridLines="Both" Width="400px" Font-Size="Medium"  >

        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            編號:
            <asp:Label ID="noLabel" runat="server" Text='<%# Eval("no") %>' />
            <br />
            書號:
            <asp:Label ID="book_noLabel" runat="server" Text='<%# Eval("book_no") %>' />
            <br />
            書名:
            <asp:Label ID="book_nameLabel" runat="server" Text='<%# Eval("book_name") %>' />
            <br />
            類別:
            <asp:Label ID="book_categoryLabel" runat="server" 
                Text='<%# Eval("book_category") %>' />
            <br />
            細類:
            <asp:Label ID="book_subCategoryLabel" runat="server" 
                Text='<%# Eval("book_subCategory") %>' />
            <br />
            出版商:
            <asp:Label ID="book_publisherLabel" runat="server" 
                Text='<%# Eval("book_publisher") %>' />
            <br />
            作者:
            <asp:Label ID="book_authorLabel" runat="server" 
                Text='<%# Eval("book_author") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
</asp:Content>

