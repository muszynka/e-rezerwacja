<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Potwierdzenie.aspx.cs" Inherits="MemberPages_Potwierdzenie" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            color: #FF0000;
        }
        .style2
        {
            font-weight: normal;
        }
        .style3
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1 class="style1">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="rezerwacja_id" 
            DataSourceID="SqlDataSource1" Width="963px">
            <ItemTemplate>
                <span class="style2">Rezerwacja o identyfikatorze</span>
                <asp:Label ID="rezerwacja_idLabel" runat="server" 
                    Text='<%# Eval("rezerwacja_id") %>' />
                &nbsp;<span class="style2">została utworzona.</span><br />
            </ItemTemplate>
        </asp:DataList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT rezerwacja_id FROM Rezerwacje WHERE rezerwacja_id IN (SELECT MAX(rezerwacja_id) FROM Rezerwacje)">
        </asp:SqlDataSource>
    </h1>
    <h1 class="style1">
        Szczegóły rezerwacji:</h1>
    <p>
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <span class="style3">Początek gry:</span>
                <asp:Label ID="poczatekLabel" runat="server" 
                    style="font-weight: 700; color: #FF0000;" Text='<%# Eval("poczatek") %>' />
                <br />
                <span class="style3">Koniec gry:</span>
                <asp:Label ID="koniecLabel" runat="server" 
                    style="font-weight: 700; color: #FF0000;" Text='<%# Eval("koniec") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT poczatek, koniec FROM Rezerwacje WHERE rezerwacja_id IN (SELECT MAX(rezerwacja_id) FROM Rezerwacje)">
        </asp:SqlDataSource>
    </p>
    <h2>
        W przypadku pytań dotyczących rezerwacji, proszę posługiwać się widocznym u góry 
        identyfikatorem.</h2>
&nbsp;<div>
    
        <asp:Button ID="Button1" runat="server" 
            PostBackUrl="~/MemberPages/Rezerwacja2.aspx" Text="OK" />
    
    </div>
    </form>
</body>
</html>
