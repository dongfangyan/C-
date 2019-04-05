<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6_5Teachers.aspx.cs" Inherits="_6_5Teachers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:TreeView ID="trvTeacherlist" runat="server" ImageSet="Contacts" 
                        NodeIndent="10" 
                        ontreenodepopulate="trvTeacherlist_TreeNodePopulate">
                        <HoverNodeStyle Font-Underline="False" />
                        <Nodes>
                            <asp:TreeNode PopulateOnDemand="True" Text="教师信息列表" Value="教师信息列表">
                            </asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" 
                            VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td>
                    <asp:GridView ID="gdvTeacherinfo" runat="server" AutoGenerateColumns="False" 
                        Caption="教师详细信息" CellPadding="4" DataKeyNames="TeacherId" 
                        DataSourceID="sdsTeachers" ForeColor="#333333" GridLines="None" 
                      >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="TeacherId" HeaderText="教师编号" ReadOnly="True" 
                                SortExpression="TeacherId">
                            <HeaderStyle Wrap="False" />
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TeacherName" HeaderText="教师姓名" 
                                SortExpression="TeacherName">
                            <HeaderStyle Wrap="False" />
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TeacherSex" HeaderText="性别" 
                                SortExpression="TeacherSex">
                            <HeaderStyle Wrap="False" />
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Department" HeaderText="系部" 
                                SortExpression="Department">
                            <HeaderStyle Wrap="False" />
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Title" HeaderText="职称" SortExpression="Title">
                            <HeaderStyle Wrap="False" />
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Qulifications" HeaderText="学历" 
                                SortExpression="Qulifications">
                            <HeaderStyle Wrap="False" />
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="sdsTeachers" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TeachersConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM [TeacherInfo] WHERE ([TeacherId] = @TeacherId)" 
                        ProviderName="<%$ ConnectionStrings:TeachersConnectionString.ProviderName %>">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="trvTeacherlist" Name="TeacherId" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
