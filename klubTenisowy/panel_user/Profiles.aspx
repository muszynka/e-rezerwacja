﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profiles.aspx.cs" Inherits="Profiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="textPostalCode" runat="server"></asp:TextBox>
        <asp:Button ID="SetPostalCode" runat="server" onclick="SetPostalCode_Click" 
            Text="Ustaw kod pocztowy" />
        <asp:Label ID="labelPostalCode" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
