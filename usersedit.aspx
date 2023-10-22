<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usersedit.aspx.cs" Inherits="auray.useredit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Data Details</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>User Data Details</h1>
            <div>
                <label for="Username">User name:</label>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </div>
            <div>
                <label for="lblUserName1">txtUserName:</label>
                <asp:TextBox ID="txtUserName1" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="lblUserEmail">txtUserEmail:</label>
                <asp:TextBox ID="txtUserEmail" runat="server" ></asp:TextBox>
            </div>
            <div>
                <label for="lblpassword">txtpassword:</label>
                <asp:TextBox ID="txtpassword" runat="server" ></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </div>
        </div>
    </form>
</body>
</html>
