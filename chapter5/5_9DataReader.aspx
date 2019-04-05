<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_9DataReader.aspx.cs" Inherits="_5_9DataReader" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @original_CustomerID AND [CompanyName] = @original_CompanyName AND [ContactName] = @original_ContactName AND [ContactTitle] = @original_ContactTitle AND [Address] = @original_Address AND [City] = @original_City AND [Region] = @original_Region AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND [Phone] = @original_Phone AND [Fax] = @original_Fax"
            InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (@CustomerID, @CompanyName, @ContactName, @ContactTitle, @Address, @City, @Region, @PostalCode, @Country, @Phone, @Fax)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax] FROM [Customers] ORDER BY [CustomerID]"
            UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [ContactName] = @ContactName, [ContactTitle] = @ContactTitle, [Address] = @Address, [City] = @City, [Region] = @Region, [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone, [Fax] = @Fax WHERE [CustomerID] = @original_CustomerID AND [CompanyName] = @original_CompanyName AND [ContactName] = @original_ContactName AND [ContactTitle] = @original_ContactTitle AND [Address] = @original_Address AND [City] = @original_City AND [Region] = @original_Region AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND [Phone] = @original_Phone AND [Fax] = @original_Fax">
            <DeleteParameters>
                <asp:Parameter Name="original_CustomerID" Type="String" />
                <asp:Parameter Name="original_CompanyName" Type="String" />
                <asp:Parameter Name="original_ContactName" Type="String" />
                <asp:Parameter Name="original_ContactTitle" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Region" Type="String" />
                <asp:Parameter Name="original_PostalCode" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Fax" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="ContactTitle" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Region" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:Parameter Name="original_CustomerID" Type="String" />
                <asp:Parameter Name="original_CompanyName" Type="String" />
                <asp:Parameter Name="original_ContactName" Type="String" />
                <asp:Parameter Name="original_ContactTitle" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Region" Type="String" />
                <asp:Parameter Name="original_PostalCode" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Fax" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="ContactTitle" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Region" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Fax" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
   
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CustomerID"
            DataSourceID="SqlDataSource1" 
        oniteminserting="FormView1_ItemInserting">
            <EditItemTemplate>
                CustomerID:
                <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Eval("CustomerID") %>'>
                </asp:Label><br />
                CompanyName:
                <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>'>
                </asp:TextBox><br />
                ContactName:
                <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>'>
                </asp:TextBox><br />
                ContactTitle:
                <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>'>
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
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>'>
                </asp:TextBox><br />
                Fax:
                <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="更新">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                <br />
                &nbsp;
                <table border="2" style="width: 418px">
                    <tr>
                        <td style="width: 100px">
                            CustomerID:</td>
                        <td style="width: 100px">
                <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            CompanyName:</td>
                        <td style="width: 100px">
                <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            ContactName:
                        </td>
                        <td style="width: 100px">
                <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            ContactTitle:</td>
                        <td style="width: 100px">
                <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Address:</td>
                        <td style="width: 100px">
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            City:</td>
                        <td style="width: 100px">
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Region:
                        </td>
                        <td style="width: 100px">
                <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            PostalCode:</td>
                        <td style="width: 100px">
                <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Country:
                        </td>
                        <td style="width: 100px">
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Phone:</td>
                        <td style="width: 100px">
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Fax:</td>
                        <td style="width: 100px">
                <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>'>
                </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="插入">
                </asp:LinkButton>
                            &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消">
                </asp:LinkButton></td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                <table border="2" style="border-right: #ffff33 thin solid; border-top: #ffff33 thin solid;
                    border-left: #ffff33 thin solid; width: 377px; border-bottom: #ffff33 thin solid;
                    background-color: #ffffcc">
                    <tr>
                        <td style="width: 100px">
                            CustomerID：</td>
                        <td style="width: 100px">
                            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            CompanyName：</td>
                        <td style="width: 100px">
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            ContactName：</td>
                        <td style="width: 100px">
                            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Bind("ContactName") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            ContactTitle：</td>
                        <td style="width: 100px">
                            <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Bind("ContactTitle") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Address：</td>
                        <td style="width: 100px">
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            City：</td>
                        <td style="width: 100px">
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Region：</td>
                        <td style="width: 100px">
                            <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            PostalCode：</td>
                        <td style="width: 100px">
                            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Country：</td>
                        <td style="width: 100px">
                            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Phone：</td>
                        <td style="width: 100px">
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Fax：</td>
                        <td style="width: 100px">
                            <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                Text="注册"></asp:LinkButton></td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;
            </ItemTemplate>
        </asp:FormView>
    </div>
    </form>
</body>
</html>
