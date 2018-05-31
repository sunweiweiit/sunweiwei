<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="role.aspx.cs" Inherits="manager.role" %>

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
      
        <div style="margin-left:250px" class="layui-btn-group">
        <asp:Button ID="addbtn" runat="server" Text="&#xe654;添加"  OnClick="addbtn_Click" class="layui-btn layui-btn-primary layui-btn-sm"/>
        <asp:Button ID="Button1" runat="server" Text="&#x1002;全选" OnClick="Button1_Click" class="layui-btn layui-btn-primary layui-btn-sm" />
        <asp:Button ID="Button2" runat="server" Text="&#x1002;反选" OnClick="Button2_Click" class="layui-btn layui-btn-primary layui-btn-sm"/>
        <asp:Button ID="del" runat="server" Text="&#xe640;删除"  class="layui-btn layui-btn-primary layui-btn-sm" OnClick="del_Click"/>
        </div>
        <br/><br/><br/><br/><br/>
        <div style="float:right;padding-right:250px" >
         <asp:TextBox ID="selectbox" runat="server" ToolTip="请输入用户名"></asp:TextBox><asp:Button ID="select" runat="server" Text="搜索" OnClick="select_Click" />
        </div>     
        <br /><br /><br />      

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" AutoGenerateColumns="False" HorizontalAlign="Center" ForeColor="#333333" GridLines="None">

            <AlternatingRowStyle BackColor="White" />

            <Columns>
                <asp:TemplateField HeaderText="选择">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                    <ItemStyle Width="150px" />
                </asp:TemplateField>  
                 <asp:BoundField DataField="user_id" HeaderText="用户编号" >
                <ItemStyle Width="500px" />
                     </asp:BoundField>
                <asp:BoundField DataField="user_name" HeaderText="用户名" >
                <ItemStyle Width="500px" />
                </asp:BoundField>
                <asp:BoundField DataField="user_role" HeaderText="操作">
                    <ItemStyle Width="500px" />
                </asp:BoundField>
               
                  <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <a href="role_edit.aspx?user_id=<%# Eval("user_id") %>&&user_name=<%# Eval("user_name") %>">
                        <asp:Label ID="edit" runat="server" Text="编辑"></asp:Label>
                            </a>
                    </ItemTemplate>
                    <ItemStyle Width="100px" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" Font-Size="Larger" Height="30px" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="X-Large" Height="50px" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" BackColor="#EFF3FB" Font-Size="Larger" Height="40px" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
              
    </div>
       
    </form>
    <script type="text/javascript">
      
    </script>
</body>
</html>
