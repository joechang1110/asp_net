<%@ Page Title="" Language="C#" MasterPageFile="~/govsec/include/MasterPage.master" AutoEventWireup="true" CodeFile="BookGridViewUpdateS.aspx.cs" Inherits="govsec_BookGridViewUpdateS" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="no" DataSourceID="SqlDataSource1" EmptyDataText="沒有資料錄可顯示。" 
        AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"  Font-Size="Medium"/>
    <Columns>
        <asp:BoundField DataField="no" HeaderText="編號" ReadOnly="True" 
            SortExpression="no" InsertVisible="False" />
        <asp:BoundField DataField="book_author" HeaderText="作者" 
            SortExpression="book_author" />
        <asp:BoundField DataField="book_no" HeaderText="書號" 
            SortExpression="book_no" />
        <asp:BoundField DataField="book_name" HeaderText="書名" 
            SortExpression="book_name" />
        <asp:BoundField DataField="book_category" HeaderText="書目" 
            SortExpression="book_category" />
        <asp:BoundField DataField="book_subCategory" HeaderText="細類" 
            SortExpression="book_subCategory" />
        <asp:BoundField DataField="book_publisher" HeaderText="出版商" 
            SortExpression="book_publisher" />
    </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:govsecConnectionString2 %>" 
    DeleteCommand="DELETE FROM [t_book2] WHERE [no] = @original_no AND (([book_author] = @original_book_author) OR ([book_author] IS NULL AND @original_book_author IS NULL)) AND (([book_no] = @original_book_no) OR ([book_no] IS NULL AND @original_book_no IS NULL)) AND (([book_name] = @original_book_name) OR ([book_name] IS NULL AND @original_book_name IS NULL)) AND (([book_category] = @original_book_category) OR ([book_category] IS NULL AND @original_book_category IS NULL)) AND (([book_subCategory] = @original_book_subCategory) OR ([book_subCategory] IS NULL AND @original_book_subCategory IS NULL)) AND (([book_publisher] = @original_book_publisher) OR ([book_publisher] IS NULL AND @original_book_publisher IS NULL))" 
    InsertCommand="INSERT INTO [t_book2] ([book_author], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher]) VALUES (@book_author, @book_no, @book_name, @book_category, @book_subCategory, @book_publisher)" 
    ProviderName="<%$ ConnectionStrings:govsecConnectionString1.ProviderName %>" 
    SelectCommand="SELECT [no], [book_author], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher] FROM [t_book2] ORDER BY [no] DESC" 
    
        UpdateCommand="UPDATE [t_book2] SET [book_author] = @book_author, [book_no] = @book_no, [book_name] = @book_name, [book_category] = @book_category, [book_subCategory] = @book_subCategory, [book_publisher] = @book_publisher WHERE [no] = @original_no AND (([book_author] = @original_book_author) OR ([book_author] IS NULL AND @original_book_author IS NULL)) AND (([book_no] = @original_book_no) OR ([book_no] IS NULL AND @original_book_no IS NULL)) AND (([book_name] = @original_book_name) OR ([book_name] IS NULL AND @original_book_name IS NULL)) AND (([book_category] = @original_book_category) OR ([book_category] IS NULL AND @original_book_category IS NULL)) AND (([book_subCategory] = @original_book_subCategory) OR ([book_subCategory] IS NULL AND @original_book_subCategory IS NULL)) AND (([book_publisher] = @original_book_publisher) OR ([book_publisher] IS NULL AND @original_book_publisher IS NULL))" 
        ConflictDetection="CompareAllValues" 
        OldValuesParameterFormatString="original_{0}">
    <DeleteParameters>
        <asp:Parameter Name="original_no" Type="Int32" />
        <asp:Parameter Name="original_book_author" Type="String" />
        <asp:Parameter Name="original_book_no" Type="String" />
        <asp:Parameter Name="original_book_name" Type="String" />
        <asp:Parameter Name="original_book_category" Type="String" />
        <asp:Parameter Name="original_book_subCategory" Type="String" />
        <asp:Parameter Name="original_book_publisher" Type="String" />
    </DeleteParameters>
    <InsertParameters>
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
        <asp:Parameter Name="original_no" Type="Int32" />
        <asp:Parameter Name="original_book_author" Type="String" />
        <asp:Parameter Name="original_book_no" Type="String" />
        <asp:Parameter Name="original_book_name" Type="String" />
        <asp:Parameter Name="original_book_category" Type="String" />
        <asp:Parameter Name="original_book_subCategory" Type="String" />
        <asp:Parameter Name="original_book_publisher" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

