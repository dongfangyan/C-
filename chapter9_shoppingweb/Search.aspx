<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 776px">
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="lblSearchInfo" runat="server" Text=" " Width="528px"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td style="width: 39px">
            </td>
            <td style="width: 342px">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" RepeatColumns="2"
                    RepeatDirection="Horizontal" Width="352px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <ItemStyle BackColor="White" ForeColor="#003399" />
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td rowspan="5" style="width: 94px">
                                    <asp:Image ID="Image2" runat="server" AlternateText="暂无图片" Height="120px" ImageUrl='<%# Eval("picture") %>'
                                        Width="112px" /></td>
                                <td style="width: 112px">
                                </td>
                                <td style="width: 99px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    &nbsp;
                                    <asp:Label ID="Label1" runat="server" Height="16px" Text="商品名称：" Width="80px"></asp:Label></td>
                                <td style="width: 99px">
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 112px; height: 21px">
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Font-Strikeout="True"
                                        Text="原价："></asp:Label></td>
                                <td style="width: 99px; height: 21px">
                                    <asp:Label ID="InPriceLabel" runat="server" Font-Strikeout="True" Text='<%# Eval("InPrice", "{0:C}") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text="现价："></asp:Label></td>
                                <td style="width: 99px">
                                    <asp:Label ID="OutPriceLabel" runat="server" Text='<%# Eval("OutPrice", "{0:C}") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 112px; height: 23px">
                                    &nbsp; &nbsp;&nbsp;
                                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#00C000" NavigateUrl='<%# "~/ProductDetailInfo.aspx?id=" + Eval("ID") %>'>详细信息</asp:HyperLink></td>
                                <td style="width: 99px; height: 23px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 94px; height: 17px">
                                </td>
                                <td style="width: 112px; height: 17px">
                                    &nbsp; &nbsp;&nbsp;
                                    <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/images/购买.bmp" NavigateUrl='<%# "~/members/Cart.aspx?id=" + Eval("ID") %>'>HyperLink</asp:HyperLink></td>
                                <td style="width: 99px; height: 17px">
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td style="width: 39px; height: 6px">
            </td>
            <td style="width: 342px; height: 6px">
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        </table>
</asp:Content>

