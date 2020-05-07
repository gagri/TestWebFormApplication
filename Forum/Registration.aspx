<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Forum.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <th colspan="3">
            Registration
        </th>
    </tr>
    <tr>
        <td>
            Username
        </td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" />
        </td>
       
    </tr>
    <tr>
        <td>
            Password
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Confirm Password
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Email
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" />
        </td>
      
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Button Text="Submit" runat="server" OnClick="Registration_Click" />
        </td>
        <td>
        </td>
    </tr>
</table>

        </div>
    </form>
</body>
</html>
