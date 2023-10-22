<%@ Page Title="" Language="C#" MasterPageFile="~/govsec/include/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetailsViewDeleteA.aspx.cs" Inherits="govsec_BookDetailsViewDeleteA" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/govsec/secDB.mdb" 
        DeleteCommand="DELETE FROM [t_book2] WHERE [no] = ?" 
        InsertCommand="INSERT INTO [t_book2] ([no], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher], [book_author]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT [no], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher], [book_author] FROM [t_book2] ORDER BY [no] DESC" 
        UpdateCommand="UPDATE [t_book2] SET [book_no] = ?, [book_name] = ?, [book_category] = ?, [book_subCategory] = ?, [book_publisher] = ?, [book_author] = ? WHERE [no] = ?">
        <DeleteParameters>
            <asp:Parameter Name="no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="no" Type="Int32" />
            <asp:Parameter Name="book_no" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_category" Type="String" />
            <asp:Parameter Name="book_subCategory" Type="String" />
            <asp:Parameter Name="book_publisher" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="book_no" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_category" Type="String" />
            <asp:Parameter Name="book_subCategory" Type="String" />
            <asp:Parameter Name="book_publisher" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
            <asp:Parameter Name="no" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="no" 
        DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
        Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="no" HeaderText="no" InsertVisible="False" 
                ReadOnly="True" SortExpression="no" />
            <asp:BoundField DataField="book_no" HeaderText="book_no" 
                SortExpression="book_no" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                SortExpression="book_name" />
            <asp:BoundField DataField="book_category" HeaderText="book_category" 
                SortExpression="book_category" />
            <asp:BoundField DataField="book_subCategory" HeaderText="book_subCategory" 
                SortExpression="book_subCategory" />
            <asp:BoundField DataField="book_publisher" HeaderText="book_publisher" 
                SortExpression="book_publisher" />
            <asp:BoundField DataField="book_author" HeaderText="book_author" 
                SortExpression="book_author" />
            <asp:CommandField ShowDeleteButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
</asp:Content>

