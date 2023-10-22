<%@ Page Language="C#" AutoEventWireup="true" CodeFile="archeIndex.aspx.cs" Inherits="arche_archieIndex" %>
<%@ Register TagPrefix="arche" TagName="SiteLogo" Src="~/arche/SiteLogo.ascx" %>
<%@ Register TagPrefix="arche" TagName="SiteMenu" Src="~/arche/SiteMenu.ascx" %>
<%@ Register TagPrefix="arche" TagName="SiteFooter" Src="~/arche/SiteFooter.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>未命名頁面</title>
</head>
<body background="images/background.jpg">
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%" align="center">
            <tr>
                <td colspan="2">
                <arche:SiteLogo ID="SiteLogo" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2">
                <arche:SiteMenu ID="SiteMenu" runat="server" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/arche/images/1a.jpg" />
                </td>
                <td style="width: 100px">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/arche/images/1b.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <arche:SiteFooter ID="SiteFooter" runat="server" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
