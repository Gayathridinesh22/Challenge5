<%@ Page Title="" Language="C#" MasterPageFile="~/SampleProject/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Challenge5.SampleProject.Guest.login" %>
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
            <td colspan="2">Login</td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Login"  />
            </td>
         </tr>
    </table>
    </form>
</asp:Content>
