<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="manager.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <style type="text/css">
        .auto-style1 {
            width: 105px;
        }
        .hr-more {
    height: 20px; 
    width: 100px;        
    position: relative; 
    left: 10%; 
    top: -20px;       
    font: normal 1.3em/30px 微软雅黑; 
    vertical-align: middle; 
    text-align: center;
    border-radius: 4px; 
    background-color:  darkgrey; 
}
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="margin-top:90px">
                <hr style="height:1px;border:none;border-top:1px solid #555555;" />
                <div class="hr-more">修改信息</div>
            </div>
             <table style="margin:50px auto auto auto">
                    <tbody>
                          <tr>
                            <th scope="row" class="auto-style1">管理角色</th>
                            <td>
                                <asp:DropDownList ID="role" runat="server">
                                    <asp:ListItem>请选择角色</asp:ListItem>
                                    <asp:ListItem>演示用户组</asp:ListItem>
                                </asp:DropDownList>
                                 <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="请选择角色" ControlToValidate="role" ForeColor="Red" MaximumValue="演示用户组" MinimumValue="演示用户组" SetFocusOnError="True">请选择角色</asp:RangeValidator>
                            </td>
                        </tr>        
                         <tr>
                            <th scope="row" class="auto-style1">是否启用</th>
                            <td>
                                <asp:DropDownList ID="state" runat="server">
                                    <asp:ListItem>异常</asp:ListItem>
                                    <asp:ListItem>正常</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>        
                           <tr>
                            <th scope="row" class="auto-style1">用户编号</th>
                            <td>
                                <asp:TextBox ID="uid" runat="server"></asp:TextBox>
                                <asp:Label ID="Label4" runat="server" Text="*" ForeColor="#CCCCCC"></asp:Label>
                                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="编号不能为空" ControlToValidate="uid" ForeColor="Red" SetFocusOnError="True" >编号不能为空</asp:RequiredFieldValidator>--%>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="只能填数字" ControlToValidate="uid" SetFocusOnError="True" ValidationExpression="^[1-9]\d*$" ForeColor="Red">只能填数字</asp:RegularExpressionValidator>
                            </td>
                        </tr>                 
                        <tr>
                            <th scope="row" class="auto-style1">用户名</th>
                            <td>
                                <asp:TextBox ID="uname" runat="server" Enabled="False"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text="* 字母、下划线，不可修改" ForeColor="#CCCCCC"></asp:Label>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="格式错误" ControlToValidate="uname" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z0-9]+">格式错误</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      
                        <tr>
                            <th scope="row" class="auto-style1">登录密码</th>
                            <td>
                                <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="#CCCCCC"></asp:Label>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="只能数字和字母" ControlToValidate="pwd" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z0-9]+">只能数字和字母</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="auto-style1">确认密码</th>
                            <td>
                                <asp:TextBox ID="rpwd" runat="server"></asp:TextBox>
                                <asp:Label ID="Label3" runat="server" Text="*" ForeColor="#CCCCCC"></asp:Label>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="密码不一致" ControlToCompare="pwd" ControlToValidate="rpwd" ForeColor="Red" SetFocusOnError="True">密码不一致</asp:CompareValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="只能数字和字母" ControlToValidate="rpwd" SetFocusOnError="True" ValidationExpression="[a-zA-Z0-9]+" ForeColor="Red">只能数字和字母</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                      <%--  <tr>
                            <th scope="row">头像</th>
                            <td>
                                <asp:TextBox ID="img" runat="server"></asp:TextBox>
                                <input id="File1" type="file" runat="server"/>
                            </td>
                        </tr>--%>
                       
                        <tr>
                            <th scope="row" class="auto-style1">姓名</th>
                            <td>
                                <asp:TextBox ID="name" runat="server"></asp:TextBox></td>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="只能输入汉字" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[\u4E00-\u9FA5]+$" ControlToValidate="name">只能输入汉字</asp:RegularExpressionValidator>
                        </tr>
                          <tr>
                            <th scope="row" class="auto-style1">电话</th>
                            <td>
                                <asp:TextBox ID="tel" runat="server"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="号码格式错误（11位）" ControlToValidate="tel" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$">号码格式错误（11位）</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                         <tr>
                            <th scope="row" class="auto-style1">邮箱</th>
                            <td>
                                <asp:TextBox ID="mail" runat="server"></asp:TextBox></td>
                        </tr>
                      <tr>
                            <th scope="row" class="auto-style1"></th>
                            <td> 
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="邮箱格式错误" ForeColor="Red" ControlToValidate="mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True">邮箱格式错误</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="auto-style1">&nbsp;</th>
                            <td>
                                <asp:Button ID="submit" runat="server" Text="修改保存"  Width="129px"  BackColor="#3399FF" ForeColor="Black" BorderColor="#99CCFF" Font-Size="Larger" OnClick="submit_Click" />&nbsp&nbsp
                               <asp:Button ID="return" runat="server" Text="返回上一级"  Width="129px"  BackColor="#3399FF" ForeColor="Black" BorderColor="#99CCFF" Font-Size="Larger" OnClick="return_Click"  />
                            </td>
                        </tr>
                    </tbody>
                </table>
        </div>
    </form>
</body>
</html>