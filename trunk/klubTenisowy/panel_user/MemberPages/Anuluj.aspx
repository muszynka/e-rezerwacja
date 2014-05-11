<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Anuluj.aspx.cs" Inherits="MemberPages_Anuluj" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="style1">
            Rezerwacja została anulowana</h1>
        <p class="style1">
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Default.aspx" 
                Text="Powrót" />
        </p>
    
    </div>
    </form>
</body>
</html>
