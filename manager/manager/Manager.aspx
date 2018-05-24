<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="manager.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <link href="layui/css/layui.css" rel="stylesheet" />
    <style type="text/css">
        #addbtn, #Button1, #Button2, #del {
            margin-right: 3px;
            font-size: 18px;
            vertical-align: bottom;
            vertical-align: middle;
            display: inline-block;
            vertical-align: middle;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br/><br/><br/><br/>
      
        <div style="margin-left:50px" class="layui-btn-group">
        <asp:Button ID="addbtn" runat="server" Text="&#xe654;添加"  OnClick="addbtn_Click" class="layui-btn layui-btn-primary layui-btn-sm"/>
        <asp:Button ID="Button1" runat="server" Text="&#x1002;全选" OnClick="Button1_Click" class="layui-btn layui-btn-primary layui-btn-sm" />
        <asp:Button ID="Button2" runat="server" Text="&#x1002;反选" OnClick="Button2_Click" class="layui-btn layui-btn-primary layui-btn-sm"/>
        <asp:Button ID="del" runat="server" Text="&#xe640;删除"  class="layui-btn layui-btn-primary layui-btn-sm" OnClick="del_Click"/>
        </div>
        <br/><br/><br/><br/><br/>
        <div style="float:right;padding-right:50px" >
         <asp:TextBox ID="selectbox" runat="server" ToolTip="请输入用户名"></asp:TextBox><asp:Button ID="select" runat="server" Text="搜索" OnClick="select_Click" />
        </div>     
        <br /><br /><br />      

        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" HorizontalAlign="Center">

            <Columns>
                <asp:TemplateField HeaderText="选择">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                    <ItemStyle Width="100px" />
                </asp:TemplateField>  
                <asp:BoundField DataField="user_id" HeaderText="用户编号" >
                <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="user_name" HeaderText="用户名">
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="real_name" HeaderText="真实姓名">
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                 <asp:BoundField DataField="user_key" HeaderText="密码">
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="user_role" HeaderText="用户角色">
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="电话">
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="add_time" HeaderText="添加时间">
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="type" HeaderText="状态">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                  <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <a href="Edit.aspx?user_role=<%# Eval("user_role") %>&&user_name=<%# Eval("user_name") %>&&user_id=<%# Eval("user_id") %>&&user_key=<%# Eval("user_key") %>&&type=<%# Eval("type") %>&&real_name=<%# Eval("real_name") %>&&phone=<%# Eval("phone") %>">
                        <asp:Label ID="edit" runat="server" Text="编辑"></asp:Label>
                            </a>
                    </ItemTemplate>
                    <ItemStyle Width="100px" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
              
    </div>
       
    </form>
    <script type="text/javascript">
      
    </script>
</body>
</html>