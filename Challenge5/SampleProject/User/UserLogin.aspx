<%@ Page Title="" Language="C#" MasterPageFile="~/SampleProject/User/User.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Challenge5.SampleProject.User.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1{
            height:582px;
            width:560px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" align="center">
        <div>
            <br />
            <h2>Profile Details</h2>
            <br />
            <asp:Label ID="Label1" runat="server" Text="User Name:" Font-Size="Medium"></asp:Label>
             <asp:Label ID="Label2" runat="server" Text="" Font-Size="Medium"></asp:Label><br />
             <asp:Label ID="Label3" runat="server" Text="Email ID:" Font-Size="Medium"></asp:Label>
             <asp:Label ID="Label4" runat="server" Text="" Font-Size="Medium"></asp:Label><br />
            <asp:Label ID="Label5" runat="server" Text="Contact No:" Font-Size="Medium"></asp:Label>
             <asp:Label ID="Label6" runat="server" Text="" Font-Size="Medium"></asp:Label><br />
             <asp:Label ID="Label7" runat="server" Text="Gender:" Font-Size="Medium"></asp:Label>
             <asp:Label ID="Label8" runat="server" Text="" Font-Size="Medium"></asp:Label><br />
            <asp:Label ID="Label9" runat="server" Text="dob:" Font-Size="Medium"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="" Font-Size="Medium"></asp:Label>
        </div>
    </form>
</asp:Content>
