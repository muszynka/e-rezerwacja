<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rezerwacja2.aspx.cs" Inherits="MemberPages_Rezerwacja2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
    
        Rezerwacja kortu</h1>
    </div>
    <br />
    Podaj datę i godzinę rozpoczęcia gry 
    w formacie (rrrr-mm-dd godzina):<asp:TextBox ID="Textstart" runat="server"></asp:TextBox>
    <br />
    Podaj datę i godzinę zakończenia gry w 
    formacie (rrrr-mm-dd godzina):<asp:TextBox ID="Textkoniec" 
        runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Dodaj" onclick="Button1_Click" />
    <br />
    <br />
    <h2>
        W celu anulowania rezerwacji przejdź
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/MemberPages/Anulowanie.aspx">tutaj</asp:HyperLink>
        .</h2>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AutoGenerateColumns="False" DataKeyNames="rezerwacja_id" 
        AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="rezerwacja_id" HeaderText="rezerwacja_id" 
                ReadOnly="True" SortExpression="rezerwacja_id" InsertVisible="False" />
            <asp:BoundField DataField="poczatek" HeaderText="poczatek" 
                SortExpression="poczatek" />
            <asp:BoundField DataField="koniec" HeaderText="koniec" 
                SortExpression="koniec" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
        SelectCommand="SELECT [rezerwacja_id], [poczatek], [koniec] FROM [Rezerwacje]" 
        DeleteCommand="DELETE FROM [Rezerwacje] WHERE [rezerwacja_id] = @rezerwacja_id" 
        InsertCommand="INSERT INTO [Rezerwacje] ([poczatek], [koniec]) VALUES (@poczatek, @koniec)" 
        
        UpdateCommand="UPDATE [Rezerwacje] SET [poczatek] = @poczatek, [koniec] = @koniec WHERE [rezerwacja_id] = @rezerwacja_id">
        <DeleteParameters>
            <asp:Parameter Name="rezerwacja_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="poczatek" Type="DateTime" />
            <asp:Parameter Name="koniec" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="poczatek" Type="DateTime" />
            <asp:Parameter Name="koniec" Type="DateTime" />
            <asp:Parameter Name="rezerwacja_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
