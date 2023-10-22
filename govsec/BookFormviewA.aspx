<%@ Page Title="" Language="C#" MasterPageFile="~/govsec/include/MasterPage.master" AutoEventWireup="true" CodeFile="BookFormviewA.aspx.cs" Inherits="govsec_include_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" DataFile="~/govsec/secDB.mdb" 
        DeleteCommand="DELETE FROM [t_book2] WHERE [no] = ? AND (([book_no] = ?) OR ([book_no] IS NULL AND ? IS NULL)) AND (([book_name] = ?) OR ([book_name] IS NULL AND ? IS NULL)) AND (([book_publisher] = ?) OR ([book_publisher] IS NULL AND ? IS NULL)) AND (([book_subCategory] = ?) OR ([book_subCategory] IS NULL AND ? IS NULL)) AND (([book_category] = ?) OR ([book_category] IS NULL AND ? IS NULL)) AND (([book_author] = ?) OR ([book_author] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [t_book2] ( [book_no], [book_name], [book_publisher], [book_subCategory], [book_category], [book_author]) VALUES (?, ?, ?, ?, ?, ?)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [no], [book_no], [book_name], [book_publisher], [book_subCategory], [book_category], [book_author] FROM [t_book2] ORDER BY [no] DESC" 
        UpdateCommand="UPDATE [t_book2] SET [book_no] = ?, [book_name] = ?, [book_publisher] = ?, [book_subCategory] = ?, [book_category] = ?, [book_author] = ? WHERE [no] = ? AND (([book_no] = ?) OR ([book_no] IS NULL AND ? IS NULL)) AND (([book_name] = ?) OR ([book_name] IS NULL AND ? IS NULL)) AND (([book_publisher] = ?) OR ([book_publisher] IS NULL AND ? IS NULL)) AND (([book_subCategory] = ?) OR ([book_subCategory] IS NULL AND ? IS NULL)) AND (([book_category] = ?) OR ([book_category] IS NULL AND ? IS NULL)) AND (([book_author] = ?) OR ([book_author] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_no" Type="Int32" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
        </DeleteParameters>
        <InsertParameters>

            <asp:Parameter Name="book_no" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_publisher" Type="String" />
            <asp:Parameter Name="book_subCategory" Type="String" />
            <asp:Parameter Name="book_category" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="book_no" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_publisher" Type="String" />
            <asp:Parameter Name="book_subCategory" Type="String" />
            <asp:Parameter Name="book_category" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
            <asp:Parameter Name="original_no" Type="Int32" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_no" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_publisher" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_subCategory" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_category" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataKeyNames="no" DataSourceID="AccessDataSource1" 
        ForeColor="Black">
        <EditItemTemplate>
            no:
            <asp:Label ID="noLabel1" runat="server" Text='<%# Eval("no") %>' />
            <br />
            book_no:
            <asp:TextBox ID="book_noTextBox" runat="server" Text='<%# Bind("book_no") %>' />
            <br />
            book_name:
            <asp:TextBox ID="book_nameTextBox" runat="server" 
                Text='<%# Bind("book_name") %>' />
            <br />
            book_publisher:
            <asp:TextBox ID="book_publisherTextBox" runat="server" 
                Text='<%# Bind("book_publisher") %>' />
            <br />
            book_subCategory:
            <asp:TextBox ID="book_subCategoryTextBox" runat="server" 
                Text='<%# Bind("book_subCategory") %>' />
            <br />
            book_category:
            <asp:TextBox ID="book_categoryTextBox" runat="server" 
                Text='<%# Bind("book_category") %>' />
            <br />
            book_author:
            <asp:TextBox ID="book_authorTextBox" runat="server" 
                Text='<%# Bind("book_author") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <InsertItemTemplate>
            book_no:
            <asp:TextBox ID="book_noTextBox" runat="server" Text='<%# Bind("book_no") %>' />
            <br />
            book_name:
            <asp:TextBox ID="book_nameTextBox" runat="server" 
                Text='<%# Bind("book_name") %>' />
            <br />
            book_publisher:
            <asp:TextBox ID="book_publisherTextBox" runat="server" 
                Text='<%# Bind("book_publisher") %>' />
            <br />
            book_subCategory:
            <asp:TextBox ID="book_subCategoryTextBox" runat="server" 
                Text='<%# Bind("book_subCategory") %>' />
            <br />
            book_category:
            <asp:TextBox ID="book_categoryTextBox" runat="server" 
                Text='<%# Bind("book_category") %>' />
            <br />
            book_author:
            <asp:TextBox ID="book_authorTextBox" runat="server" 
                Text='<%# Bind("book_author") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            no:
            <asp:Label ID="noLabel" runat="server" Text='<%# Eval("no") %>' />
            <br />
            book_no:
            <asp:Label ID="book_noLabel" runat="server" Text='<%# Bind("book_no") %>' />
            <br />
            book_name:
            <asp:Label ID="book_nameLabel" runat="server" Text='<%# Bind("book_name") %>' />
            <br />
            book_publisher:
            <asp:Label ID="book_publisherLabel" runat="server" 
                Text='<%# Bind("book_publisher") %>' />
            <br />
            book_subCategory:
            <asp:Label ID="book_subCategoryLabel" runat="server" 
                Text='<%# Bind("book_subCategory") %>' />
            <br />
            book_category:
            <asp:Label ID="book_categoryLabel" runat="server" 
                Text='<%# Bind("book_category") %>' />
            <br />
            book_author:
            <asp:Label ID="book_authorLabel" runat="server" 
                Text='<%# Bind("book_author") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新增" />
        </ItemTemplate>
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
    </asp:FormView>
</asp:Content>

