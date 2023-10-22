<%@ Page Title="" Language="C#" MasterPageFile="~/govsec/include/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetailsViewUpdateA.aspx.cs" Inherits="govsec_include_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" DataFile="~/govsec/secDB.mdb" 
        DeleteCommand="DELETE FROM [t_book2] WHERE [no] = ? AND (([book_no] = ?) OR ([book_no] IS NULL AND ? IS NULL)) AND (([book_name] = ?) OR ([book_name] IS NULL AND ? IS NULL)) AND (([book_category] = ?) OR ([book_category] IS NULL AND ? IS NULL)) AND (([book_subCategory] = ?) OR ([book_subCategory] IS NULL AND ? IS NULL)) AND (([book_publisher] = ?) OR ([book_publisher] IS NULL AND ? IS NULL)) AND (([book_author] = ?) OR ([book_author] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [t_book2] ([no], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher], [book_author]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [no], [book_no], [book_name], [book_category], [book_subCategory], [book_publisher], [book_author] FROM [t_book2] ORDER BY [no] DESC" 
        UpdateCommand="UPDATE [t_book2] SET [book_no] = ?, [book_name] = ?, [book_category] = ?, [book_subCategory] = ?, [book_publisher] = ?, [book_author] = ? WHERE [no] = ? AND (([book_no] = ?) OR ([book_no] IS NULL AND ? IS NULL)) AND (([book_name] = ?) OR ([book_name] IS NULL AND ? IS NULL)) AND (([book_category] = ?) OR ([book_category] IS NULL AND ? IS NULL)) AND (([book_subCategory] = ?) OR ([book_subCategory] IS NULL AND ? IS NULL)) AND (([book_publisher] = ?) OR ([book_publisher] IS NULL AND ? IS NULL)) AND (([book_author] = ?) OR ([book_author] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_no" Type="Int32" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
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
            <asp:Parameter Name="original_no" Type="Int32" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
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
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
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
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
</asp:Content>

