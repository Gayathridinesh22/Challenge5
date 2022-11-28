<%@ Page Title="" Language="C#" MasterPageFile="~/SampleProject/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="Challenge5.SampleProject.Guest.UserRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1{
            height:582px;
            width:560px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="2"><h2>Student Registration Form</h2></td>
        </tr>
        <tr>
            <td class="auto-style3">Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your email" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Phone</td>
            <td>
                <asp:TextBox ID="txtphn" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your Phone Number" ControlToValidate="txtphn" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphn" ErrorMessage="Please check your Number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td>
                <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">dob</td>
            <td>D
                <asp:DropDownList ID="ddlday" runat="server">
                </asp:DropDownList>
&nbsp;M<asp:DropDownList ID="ddlmonth" runat="server">
                </asp:DropDownList>
&nbsp;Y<asp:DropDownList ID="ddlyear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Username</td>
            <td>
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your Username" ControlToValidate="txtuname" ForeColor="Red"></asp:RequiredFieldValidator><br />

            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your Password" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Confirm Password</td>
            <td>
                <asp:TextBox ID="txtconfirmpswd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please confirm your Password" ControlToValidate="txtconfirmpswd" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords are not matching" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpswd" ForeColor="Red"></asp:CompareValidator><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"  />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
