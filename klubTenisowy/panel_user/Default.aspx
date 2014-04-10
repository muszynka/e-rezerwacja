<%@ Page Title="Panel administracyjny" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Witaj w klubie tenisowym e-rakieta</h2>
    <p class="style1">
        Witaj w naszym serwisie, zaloguj się, żeby zarezerwować korty!</p>
    <p class="style1">
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </p>
    <p>
        <asp:LoginView ID="LoginView1" runat="server" 
            onviewchanged="LoginView1_ViewChanged1">
            <AnonymousTemplate>
                Nie jesteś zalogowany. Jeśli nie masz konta to: 
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Register.aspx">Zarejestruj się</asp:HyperLink>
                &nbsp;lub <asp:HyperLink
                    ID="HyperLink4" runat="server" NavigateUrl="~/RecoverPassword.aspx">Przypomnij hasło</asp:HyperLink>
            </AnonymousTemplate>
            <LoggedInTemplate>
                Zostałeś zalogowany <asp:LoginName ID="LoginName1" runat="server" />
                 <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/MemberPages/ChangePassword.aspx">Zmień hasło</asp:HyperLink>
                &nbsp;
            </LoggedInTemplate>
        </asp:LoginView>
    </p>
    <p>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/MemberPages/Members.aspx">Strona członkowska</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/MemberPages/Rezerwacja.aspx">Zarezerwuj kort</asp:HyperLink>
        <br />
    </p>
</asp:Content>
