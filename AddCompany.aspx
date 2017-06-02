<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCompany.aspx.cs" Inherits="WebApplication1.Account.AddCompany" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="description" content=""/>
		<meta name="author" content=""/>
		
		<title>SRMS CET |Add Company</title>
		
		<link href="css/bootstrap.min.css" rel="stylesheet"/>
		
		<link href="https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic" rel="stylesheet" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,100italic,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css"/>
		
		<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
		<link href="js/plugins/camera/css/camera.css" rel="stylesheet"/>
		<link href="js/plugins/magnific-popup/magnific-popup.css" rel="stylesheet"/>
		<link href="css/style.css" rel="stylesheet"/>
		<link href="css/responsive.css" rel="stylesheet"/>
		
		
		
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/fav-144.html"/>
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/fav-114.html"/>
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/fav-72.html"/>
		<link rel="apple-touch-icon-precomposed" href="images/fav-57.html"/>
		<link rel="shortcut icon" href="images/fav.html"/>
    <style type="text/css">
        .style1
        {
            width: 1113px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .style2
        {
            width: 1113px;
            height: 53px;
        }
        .style3
        {
            color: #FFFFFF;
        }
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style5
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
        }
        .style6
        {
            width: 1113px;
        }
        .style7
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            text-decoration: underline;
        }
        .style8
        {
            width: 123px;
        }
        .auto-style1 {
            width: 1288px;
        }
        .auto-style2 {
            width: 1288px;
            height: 69px;
        }
        .auto-style3 {
            height: 69px;
        }
        .auto-style4 {
            width: 1288px;
            height: 181px;
        }
        .auto-style5 {
            height: 181px;
        }
        .auto-style6 {
            width: 1288px;
            height: 48px;
        }
        .auto-style7 {
            width: 1235px;
        }
        .auto-style8 {
            width: 1288px;
            height: 40px;
        }
    </style>
</head>
    <body>
        <header class="main-header">
			<div class="container">
				<div class="top-bar hidden-sm hidden-xs">
					<div class="row">
						<div class="col-sm-6 col-xs-12 col-md-3 ">
                            <span><img src="Pictures/place.jpg" /></span> 
						</div>
                        <div class="col-sm-6 col-xs-12 col-md-6 ">
                            <h3>TRAINING &amp; PLACEMENT CELL</h3>
                            </div>
                            <div class="col-sm-6 col-xs-12 col-md-3">
                                <ul class="list-unstyled list-inline">
                                    <li></li>
                                    <li><i class="fa fa-phone"></i>Contact: +91-999999999</li>
                                </ul>
                            </div>
                        </div>
				</div>
				<nav id="nav" class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a href="index.aspx" class="navbar-brand">
								<i class="fa fa-mobile"></i>
								ADD COMPANY
							</a>
							</div>
						<div class="navbar-collapse collapse">
							<ul id="list" runat="server" class="nav navbar-nav navbar-right">
								<li><a href="index.aspx">Home</a></li>
								<li><a href="Contact.aspx">Contact</a></li>
							</ul>
						</div>
				
					</div>
				</nav>
			
			</div>
		
		</header>
        <div>
    <form id="form1" runat="server" class="form-control">
    <div>
     <table border="0" align="center">
        <tr>
            <td class="style2" style="background-color: #000000; margin-left: 80px;" align="justify" 
                colspan="2">&amp;ns<span class="style3"><strong><span class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bolder; font-style: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                 
&nbsp;</td>
        </tr>

        <tr>
            <td align="justify" bgcolor="#CCCCFF" class="auto-style1" style="padding-top: 3px">&nbsp;<span class="style4"> <strong>&nbsp;</strong></span>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <hr></td>
                <td></td>
            
        </tr>

        <tr>
            <td align="justify" bgcolor="#CCCCFF" class="auto-style2" style="padding-top: 3px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxCname" runat="server" Width="291px" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="  *Required" ControlToValidate="TextBoxCname" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Already Exists"></asp:Label>
            </td>
                <td class="auto-style3"></td>
            
        </tr>

        <tr>
            <td align="justify" bgcolor="#CCCCFF" class="auto-style4" style="padding-top: 3px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; About Company*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxAbout" runat="server" Height="116px" style="margin-top: 0px" TextMode="MultiLine" Width="308px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="  *Required" ControlToValidate="TextBoxAbout" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
                <td class="auto-style5"></td>
            
        </tr>
         
         <tr>
               <td align="justify" bgcolor="#CCCCFF" class="auto-style6" style="padding-top: 3px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Website*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxWebsite" runat="server" Width="308px"></asp:TextBox>
                   &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="  *Required" ControlToValidate="TextBoxWebsite" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxWebsite" ErrorMessage="Not a valid domain name" ForeColor="Red" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
               </td>
         </tr>
         <tr>
             <td align="justify" bgcolor="#CCCCFF" class="auto-style8" style="padding-top: 3px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Add" runat="server" style="text-align: center" Text="Add" OnClick="Add_Click" />
             &nbsp;&nbsp;
                 <asp:Button ID="Cancel" runat="server" style="text-align: center" Text="Cancel" CausesValidation="False" OnClick="Cancel_Click" />
             </td>
         </tr>
         </table>
        <table border="0" align="center" >
        <tr>
            <td class="auto-style7"><hr noshade="noshade" size="2" style="color: #00CC99; width: 1001px;"></td>
        </tr>
        <tr>
            <td align="center" class="auto-style7">

                <span class="style7"><strong>Stay In Touch</strong></span><br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                    ImageUrl="~/Pictures/fb.png" 
                    PostBackUrl="https://www.facebook.com/Tplacements/" Width="30px" />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" 
                    ImageUrl="~/Pictures/mail1.png" 
                    PostBackUrl="https://business.google.com/b/115012415637340692131/dashboard/l/01797493072502413688?hl=en" 
                    Width="30px" />

            </td>
        </tr>
    </table>
    </div>
    </form>
            </div>
                
        	</table>	
	
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>	
	<script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.min.js"></script>
	<script src="js/plugins/camera/js/jquery.mobile.customized.min.js"></script>
	<script src="js/plugins/camera/js/jquery.easing.1.3.js"></script>
	<script src="js/plugins/camera/js/camera.min.js"></script>	
	<script src="js/plugins/shuffle/jquery.shuffle.modernizr.min.js"></script>
	<script src="js/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js"></script>	
	<script src="js/custom.js"></script>	

</body>
</html>
