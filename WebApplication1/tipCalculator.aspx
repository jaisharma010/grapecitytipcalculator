<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tipCalculator.aspx.cs" Inherits="WebApplication1.tipCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grapecity</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width: 499px">
                <br />
                <asp:Label ID="Label7" runat="server" Text="Choose Currency Type"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" ToolTip="Currency Type">
                    <asp:ListItem Value="US">US Dollars</asp:ListItem>
                    <asp:ListItem>INR</asp:ListItem>
                    <asp:ListItem Value="SD">Singapore Dollars</asp:ListItem>
                    <asp:ListItem Value="Eu">Euro</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            <asp:Label ID="Label1" runat="server" Text="BIll"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="tip_Calculator" ToolTip="Bill" CausesValidation="True"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Enabled="False" ForeColor="Red"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Bill Amount Should be specified" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Tip %"></asp:Label>
            <br />
                 <asp:TextBox ID="TextBox2" runat="server" min="0" max="1000" step="10" value="10" AutoPostBack="True" OnTextChanged="tip_Calculator" TextMode="Number" ToolTip="Tip"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Number of people"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" style="margin-bottom: 0px" TextMode="Number" min="1" value="1" AutoPostBack="True" OnTextChanged="tip_Calculator" ></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
           </div>
            <div>

                <asp:Label ID="Label4" runat="server" Text="Tip &lt;br&gt; Per Person"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Total"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>

            </div>
        </div>
    </form>
</body>
</html>
