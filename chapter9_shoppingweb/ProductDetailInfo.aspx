<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.master" AutoEventWireup="true" CodeFile="ProductDetailInfo.aspx.cs" Inherits="ProductDetailInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    
    <style type="text/css">
        .style1
        {
           
            height:35px;
            width: 100px;
        }
        .style2
        {
          
            height: 35px;
            width: 150px;
        }
              
        .main
       { width: 950px;
           margin: auto;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="main" align="center">
 <asp:DataList ID="DataList1" runat="server"  CellPadding="3" DataKeyField="Name" 
                    DataSourceID="SqlDataSource1" Width="800px">
                    <ItemTemplate>
                        <table style="width: 750px">
                            <tr>
                                <td rowspan="6" style="width: 250px" valign="top">
                                    <asp:Image ID="Image1" runat="server" AlternateText="暂无图片" Height="228px" ImageUrl='<%# Bind("picture") %>'
                                        Width="142px" />
                                    &nbsp; &nbsp;
                                </td>
                                <td   align="left" class="style1" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="Label1" runat="server" Height="16px" Text="商品名称：" Width="88px"></asp:Label></td>
                                <td   align="left"  class="style2" style="border: 1px dotted #EAEAEA">
                                    &nbsp;<asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' Width="96px"></asp:Label></td>
                                <td  align="left" class="style1" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="Label7" runat="server" Text="供应商:" Width="80px"></asp:Label></td>
                                <td  align="left" class="style2" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="SuppliersLabel" runat="server" Text='<%# Eval("Suppliers") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="style1" align="left" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="Label4" runat="server" Text="商品编号：" Width="80px"></asp:Label></td>
                                <td  align="left" class="style2"" style="border: 1px dotted #EAEAEA">
                                    &nbsp;<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>'></asp:Label></td>
                                <td  align="left" class="style1" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="Label8" runat="server" Text="进货时间:"></asp:Label></td>
                                <td  align="left" class="style2" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="publicTimeLabel" runat="server" Text='<%# Eval("publicTime", "{0:d}") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td  align="left"  class="style1" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="Label2" runat="server" Font-Strikeout="True" Text="原价："></asp:Label>
                                    &nbsp;
                                </td>
                                <td  align="left" class="style2" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="InPriceLabel" runat="server" Font-Strikeout="True" Text='<%# Eval("InPrice", "{0:C}") %>'></asp:Label></td>
                                <td  align="left" class="style1" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="Label5" runat="server" Text="所属种类:"></asp:Label></td>
                                <td  align="left" class="style2" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="TypeNameLabel" runat="server" Text='<%# Eval("TypeName") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td  align="left" class="style1"  style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="Label3" runat="server" Text="现价："></asp:Label></td>
                                <td  align="left" class="style2" style="border: 1px dotted #EAEAEA">
                                    <asp:Label ID="OutPriceLabel" runat="server" Text='<%# Eval("OutPrice", "{0:C}") %>'></asp:Label></td>
                                <td >
                                </td>
                                <td >
                                </td>
                            </tr>
                            <tr style="height: 60px">
                                <td align="left" colspan="2" style="border: 1px dotted #EAEAEA">
                                    &nbsp;<asp:Label ID="Label10" runat="server" 
                                        Text="是否为特价商品:" Width="136px"></asp:Label></td> 
                              <td align="left" colspan="2" style="border: 1px dotted #EAEAEA">
                                  <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                                      DataSourceID="SqlDataSource2" DataTextField="IsSpecial" 
                                      DataValueField="IsSpecial" Enabled="False" Height="16px" 
                                      RepeatDirection="Horizontal" SelectedValue='<%# Eval("IsSpecial") %>' 
                                      Width="160px">
                                  </asp:RadioButtonList>
                                </td>
                              </tr>
                              <tr>
                              <td align="center" colspan="4"  style="height:100px">
                                     
                                     <br />
                                     
                                     <asp:Label ID="Label6" runat="server" Text="商品描述:" Width="80px"></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server" Height="80px" ReadOnly="True" 
                                        Text='<%# Eval("Description") %>' Width="580px"></asp:TextBox>
                                    <br />
                                     <br />
                                    <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/images/购买.bmp" 
                                        NavigateUrl='<%# "~/members/Cart.aspx?id=" + Eval("ID") %>'>HyperLink</asp:HyperLink>
                                </td>
                            </tr>
                          
                        </table>
                        <br />
                    </ItemTemplate>
                  
                  
                  
                </asp:DataList>

                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    SelectCommand="SELECT [picture], [Name], [InPrice], [OutPrice], [IsSpecial], [ID], [Description], [publicTime], [Suppliers], [TypeName]  FROM [productsview] WHERE ([ID] = @ID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingWebDBConnectionString %>"
                    SelectCommand="SELECT distinct [IsSpecial] FROM [Products] "></asp:SqlDataSource>

</div>

</asp:Content>

