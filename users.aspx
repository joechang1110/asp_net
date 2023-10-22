<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="auray.users1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
</head>
<body align="center">
    <form id="form1" runat="server">
        <div>
    <asp:TextBox ID="txtUserName" runat="server" Placeholder="User Name" />
    <asp:TextBox ID="txtUserEmail" runat="server" Placeholder="User Email" />
    <asp:TextBox ID="txtpassword" runat="server" Placeholder="User password" />
    <asp:Button ID="btnAddUser" runat="server" Text="Add User" OnClick="btnAddUser_Click" />

<!-- 顯示用戶列表 -->
    <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID"
        OnRowCommand="GridViewUsers_RowCommand" align="center">
    <Columns>
        <asp:BoundField DataField="UserID" HeaderText="User ID" ReadOnly="True" />
        <asp:BoundField DataField="UserName" HeaderText="User Name" />
        <asp:BoundField DataField="UserEmail" HeaderText="User Email" />
        <asp:BoundField DataField="cpassword" HeaderText="User password" />
        <asp:ButtonField Text="Edit" CommandName="EditUser" ButtonType="Button" />
        <asp:ButtonField Text="Delete" CommandName="DeleteUser" ButtonType="Button" />
    </Columns>
    </asp:GridView>
    <asp:HyperLink NavigateUrl="~/labtestitem.aspx" runat="server" Text="Test item" />

        </div>
    </form>
</body>
</html>
