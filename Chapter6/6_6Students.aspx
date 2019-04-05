<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6_6Students.aspx.cs" Inherits="_6_6Students" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" 
            ImageSet="Contacts" NodeIndent="10">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="students" TextField="text" />
                <asp:TreeNodeBinding DataMember="student" TextField="#Name" />
                <asp:TreeNodeBinding DataMember="studentid" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="studentsex" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="birthdate" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="major" TextField="#InnerText" />
            </DataBindings>
            <HoverNodeStyle Font-Underline="False" />
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" 
                VerticalPadding="0px" />
        </asp:TreeView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="~/XMLStudents.xml"></asp:XmlDataSource>
    
    </div>
    </form>
</body>
</html>
