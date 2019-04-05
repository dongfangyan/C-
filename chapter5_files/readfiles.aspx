<%@ Page Language="C#" AutoEventWireup="true" CodeFile="readfiles.aspx.cs" Inherits="readfiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
            SelectCommand="SELECT [fileid], [filename], [filecontent], [publisher], [typeid], [publishdate] FROM [files]">
        </asp:SqlDataSource>
    
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            Width="500px" HorizontalAlign="Center" >
            <ItemTemplate>
                <asp:HyperLink ID="linkfilename" runat="server" 
                    NavigateUrl='<%# "~/readfiles_details.aspx?fileid="+Eval("fileid") %>' 
                    
                    Text='<%# Eval("filename") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    
    </form>
</body>
</html>
