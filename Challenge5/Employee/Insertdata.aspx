<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insertdata.aspx.cs" Inherits="Challenge5.Employee.Insertdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1{
            height: 230px;
            width: 493px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table align="center" class="auto-style1">
                <tr>
                    <td colspan="2">Employee Details</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td>
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Text="InsertData2tier" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
