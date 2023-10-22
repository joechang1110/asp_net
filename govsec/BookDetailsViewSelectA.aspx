<%@ Page Title="" Language="C#" MasterPageFile="~/govsec/include/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetailsViewSelectA.aspx.cs" Inherits="govsec_include_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" DataFile="~/govsec/secDB.mdb" 
        DeleteCommand="DELETE FROM [t_book2] WHERE [no] = ? AND (([book_no] = ?) OR ([book_no] IS NULL AND ? IS NULL)) AND (([book_name] = ?) OR ([book_name] IS NULL AND ? IS NULL)) AND (([book_subCategory] = ?) OR ([book_subCategory] IS NULL AND ? IS NULL)) AND (([book_category] = ?) OR ([book_category] IS NULL AND ? IS NULL)) AND (([book_publisher] = ?) OR ([book_publisher] IS NULL AND ? IS NULL)) AND (([book_author] = ?) OR ([book_author] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [t_book2] ([no], [book_no], [book_name], [book_subCategory], [book_category], [book_publisher], [book_author]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [no], [book_no], [book_name], [book_subCategory], [book_category], [book_publisher], [book_author] FROM [t_book2] ORDER BY [no] DESC" 
        UpdateCommand="UPDATE [t_book2] SET [book_no] = ?, [book_name] = ?, [book_subCategory] = ?, [book_category] = ?, [book_publisher] = ?, [book_author] = ? WHERE [no] = ? AND (([book_no] = ?) OR ([book_no] IS NULL AND ? IS NULL)) AND (([book_name] = ?) OR ([book_name] IS NULL AND ? IS NULL)) AND (([book_subCategory] = ?) OR ([book_subCategory] IS NULL AND ? IS NULL)) AND (([book_category] = ?) OR ([book_category] IS NULL AND ? IS NULL)) AND (([book_publisher] = ?) OR ([book_publisher] IS NULL AND ? IS NULL)) AND (([book_author] = ?) OR ([book_author] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_no" Type="Int32" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="no" Type="Int32" />
            <asp:Parameter Name="book_no" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_subCategory" Type="String" />
            <asp:Parameter Name="book_category" Type="String" />
            <asp:Parameter Name="book_publisher" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="book_no" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_subCategory" Type="String" />
            <asp:Parameter Name="book_category" Type="String" />
            <asp:Parameter Name="book_publisher" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
            <asp:Parameter Name="original_no" Type="Int32" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="no" 
        DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
        Height="50px" Width="500px" Font-Size="Medium">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="no" HeaderText="編號" InsertVisible="False" 
                ReadOnly="True" SortExpression="no" />
            <asp:BoundField DataField="book_no" HeaderText="書號" 
                SortExpression="book_no" />
            <asp:BoundField DataField="book_name" HeaderText="書名" 
                SortExpression="book_name" />
            <asp:BoundField DataField="book_subCategory" HeaderText="類別" 
                SortExpression="book_subCategory" />
            <asp:BoundField DataField="book_category" HeaderText="細類" 
                SortExpression="book_category" />
            <asp:BoundField DataField="book_publisher" HeaderText="出版商" 
                SortExpression="book_publisher" />
            <asp:BoundField DataField="book_author" HeaderText="作者" 
                SortExpression="book_author" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
</asp:Content>

