<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="readfiles_details.aspx.cs" Inherits="Admin_readfiles_details" %>

<%@ Register Assembly="CuteEditor" Namespace="CuteEditor" TagPrefix="CE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    
        <table width="100%" align="center">
            <tr>
                <td align="center" height="60">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="fileid" 
                        DataSourceID="SqlDataSource1" Width="100%">
                        <EditItemTemplate>
                            fileid:
                            <asp:Label ID="fileidLabel1" runat="server" Text='<%# Eval("fileid") %>' />
                            <br />
                            filename:
                            <asp:TextBox ID="filenameTextBox" runat="server" 
                                Text='<%# Bind("filename") %>' />
                            <br />
                            filecontent:
                            <asp:TextBox ID="filecontentTextBox" runat="server" 
                                Text='<%# Bind("filecontent") %>' />
                            <br />
                            publisher:
                            <asp:TextBox ID="publisherTextBox" runat="server" 
                                Text='<%# Bind("publisher") %>' />
                            <br />
                            publishdate:
                            <asp:TextBox ID="publishdateTextBox" runat="server" 
                                Text='<%# Bind("publishdate") %>' />
                            <br />
                            typeid:
                            <asp:TextBox ID="typeidTextBox" runat="server" Text='<%# Bind("typeid") %>' />
                            <br />
                            visitnum:
                            <asp:TextBox ID="visitnumTextBox" runat="server" 
                                Text='<%# Bind("visitnum") %>' />
                            <br />
                            photopath:
                            <asp:TextBox ID="photopathTextBox" runat="server" 
                                Text='<%# Bind("photopath") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            filename:
                            <asp:TextBox ID="filenameTextBox" runat="server" 
                                Text='<%# Bind("filename") %>' />
                            <br />
                            filecontent:
                            <asp:TextBox ID="filecontentTextBox" runat="server" 
                                Text='<%# Bind("filecontent") %>' />
                            <br />
                            publisher:
                            <asp:TextBox ID="publisherTextBox" runat="server" 
                                Text='<%# Bind("publisher") %>' />
                            <br />
                            publishdate:
                            <asp:TextBox ID="publishdateTextBox" runat="server" 
                                Text='<%# Bind("publishdate") %>' />
                            <br />
                            typeid:
                            <asp:TextBox ID="typeidTextBox" runat="server" Text='<%# Bind("typeid") %>' />
                            <br />
                            visitnum:
                            <asp:TextBox ID="visitnumTextBox" runat="server" 
                                Text='<%# Bind("visitnum") %>' />
                            <br />
                            photopath:
                            <asp:TextBox ID="photopathTextBox" runat="server" 
                                Text='<%# Bind("photopath") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <br />

                            <table style="width: 100%">
                                <tr>
                                    <td height="60">
                                        <asp:Label ID="filenameLabel" runat="server" Text='<%# Bind("filename") %>' 
                                            Font-Size="XX-Large" ForeColor="#990000" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40">
                                        <asp:Label ID="publisherLabel" runat="server" Text='<%# Bind("publisher") %>' />
                                        <asp:Label ID="publishdateLabel" runat="server" 
                                            Text='<%# Bind("publishdate") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    <div>
                                        <CE:Editor ID="Editor1" runat="server" AutoConfigure="None" 
                                            ContextMenuMode="None" FilesPath="" Height="680px" ShowBottomBar="False" 
                                            ShowHtmlMode="False" ShowPreviewMode="False" ShowTagSelector="False" 
                                            ShowToolBar="False" Text='<%# Eval("filecontent") %>' URLType="Default" 
                                            Width="100%" BackColor="" BorderColor="" BorderStyle="NotSet" 
                                            BorderWidth="">
                                            <FrameStyle BorderStyle="None" Height="100%" Width="100%" />
                                        </CE:Editor>
                                    </div>
                                       
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td align="center" height="40">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
                        SelectCommand="SELECT * FROM [files] WHERE ([fileid] = @fileid)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="fileid" QueryStringField="fileid" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

