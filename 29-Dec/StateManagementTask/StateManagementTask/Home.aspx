<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StateManagementTask.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblWelcome" runat="server" ></asp:Label>
        </div>

        <asp:Button ID="btnLogOut" runat="server" Text="Log out" OnClick="btnLogOut_Click" />
    </form>
</body>
</html>
