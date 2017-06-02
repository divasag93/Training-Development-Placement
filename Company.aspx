<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="WebApplication1.Account.Company" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="description" content=""/>
		<meta name="author" content=""/>
		
		<title>SRMS CET | Company</title>
		
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
        .style7
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            text-decoration: underline;
        }
        .auto-style1 {
            width: 1288px;
        }
        .auto-style2 {
            width: 1288px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            height: 48px;
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
                            <h3>Training &amp; Placement Cell</h3>
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
								PLACEMENTS
							</a>
							</div>
						
				
					</div>
				</nav>
			
			</div>
		
		</header>
    <div>
    <form id="form1" runat="server">
    <div>
     <table border="0" align="center" style="width: 1188px">
        <tr>
            <td class="style2" style="padding: 8px; background-color: #000000; margin-left: 80px; margin-top: 5px;" 
                align="justify">&amp;ns<span class="style3"><strong><span class="style4" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bolder; font-style: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <span class="style5" style="font-family: Arial, Helvetica, sans-serif; font-weight: bolder; font-style: normal">
                    <asp:Panel ID="Panel2" runat="server" style="margin-left: 355px" 
                    HorizontalAlign="Right" Width="817px">
                    </asp:Panel>
                &nbsp;&nbsp;
                </td>
        </tr>

        <tr>
            <td align="justify" bgcolor="#CCCCFF" class="auto-style1" style="padding-top: 3px">&nbsp;<span class="style4">
                <strong>ALL JOBS &gt;&gt;&nbsp;</strong></span>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
                <asp:Label ID="NoJobsLabel" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; color: #000099; text-decoration: underline"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;
                <asp:Label ID="JobApplyLabel" runat="server" ForeColor="Red" 
                    Text="*Applying to a job requires a student login" 
                    style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                <hr></td>
            
        </tr>

        <tr>
            <td align="justify" bgcolor="#CCCCFF" class="auto-style1" style="padding-top: 3px">&nbsp;</td>
        </tr>
         </table>
         <table border="0" align="center" style="width: 1207px">
             <tr align="justify">
                 <td class="auto-style2" align="center"  bgcolor="#CCCCFF" >
                     <strong>Company</strong></td>
                 <td class="auto-style2" align="center" bgcolor="#CCCCFF" >
                     <strong>Position</strong>
                     </td>
                 <td class="auto-style2" align="center" bgcolor="#CCCCFF">
                     <strong>Location</strong>
                     </td>
                 <td class="auto-style2" align="center" bgcolor="#CCCCFF">
                     <strong>Salary
                     </strong>
                     </td>
                 <td class="auto-style2" align="center" bgcolor="#CCCCFF">
                     <strong>Action
                     </strong>
                     </td>
             </tr>
              <asp:Panel ID="Panel1" runat="server"></asp:Panel>
             </table>
             
        <table border="0" align="center" style="width: 1208px">
        <tr>
            <td class="auto-style1">
                <hr noshade="noshade" size="2" 
                    style="color: #00CC99; width: 1201px;"></td>
        </tr>

        <tr>
            <td align="center" class="auto-style1">

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
    <footer class="main-footer">
			<div class="copyright">
				<div class="container clearfix">
					<p class="pull-left">
						&copy; COPYRIGHT 2017. All Rights Reserved By TDP
					</p>
					<ul class="list-unstyled list-inline pull-right">
							<li><a href="Contact.aspx">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</footer>
	
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
