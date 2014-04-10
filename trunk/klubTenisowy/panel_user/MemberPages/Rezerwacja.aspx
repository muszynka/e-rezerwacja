<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rezerwacja.aspx.cs" Inherits="MemberPages_Rezerwacja" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            Rezerwacja kortów</h1>
        <p>
            Aktualne rezerwacje:</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                DeleteCommand="DELETE FROM [Rezerwacje] WHERE [rezerwacja_id] = @rezerwacja_id" 
                InsertCommand="INSERT INTO [Rezerwacje] ([rezerwacja_id], [poczatek], [kort_id], [koniec]) VALUES (@rezerwacja_id, @poczatek, @kort_id, @koniec)" 
                SelectCommand="SELECT [rezerwacja_id], [poczatek], [kort_id], [koniec] FROM [Rezerwacje]" 
                UpdateCommand="UPDATE [Rezerwacje] SET [poczatek] = @poczatek, [kort_id] = @kort_id, [koniec] = @koniec WHERE [rezerwacja_id] = @rezerwacja_id">
                <DeleteParameters>
                    <asp:Parameter Name="rezerwacja_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="rezerwacja_id" Type="Int32" />
                    <asp:Parameter Name="poczatek" Type="DateTime" />
                    <asp:Parameter Name="kort_id" Type="Int32" />
                    <asp:Parameter Name="koniec" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="poczatek" Type="DateTime" />
                    <asp:Parameter Name="kort_id" Type="Int32" />
                    <asp:Parameter Name="koniec" Type="DateTime" />
                    <asp:Parameter Name="rezerwacja_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" DataKeyNames="rezerwacja_id" 
                DataSourceID="SqlDataSource1" Height="50px" Width="867px">
                <Fields>
                    <asp:BoundField DataField="rezerwacja_id" HeaderText="rezerwacja_id" 
                        ReadOnly="True" SortExpression="rezerwacja_id" />
                    <asp:BoundField DataField="poczatek" HeaderText="poczatek" 
                        SortExpression="poczatek" />
                    <asp:BoundField DataField="kort_id" HeaderText="kort_id" 
                        SortExpression="kort_id" />
                    <asp:BoundField DataField="koniec" HeaderText="koniec" 
                        SortExpression="koniec" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </p>
        <hr />
        <p>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="rezerwacja_id" 
                DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    Numer rezerwacji
                    <asp:Label ID="rezerwacja_idLabel" runat="server" 
                        Text='<%# Eval("rezerwacja_id") %>' />
                    <br />
                    Numer kortu:
                    <asp:Label ID="kort_idLabel" runat="server" Text='<%# Eval("kort_id") %>' />
                    <br />
                    poczatek gry:
                    <asp:Label ID="poczatekLabel" runat="server" Text='<%# Eval("poczatek") %>' />
                    <br />
                    koniec gry:
                    <asp:Label ID="koniecLabel" runat="server" Text='<%# Eval("koniec") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SeparatorTemplate>
                    <hr />
                </SeparatorTemplate>
            </asp:DataList>
        </p>
    
    </div>
    </form>
</body>
</html>
