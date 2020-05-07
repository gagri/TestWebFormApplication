<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Forum.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="login1" runat="server" OnAuthenticate="login1_Authenticate" Width="331px" backcolor="#F7F6F3" bordercolor="#E6E2D8" borderpadding="4" borderstyle="Solid"  
    borderwidth="1px" font-names="Verdana" font-size="0.8em" forecolor="#333333"  
    height="139px"> 
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />  
   <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em"       ForeColor="#284775" />  
   <TextBoxStyle Font-Size="0.8em" />  
   <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />  
            </asp:Login>
        </div>
    </form>
</body>
</html>
