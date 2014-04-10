<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            Ustaw nową wartość mojego hasła</h1>
        <p>
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
                SubmitButtonText="Przypomnij" 
                UserNameInstructionText="Podaj swój login w celu odzyskania hasła" 
                UserNameLabelText="Login:" UserNameTitleText="Zapomniałeś hasła?">
            </asp:PasswordRecovery>
        </p>
    
    </div>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Strona główna</asp:HyperLink>
    </form>
</body>
</html>
