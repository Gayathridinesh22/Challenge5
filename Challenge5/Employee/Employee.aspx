<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Challenge5.Employee.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="Employee_Id" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowUpdating="Gridview1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelEdit" OnRowDeleting="Gridview1_RowDeleting">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <input type="checkbox" runat="server" name="ch" id="ch" value='<%#Eval("Employee_Id")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="name" HeaderText="Employee Name" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                            <asp:BoundField DataField="phone" HeaderText="Phone" />
                            <asp:BoundField DataField="age" HeaderText="Age" />

                            <asp:CommandField ShowEditButton="True" HeaderText="Edit"  />
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" />

                            <asp:HyperLinkField HeaderText="ViewMore" Text="Go" DataNavigateUrlFields="Employee_Id" DataNavigateUrlFormatString="test.aspx?Employee_Id={0}"/>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button1" runat="server" Text="Delete All" OnClick="Button1_Click" />
                    </td>
                </tr>
        </table>
        </div>
    </form>
</body>
</html>
