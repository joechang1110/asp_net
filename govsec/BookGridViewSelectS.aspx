<%@ Page Title="" Language="C#" MasterPageFile="~/govsec/include/MasterPage.master" AutoEventWireup="true" CodeFile="BookGridViewSelectS.aspx.cs" Inherits="govsec_BookGridViewSelectS" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="no" 
        DataSourceID="SqlDataSource1" EmptyDataText="沒有資料錄可顯示。" ForeColor="#333333" 
        GridLines="None" Width="600px" Font-Size="Medium">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="no" HeaderText="編號" ReadOnly="True" 
                SortExpression="no" />
            <asp:BoundField DataField="book_author" HeaderText="作者" 
                SortExpression="book_author" />
            <asp:BoundField DataField="book_no" HeaderText="書號" 
                SortExpression="book_no" />
            <asp:BoundField DataField="book_name" HeaderText="書名" 
                SortExpression="book_name" />
            <asp:BoundField DataField="book_category" HeaderText="類別" 
                SortExpression="book_category" />
            <asp:BoundField DataField="book_subCategory" HeaderText="細類" 
                SortExpression="book_subCategory" />
            <asp:BoundField DataField="book_publisher" HeaderText="出版商" 
                SortExpression="book_publisher" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:govsecConnectionString2 %>" 
        DeleteCommand="DELETE FROM [t_book2] WHERE [no] = @no" 
        InsertCommand="INSERT INTO [t_book2] ([book_author], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher]) VALUES (@book_author, @book_no, @book_name, @book_category, @book_subCategory, @book_publisher)" 
        ProviderName="<%$ ConnectionStrings:govsecConnectionString2.ProviderName %>" 
        SelectCommand="SELECT [no], [book_author], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher] FROM [t_book2]" 
        UpdateCommand="UPDATE [t_book2] SET [book_author] = @book_author, [book_no] = @book_no, [book_name] = @book_name, [book_category] = @book_category, [book_subCategory] = @book_subCategory, [book_publisher] = @book_publisher WHERE [no] = @no">
        <DeleteParameters>
            <asp:Parameter Name="no" Type="Int32" />
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
            <asp:Parameter Name="no" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

