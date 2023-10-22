<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calendar.aspx.cs" Inherits="calendar" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
    
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    

    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">  
</asp:ToolkitScriptManager>  
  
                    日期:<asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>  
  
                    ~  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:CalendarExtender    
    ID="CalendarExtender1"   TargetControlID="txtStartDate"   runat="server" />  
                    <asp:CalendarExtender    
    ID="CalendarExtender2"   TargetControlID="TextBox1"   runat="server" />  
    </div>
    </form>
                  
</body>
</html>
