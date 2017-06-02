<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <style>

        body
    {
        background:#ccc;
            text-align: center;
        }
    .formclass
    {
    padding:10px;
    margin:0px auto;
    background:#fff;
    width:200px;
    }
    input
    {
    padding:2px;
    width:200px;
            font-family: Arial, Helvetica, sans-serif;
        }
    h2
    {
        text-align:center;
        }
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style2
        {
            text-decoration: underline;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <div class="col-md-4 col-sm-12 col-xs-12 newsletter-block">
            <h1 style="text-align: left; margin-left: 40px;">
                &nbsp;</h1>
            <h1 style="text-align: left; margin-left: 40px;">
                <asp:Label ID="LoginStatus" runat="server" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; text-decoration: underline; color: #000066"></asp:Label>
                <span class="style2">Login</span></h1>
            <p style="text-align: left; margin-left: 40px;">
                &nbsp;</p>
            <div class="form-group">
                <span class="style1">
                <label>
                <strong>&nbsp;<br />
                <br />&nbsp;Enter Username</strong></label></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>&nbsp;<br />
                <span class="style1">
                <label>
                <strong>Enter Password</strong></label></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <br />
            </div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-block btn-secondary" OnClick="Button1_Click" Text="Submit" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                PostBackUrl="ForgotPassword.aspx" 
                style="font-family: Arial, Helvetica, sans-serif" >Forgot Password</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" 
                Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Blue" 
                PostBackUrl="~/registration.aspx" 
                style="height: 19px; font-family: Arial, Helvetica, sans-serif;">Sign Up</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>

        </form>

</body>
</html>
