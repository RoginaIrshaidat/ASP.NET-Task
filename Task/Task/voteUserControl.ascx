<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="voteUserControl.ascx.cs" Inherits="Task.voteUserControl" %>

<div id="voteQuest" runat="server" Visible="true">
    <asp:Label ID="lblVoteQue" runat="server" Text="Label"></asp:Label>
    
                <asp:RadioButtonList ID="voteList" runat="server"   RepeatDirection="Vertical">
                    <asp:ListItem >Exellent</asp:ListItem>
                    <asp:ListItem >Very Good</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem >Poor</asp:ListItem>
                </asp:RadioButtonList>
<asp:Button ID="btnVote" runat="server" Text="Vote" OnClick="btnVote_Click" />
    </div>


<div id="voteRange" runat="server" Visible="false">
    <asp:Label ID="lblExell" runat="server" Text="Exellent"></asp:Label><br />
        <asp:Label ID="lblVGood" runat="server" Text="Very Good"></asp:Label><br />
        <asp:Label ID="lblGood" runat="server" Text="Good"></asp:Label><br />
        <asp:Label ID="lblPoor" runat="server" Text="Poor"></asp:Label><br />


</div>
