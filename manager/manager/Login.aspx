<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="manager.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="css/style.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
     <script src="js/prefixfree.min.js"></script>
</head>
<body>
     <form id="form1" runat="server">
     <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div><strong>后台登录</strong></div>
		</div>
		<br/>
		<div class="login">           
            <asp:TextBox ID="txtName" runat="server" CssClass="login1" placeholder="请输入用户名"></asp:TextBox><br/>
            <asp:TextBox ID="txtPwd" runat="server" CssClass="login2" TextMode="Password" placeholder="请输入密码"></asp:TextBox><br/>
            <asp:Button ID="btnlogin" runat="server" Text="登录" CssClass="login3" OnClick="btnlogin_Click"/><br/>
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="True" Font-Size="XX-Large"></asp:Label>
		</div>
  
    </form>
</body>
</html>
