<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log1.aspx.cs" Inherits="manager.Log1" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title></title>
  <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body class="layui-layout-body">
    <form id="form1" runat="server">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo"><h2>自我练习</h2></div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">站点</a></li>
      <li class="layui-nav-item"><a href="">应用</a></li>
      <li class="layui-nav-item"><a href="">会员</a></li>
      <li class="layui-nav-item"><a href="">控制面板</a></li>
      <li class="layui-nav-item">
   
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">          
        </a>
     </li>
      <li class="layui-nav-item">
          <asp:Label ID="lname" runat="server" Text="Label" style="margin-right:20px"></asp:Label></li>
      </li>
      <li class="layui-nav-item"><a href="Login.aspx">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">系统用户</a>
          <dl class="layui-nav-child">
            <dd><a href="Index.aspx">管理员管理</a></dd>
            <dd><a href="Management.aspx">角色管理</a></dd>
            <dd><a href="Log1.aspx">管理日志</a></dd>            
          </dl>
        </li>
     
       
      </ul>
    </div>
  </div>
  
  <div class="layui-body" id="content">
    <!-- 内容主体区域 -->      
    <div style="height:637px;">        
            <IFRAME name="ad" src="Log.aspx" frameBorder="0" width="100%" scrolling="no"  height="100%"></IFRAME>
    </div>
  </div>
  
  <div class="layui-footer">
    <p>NETtest</p>
   
  </div>
</div>
<script src="layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
    </form>
</body>
</html>