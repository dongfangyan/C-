﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.master" AutoEventWireup="true" CodeFile="ProductInfo.aspx.cs" Inherits="ProductInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 <style type="text/css">
       
        .main
       {  width: 950px;
           margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class ="main">
 <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" RepeatColumns="2" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
        <ItemTemplate>
            <table>
                <tr>
                    <td rowspan="5" style="width: 238px" align="center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture") %>' />
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        商品名称：</td>
                    <td style="width: 100px" align="left">
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        原价：</td>
                    <td style="width: 100px" align="left">
                        <asp:Label ID="InPriceLabel" runat="server" Text='<%# Eval("InPrice") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        现价：</td>
                    <td style="width: 100px" align="left">
                        <asp:Label ID="OutPriceLabel" runat="server" Text='<%# Eval("OutPrice") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                        <asp:HyperLink ID="Hypinfo" runat="server" 
                            NavigateUrl='<%# "~/ProductdetailInfo.aspx?id="+Eval("ID") %>'>详细信息</asp:HyperLink></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 238px">
                    </td>
                    <td align="right" style="width: 100px">
                        <asp:HyperLink ID="Hypbuy" runat="server" ImageUrl="~/images/购买.bmp" 
                            NavigateUrl='<%# "~/members/Cart.aspx?id="+Eval("ID") %>'>购买</asp:HyperLink>
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:DataList>
    </div>
    <div align="right">

        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/more.jpg" />
&nbsp;

    </div>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    SelectCommand="SELECT top 6 [picture], [Name], [InPrice], [OutPrice], [ID], [TypeName] FROM [productsview] WHERE ([TypeName] = @TypeName) ">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="TypeName" QueryStringField="typename" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
</asp:Content>

