<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication1.Account.Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="description" content=""/>
		<meta name="author" content=""/>
		
		<title>SRMS CET |Job Details</title>
		
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
            width: 1327px;
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
        .style7
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            text-decoration: underline;
        }
        .auto-style1 {
            width: 489px;
        }
        .auto-style2 {
            width: 489px;
            height: 69px;
        }
        .auto-style3 {
            height: 69px;
        }
        .auto-style8 {
            height: 40px;
        }
        .auto-style9 {
            height: 162px;
        }
        .auto-style10 {
            width: 522px;
            height: 162px;
        }
        .style9
        {
            height: 162px;
            width: 1004px;
        }
        .style10
        {
            height: 40px;
            width: 1071px;
        }
        .style11
        {
            width: 1004px;
        }
        .style12
        {
            width: 1327px;
        }
        .style13
        {
            width: 1327px;
            height: 69px;
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
                            <h3>TRAINING & PLACEMENT CELL</h3>
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
								Job Details
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
    <form id="form1" runat="server" >
    <div>
     <table border="0" align="center">
        <tr>
            <td class="style2" style="background-color: #000000; margin-left: 80px;" align="justify" 
                >&amp;ns<span class="style3"><strong><span class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bolder; font-style: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                 
&nbsp;</td>
        </tr>

        <tr>
            <td colspan=2 align="justify" bgcolor="#CCCCFF" class="style12" 
                style="padding-top: 3px">&nbsp;<span class="style4"> <strong>&nbsp;</strong></span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelApply" runat="server" ForeColor="Green" Text="You have applied for this job"></asp:Label>
&nbsp;</td>
                
            
        </tr>

        <tr>
            <td colspan=2 align="justify" bgcolor="#CCCCFF" class="style13" 
                style="padding-top: 3px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Comapany Name :</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelCompanyName" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                
            
        </tr>
         <tr>
            <td colspan=2 align="justify" bgcolor="#CCCCFF" class="style13" 
                 style="padding-top: 3px; text-align: left; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Position :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelPosition" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            
        </tr>
          <tr>
            <td colspan=2 align="justify" bgcolor="#CCCCFF" class="style13" 
                  style="padding-top: 3px; text-align: left; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job Location&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="LabelJobLocation" runat="server" Text="Label"></asp:Label>
                </td>
                        
        </tr>
           <tr>
            <td colspan=2 align="justify" bgcolor="#CCCCFF" class="style13" 
                   style="padding-top: 3px; text-align: left; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Salary Offered :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="LabelSalary" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
               </tr>

         <tr>
            <td colspan=2 align="justify" bgcolor="#CCCCFF" class="style13" 
                 style="padding-top: 3px; text-align: left; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comapany&nbsp; URL :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButtonURL" runat="server">LinkButton</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                           
        </tr>
         </table>
         <table border="0" align="center">
             <tr>
            <td align="justify" bgcolor="#CCCCFF" class="style9" 
                     style="padding-top: 3px; text-align: left; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;About Company</strong>&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td> 
                 <td align="justify" bgcolor="#CCCCFF" class="auto-style10" style="padding-top: 3px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td> 

        </tr>

          <tr>
            <td align="justify" bgcolor="#CCCCFF" class="style9" 
                  style="padding-top: 3px; text-align: left; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Job Description</strong>&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td> 
                 <td align="justify" bgcolor="#CCCCFF" class="auto-style10" style="padding-top: 3px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" style="text-align: justify" Text="Label"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                     <br />
            </td> 
        
        </tr>
             <tr>
             <td colspan=2 align="justify" bgcolor="#CCCCFF" class="style10" 
                     style="padding-top: 3px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="ButtonApply" runat="server" style="text-align: center" Text="Apply To Job" OnClick="Add_Click" />
             &nbsp;&nbsp;
                 <asp:Button ID="Back" runat="server" style="text-align: left" Text="Back" CausesValidation="False" OnClick="Cancel_Click" />

             &nbsp;&nbsp;&nbsp;&nbsp;

             </td>
         </tr>
           
        <tr>
            <td colspan=2 class="style11"><hr noshade="noshade" size="2" 
                    style="color: #00CC99; width: 1171px;"></td>
        </tr>
        <tr>
            <td colspan=2 align="center" class="style11">

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
        <table border="0" align="center" width="1024px">
            
         
    </table>
    </div>
    </form>
        </div>
        <footer class="main-footer">
			<div class="copyright">
				<div class="container clearfix">
					<p class="pull-left">
						&copy; COPYRIGHT 2017. All Rights Reserved BY 
                        TDP</p>
					<ul class="list-unstyled list-inline pull-right">
							<li><a href="Contact.aspx">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</footer>
</body>
</html>
