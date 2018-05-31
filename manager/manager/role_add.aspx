<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="role_add.aspx.cs" Inherits="manager.role_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 105px;
        }
          .hr-more {
    height: 20px; 
    width: 150px;        
    position: relative; 
    left: 10%; 
    top: -20px;       
    font: normal 1.3em/30px 微软雅黑; 
    vertical-align: middle; 
    text-align: center;
    border-radius: 4px; 
    background-color:  darkgrey; 
}
        .auto-style2 {
            width: 105px;
            height: 25px;
        }
      
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="margin-top:90px">
                <hr style="height:1px;border:none;border-top:1px solid #555555;" />
                 <div class="hr-more">编辑角色信息</div>
            </div>
             <table style="margin:50px auto auto auto">
                    <tbody>
                          <tr>
                            <th scope="row" class="auto-style2">角色类型</th>
                            <td class="auto-style3">
                                <asp:DropDownList ID="roletype" runat="server" Height="30px" Width="100px">
                                    <asp:ListItem>请选择类型</asp:ListItem>
                                    <asp:ListItem>系统用户</asp:ListItem>
                                     <asp:ListItem>临时用户</asp:ListItem>
                                </asp:DropDownList>                            
                            </td>
                        </tr>     
                         <tr>
                            <th scope="row" class="auto-style1">角色编号</th>
                            <td>
                                <asp:TextBox ID="roleid" runat="server" Height="20px" ></asp:TextBox>                              
                            </td>
                        </tr>      
                        <tr>
                            <th scope="row" class="auto-style1">角色名称</th>
                            <td>
                                <asp:TextBox ID="rolename" runat="server" Height="20px" ></asp:TextBox>                              
                            </td>
                        </tr>    
                     
                        <tr>
                            <th scope="row" class="auto-style1">管理权限<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </th>
                            <td>
                              导航名称                             
                                 
                                <br />
                                <br />
                                <asp:TreeView runat="server" ImageSet="WindowsHelp" Height="117px" Width="134px" ID="tv" >
                                    <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                                    <Nodes>
                                        <asp:TreeNode Text="站点管理" Value="站点管理">
                                            <asp:TreeNode Text="默认站点" Value="默认站点">
                                                <asp:TreeNode Text="新闻资讯" Value="新闻资讯">
                                                    <asp:TreeNode Text="内容管理" Value="内容管理"></asp:TreeNode>
                                                </asp:TreeNode>
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                    </Nodes>
                                    <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="1px" />
                                    <ParentNodeStyle Font-Bold="False" />
                                    <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
                                </asp:TreeView>
                                <br />
                            </td>
                            <td style="width:300px">
                                <br />
                                <br />
                                权限分配<br />
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Height="30px" Width="100px">
                                    <asp:ListItem>显示</asp:ListItem>
                                    <asp:ListItem>不显示</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
&nbsp;</td>
                        </tr>
                        <tr>
                            <th scope="row" class="auto-style1">&nbsp;</th>
                            <td>
                                <asp:Button ID="submit" runat="server" Text="提交保存"  Width="129px"  BackColor="#3399FF" ForeColor="Black" BorderColor="#99CCFF" Font-Size="Larger" OnClick="submit_Click" />&nbsp&nbsp
                               <asp:Button ID="return" runat="server" Text="返回上一级"  Width="129px"  BackColor="#3399FF" ForeColor="Black" BorderColor="#99CCFF" Font-Size="Larger" OnClick="return_Click"   />
                            </td>
                        </tr>
                    </tbody>
                </table>
        </div>
    </form>
</body>
</html>