<%@ Page Title="" Language="C#" MasterPageFile="~/Master/siteAdmin.master" AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="admin_AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                     
        <div align="center" >
        <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem Selected="True">订单编号</asp:ListItem>
                                <asp:ListItem>订单日期</asp:ListItem>
                                <asp:ListItem>商品名称</asp:ListItem>
                            </asp:DropDownList>
                     
                            &nbsp;&nbsp;&nbsp;
                     
                            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:Button ID="btnSearch" runat="server" Height="24px" Text="搜索" Width="64px" OnClick="btnSearch_Click" />
    
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/查询.bmp" />
                            <br />
                            <asp:Label ID="lblmessage" runat="server" Font-Size="Small" ForeColor="#C00000"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    Width="800px" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField />
                    </Columns>
                </asp:GridView>
             </div>  
</asp:Content>

