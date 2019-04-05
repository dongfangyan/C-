<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_1GridView.aspx.cs" Inherits="_5_1GridView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [BirthDate], [Address], [City], [PhotoPath] FROM [Employees]">
        </asp:SqlDataSource>
    
   
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BorderStyle="Solid" BorderWidth="2px" Caption="雇员信息表" DataKeyNames="EmployeeID"
            DataSourceID="SqlDataSource1" Font-Bold="True" PageSize="3" Width="615px">
            <Columns>
                <asp:BoundField DataField="LastName" HeaderText="姓" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="名" SortExpression="FirstName" />
                <asp:BoundField DataField="BirthDate" DataFormatString="{0:d}" HeaderText="出生日期"
                    HtmlEncode="False" SortExpression="BirthDate" />
                <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="城市" SortExpression="City" />
                <asp:TemplateField HeaderText="相片" ConvertEmptyStringToNull="False" 
                    SortExpression="PhotoPath">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="106px" 
                            ImageUrl='<%# Eval("PhotoPath") %>' Width="120px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="PhotoPath" 
                            Mode="Edit" />
                    </EditItemTemplate>
                    <ItemStyle Width="120px" />
                </asp:TemplateField>
            </Columns>
            <RowStyle BackColor="#E0E0E0" ForeColor="Teal" />
            <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="2px"
                ForeColor="#004000" />
            <AlternatingRowStyle BackColor="Silver" ForeColor="DarkRed" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
