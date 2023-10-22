<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyLogin.aspx.cs" Inherits="MyLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>未命名頁面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="width: 40%">
            <tr>
                <td style="width: 20%;">
                    帳號:</td>
                <td style="width: 80%;" align="left">
                    <asp:TextBox ID="TextBox帳號" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox帳號"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td >
                    密碼:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox密碼" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox密碼"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1登入" runat="server" OnClick="Button1登入_Click" Text="登入" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
