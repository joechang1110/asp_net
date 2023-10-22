<%@ Page Title="" Language="C#" MasterPageFile="~/govsec/include/MasterPage.master" AutoEventWireup="true" CodeFile="BookGridViewSelectA.aspx.cs" Inherits="govsec_include_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="no" 
        DataSourceID="AccessDataSource1" EmptyDataText="沒有資料錄可顯示。" Font-Size="Medium">
        <Columns>
            <asp:BoundField DataField="no" HeaderText="編號" ReadOnly="True" 
                SortExpression="no" />
            <asp:BoundField DataField="book_author" HeaderText="作者" 
                SortExpression="book_author" />
            <asp:BoundField DataField="book_no" HeaderText="書號" 
                SortExpression="book_no" />
            <asp:BoundField DataField="book_name" HeaderText="書名" 
                SortExpression="book_name" />
            <asp:BoundField DataField="book_category" HeaderText="書類" 
                SortExpression="book_category" />
            <asp:BoundField DataField="book_subCategory" HeaderText="細類" 
                SortExpression="book_subCategory" />
            <asp:BoundField DataField="book_publisher" HeaderText="出版商" 
                SortExpression="book_publisher" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DeleteCommand="DELETE FROM `t_book2` WHERE `no` = ?" 
        InsertCommand="INSERT INTO `t_book2` (`no`, `book_author`, `book_no`, `book_name`, `book_category`, `book_subCategory`, `book_publisher`) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT `no`, `book_author`, `book_no`, `book_name`, `book_category`, `book_subCategory`, `book_publisher` FROM `t_book2`" 
        UpdateCommand="UPDATE `t_book2` SET `book_author` = ?, `book_no` = ?, `book_name` = ?, `book_category` = ?, `book_subCategory` = ?, `book_publisher` = ? WHERE `no` = ?">
        <DeleteParameters>
            <asp:Parameter Name="no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="no" Type="Int32" />
            <asp:Parameter Name="book_author" Type="String" />
            <asp:Parameter Name="book_no" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_category" Type="String" />
            <asp:Parameter Name="book_subCategory" Type="String" />
            <asp:Parameter Name="book_publisher" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="book_author" Type="String" />
            <asp:Parameter Name="book_no" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_category" Type="String" />
            <asp:Parameter Name="book_subCategory" Type="String" />
            <asp:Parameter Name="book_publisher" Type="String" />
            <asp:Parameter Name="no" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

