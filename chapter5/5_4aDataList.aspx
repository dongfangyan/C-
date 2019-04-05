<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_4aDataList.aspx.cs" Inherits="_5_4aDataList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" Caption="雇员相片资料"
            DataKeyField="EmployeeID" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="548px">
            <ItemTemplate>
                <br />
                <table>
                    <tr>
                        <td rowspan="3" style="width: 100px">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PhotoPath") %>' /></td>
                        <td style="width: 100px">
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/5_4bDataList.aspx?ID=" + Eval("EmployeeID") %>'>详细资料</asp:HyperLink></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <ItemStyle BorderStyle="Solid" BorderWidth="1px" />
            <SeparatorStyle BorderColor="#004040" BorderStyle="Solid" BorderWidth="1px" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [EmployeeID], [LastName], [PhotoPath] FROM [Employees]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
