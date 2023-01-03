<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vote.aspx.cs" Inherits="Task.vote" %>

<%@ Register Src="~/voteUserControl.ascx" TagPrefix="uc1" TagName="voteUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:voteUserControl runat="server" id="voteUserControl" />
        </div>
    </form>
</body>
</html>
