<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="manager.Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="layui/css/layui.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">                     
     
        <br /><br />
        <div style="margin-left:180px">
             <asp:Button ID="Button1" runat="server" Text="删除日志" OnClick="Button1_Click" /><br />
             起始日期：<asp:TextBox ID="test1" runat="server" class="layui-input" Width="129px" Height="25px"></asp:TextBox>  
             结束日期：<asp:TextBox ID="test2" runat="server" class="layui-input" Width="129px" Height="25px"></asp:TextBox>           
        </div>
        <br /><br /> 
        <div>             
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" HorizontalAlign="Center" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="用户名" DataField="user_name">
                        <ItemStyle Width="400px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="操作类型" DataField="operate_type">
                        <ItemStyle Width="400px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="备注" DataField="sign">
                        <ItemStyle Width="400px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="用户IP" DataField="user_ip">
                        <ItemStyle Width="400px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="添加时间" DataField="login_time">
                        <ItemStyle Width="400px" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Large" Height="40px" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="X-Large" Height="50px" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" Font-Size="Large" Height="40px" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                               
            </asp:GridView>
        </div><br /><br />
                                
                           
      
       <script src="layui/layui.js"></script>
        <script>
          
            layui.use('laydate', function () {
                var laydate = layui.laydate;
                //执行一个laydate实例
                laydate.render({
                    elem: '#test1' //指定元素
                });
                laydate.render({
                    elem: '#test2' //指定元素
                });
            });
        </script>
      
     
    </form>
</body>
</html>
