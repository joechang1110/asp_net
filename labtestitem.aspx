<%@ Page Language="C#" AutoEventWireup="true" CodeFile="labtestitem.aspx.cs" Inherits="auray.labtestitem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body align="center">
    <form id="form1" runat="server">
        <div align="left">
    <asp:label ID="CustomerName1" runat="server" text="CustomerName:" />
    <asp:TextBox ID="CustomerName" runat="server" Placeholder="CustomerName" /></br>
    <asp:label ID="TestProject1" runat="server" text="TestProject:" />
    <asp:TextBox ID="TestProject" runat="server" Placeholder="TestProject" /></br>
    <asp:label ID="ExpectedTestDate1" runat="server" text="ExpectedTestDate:" />
    <asp:TextBox ID="ExpectedTestDate" runat="server" Placeholder="ExpectedTestDate" /></br>
    <asp:label ID="Days1" runat="server" text="Days:" />
    <asp:TextBox ID="Days" runat="server" Placeholder="Days" /></br>
    <asp:label ID="Product1" runat="server" text="Product:" />
    <asp:TextBox ID="Product" runat="server" Placeholder="Product" /></br>
    <asp:label ID="Engineer1" runat="server" text="Engineer:" />
    <asp:TextBox ID="Engineer" runat="server" Placeholder="Engineer" /></br>
    <asp:label ID="CustomerContact1" runat="server" text="CustomerContact:" />
    <asp:TextBox ID="CustomerContact" runat="server" Placeholder="CustomerContact" /></br>
    <asp:label ID="CustomerContactPhone1" runat="server" text="CustomerContactPhone:" />
    <asp:TextBox ID="CustomerContactPhone" runat="server" Placeholder="CustomerContactPhone" /></br>
    <asp:label ID="CompletionDate1" runat="server" text="CompletionDate:" />
    <asp:TextBox ID="CompletionDate" runat="server" Placeholder="CompletionDate" /></br>

    <asp:Button ID="btnAddUser" runat="server" Text="Add Test item" OnClick="btnAddUser_Click" />

<!-- 顯示用戶列表 -->
<asp:GridView ID="gvTestItems" runat="server" AutoGenerateColumns="False" OnRowCommand="testitem_RowCommand">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" />
        <asp:BoundField DataField="TestProject" HeaderText="TestProject" />
        <asp:BoundField DataField="ExpectedTestDate" HeaderText="ExpectedTestDate" />
        <asp:BoundField DataField="Days" HeaderText="Days" />
        <asp:BoundField DataField="Product" HeaderText="Product" />
        <asp:BoundField DataField="Engineer" HeaderText="Engineer" />
        <asp:BoundField DataField="CustomerContact" HeaderText="CustomerContact" />
        <asp:BoundField DataField="CustomerContactPhone" HeaderText="CustomerContactPhone" />
        <asp:BoundField DataField="CompletionDate" HeaderText="CompletionDate" />
        <asp:ButtonField Text="Edit" CommandName="Edittestitem" ButtonType="Button" />
        <asp:ButtonField Text="Delete" CommandName="Deletetestitem" ButtonType="Button" />
    </Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>
