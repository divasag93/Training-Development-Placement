<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #800000;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style2
        {
            height: 15px;
        }
        #Reset1
        {
            width: 69px;
        }
        .style3
        {
            height: 26px;
        }
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style5
        {
            height: 26px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style6
        {
            height: 15px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style7
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
        .style8
        {
            text-decoration: underline;
        }
    </style>
</head>
<body bgcolor="#c0d6d6">
    <form id="form1" runat="server" >
    <div>
        <span class="style7"><strong>&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style8">Registration</span></strong></span>
    <table align="center">
    <tr>
        <td align="justify" class="style1" colspan="3"><strong style="color: #000066">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Details</strong></td>
    </tr>

    <tr>
        <td class="style4">First Name*</td>
        <td>
            <asp:TextBox ID="TxtFname" runat="server"></asp:TextBox>
        </td><td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TxtFname" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>

    <tr>
        <td class="style4">Middle Name</td>
        <td>
            <asp:TextBox ID="TxtMname" runat="server"></asp:TextBox>
        </td><td>
            <br />
        </td>
    </tr>
    
    <tr>
        <td class="style6">Last Name*</td>
        <td class="style2">
            <asp:TextBox ID="TxtLname" runat="server"></asp:TextBox>
        </td><td class="style2">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TxtLname" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>

    <tr>
        <td class="style4">User Name*</td>
        <td>
            <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
        </td><td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TxtUserName" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="MsgLb" runat="server"></asp:Label>
        </td>
    </tr>

    <tr>
        <td class="style4">Enrollment No.*</td>
        <td>
            <asp:TextBox ID="TxtEnroll" runat="server"></asp:TextBox>
        </td><td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TxtEnroll" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
    <td class="style4">Branch*</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">Select Branch</asp:ListItem>
                <asp:ListItem Value="1">CS</asp:ListItem>
                <asp:ListItem Value="2">IT</asp:ListItem>
                <asp:ListItem Value="3">ME</asp:ListItem>
                <asp:ListItem Value="4">EC</asp:ListItem>
                <asp:ListItem Value="5">EN</asp:ListItem>
            </asp:DropDownList>
        </td><td>
            <br />
        </td>

    </tr>


    <tr>
        <td class="style4">Email*</td>
        <td>
            <asp:TextBox ID="Txtemail" runat="server"></asp:TextBox>
        </td><td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="Txtemail" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="Txtemail" ErrorMessage="Invalid Email Address" 
        ForeColor="Red" SetFocusOnError="True" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td class="style5">Password*</td>
        <td class="style3">
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td><td class="style3">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="TxtPassword" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TxtPassword" ControlToValidate="TxtRepassword" 
        ErrorMessage="Password do not match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>

    <tr>
        <td class="style4">Retype Password*</td>
        <td>
            <asp:TextBox ID="TxtRepassword" runat="server" TextMode="Password"></asp:TextBox>
        </td><td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="TxtRepassword" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>

    <tr>
        <td class="style4">Mobile No.</td>
        <td>
            <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
        </td><td>
            <br />
        </td>
    </tr>

    <tr>
        <td colspan="3" align="justify">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                Width="71px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Reset1" type="reset" value="Reset" onclick="return Reset1_onclick()" />
        </td>
    </tr>

    </table>
    </div>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    </form>
</body>
</html>
