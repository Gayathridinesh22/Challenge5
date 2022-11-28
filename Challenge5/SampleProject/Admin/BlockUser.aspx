<%@ Page Title="" Language="C#" MasterPageFile="~/SampleProject/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BlockUser.aspx.cs" Inherits="Challenge5.SampleProject.Admin.BlockUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1{
            height:582px;
            width:560px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>User Confirmation</h2>     
    <form id="form1" runat="server">
          <asp:GridView ID="GridView1" runat="server" DataKeyNames="lid1" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting1" >
                <Columns>
                     <asp:BoundField DataField="name" HeaderText="name" />
                     <asp:BoundField DataField="email" HeaderText="email" />
                     <asp:BoundField DataField="phone" HeaderText="phone" />
                     <asp:BoundField DataField="gender" HeaderText="gender" />
                     <asp:BoundField DataField="dob" HeaderText="dob" />
                
                    <asp:CommandField HeaderText="Status" ShowDeleteButton="True" DeleteText="confirm" />
                </Columns>
            </asp:GridView>
    </form>
</asp:Content>
