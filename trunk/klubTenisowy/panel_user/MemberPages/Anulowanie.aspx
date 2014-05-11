<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Anulowanie.aspx.cs" Inherits="MemberPages_Anulowanie" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            Anulowanie rezerwacji kortu</h1>
        <p>
            Aby anulować złożoną wcześniej rezerwację wpisz jej identyfikator:</p>
        <p>
&nbsp;<asp:TextBox ID="TextDel" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Anuluj" />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                SelectCommand="SELECT * FROM [Rezerwacje]"></asp:SqlDataSource>
        </p>
    
    </div>
    </form>
</body>
</html>
