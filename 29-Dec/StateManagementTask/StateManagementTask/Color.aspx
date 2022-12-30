<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Color.aspx.cs" Inherits="StateManagementTask.Color" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    
                        <asp:Label ID="lblTime" runat="server" ></asp:Label>
                    
                    <br />
                
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
            <asp:DropDownList ID="colorList" runat="server" OnSelectedIndexChanged="colorChanged">
                        <asp:ListItem Text="..." />
                        <asp:ListItem Text="Red" Value="Red" />
                        <asp:ListItem Text="Blue" Value="Blue" />
                        <asp:ListItem Text="Green" Value="Green" />
                    </asp:DropDownList>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>

               <%--  <asp:Label ID="lblTime" runat="server" ></asp:Label>
                
             <br />
                 <br />
            <br />
                 <br />
                 
            <asp:DropDownList ID="colorList" runat="server" OnSelectedIndexChanged="colorChanged">
                 <asp:ListItem Value="black">Black</asp:ListItem>
                 <asp:ListItem Value="red"> Red</asp:ListItem>
                 <asp:ListItem Value="green">Green</asp:ListItem>
                 <asp:ListItem Value="blue"> Blue</asp:ListItem>
            </asp:DropDownList>--%>
            

         

           


        </div>
    </form>
</body>
</html>
