<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_4bDataList.aspx.cs" Inherits="_5_4bDataList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Notes], [PhotoPath] FROM [Employees] WHERE ([EmployeeID] = @EmployeeID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="EmployeeID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" Width="591px">
            <EditItemTemplate>
                EmployeeID:
                <asp:Label ID="EmployeeIDLabel1" runat="server" Text='<%# Eval("EmployeeID") %>'>
                </asp:Label><br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>'>
                </asp:TextBox><br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>'>
                </asp:TextBox><br />
                BirthDate:
                <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>'>
                </asp:TextBox><br />
                HireDate:
                <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>'>
                </asp:TextBox><br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>'>
                </asp:TextBox><br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
                </asp:TextBox><br />
                Region:
                <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>'>
                </asp:TextBox><br />
                PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>'>
                </asp:TextBox><br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
                </asp:TextBox><br />
                HomePhone:
                <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>'>
                </asp:TextBox><br />
                Notes:
                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>'>
                </asp:TextBox><br />
                PhotoPath:
                <asp:TextBox ID="PhotoPathTextBox" runat="server" Text='<%# Bind("PhotoPath") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="更新">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>'>
                </asp:TextBox><br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>'>
                </asp:TextBox><br />
                BirthDate:
                <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>'>
                </asp:TextBox><br />
                HireDate:
                <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>'>
                </asp:TextBox><br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>'>
                </asp:TextBox><br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
                </asp:TextBox><br />
                Region:
                <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>'>
                </asp:TextBox><br />
                PostalCode:
                <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>'>
                </asp:TextBox><br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
                </asp:TextBox><br />
                HomePhone:
                <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>'>
                </asp:TextBox><br />
                Notes:
                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>'>
                </asp:TextBox><br />
                PhotoPath:
                <asp:TextBox ID="PhotoPathTextBox" runat="server" Text='<%# Bind("PhotoPath") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="插入">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <table id="TABLE1" border="1" cellpadding="1" cellspacing="1" onclick="return TABLE1_onclick()" style="width: 729px">
                    <tr>
                        <td style="width: 100px">
                            雇员ID</td>
                        <td style="width: 100px">
                <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>'>
                </asp:Label></td>
                        <td style="width: 100px">
                            姓</td>
                        <td style="width: 100px">
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>'></asp:Label></td>
                        <td style="width: 80px">
                            名</td>
                        <td style="width: 100px">
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label></td>
                        <td rowspan="4" style="width: 300px">
                            简介：<br />
                <asp:Label ID="NotesLabel" runat="server" Text='<%# Bind("Notes") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            出生日期</td>
                        <td style="width: 100px">
                <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Bind("BirthDate") %>'></asp:Label></td>
                        <td style="width: 100px">
                            入职日期</td>
                        <td style="width: 100px">
                <asp:Label ID="HireDateLabel" runat="server" Text='<%# Bind("HireDate") %>'></asp:Label></td>
                        <td style="width: 80px">
                            地址</td>
                        <td style="width: 100px">
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            区域</td>
                        <td style="width: 100px">
                <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>'></asp:Label></td>
                        <td style="width: 100px">
                            邮政编码</td>
                        <td style="width: 100px">
                <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>'>
                </asp:Label></td>
                        <td style="width: 80px" rowspan="2">
                            相片</td>
                        <td style="width: 100px" rowspan="2">
                            &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PhotoPath")%> ' /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            城市\国家</td>
                        <td style="width: 100px">
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>'></asp:Label>\<asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>'></asp:Label></td>
                        <td style="width: 100px">
                            家庭电话</td>
                        <td style="width: 100px">
                <asp:Label ID="HomePhoneLabel" runat="server" Text='<%# Bind("HomePhone") %>'></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    </div>
    </form>
</body>
</html>
