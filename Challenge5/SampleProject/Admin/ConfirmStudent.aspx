<%@ Page Title="" Language="C#" MasterPageFile="~/SampleProject/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ConfirmStudent.aspx.cs" Inherits="Challenge5.SampleProject.Admin.ConfirmStudent" %>
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
          <asp:GridView ID="GridView1" runat="server" DataKeyNames="lid" AutoGenerateColumns="False" OnRowDeleting="Gridview1_RowDeleting"  >
                <Columns>
                     <asp:BoundField DataField="name" HeaderText="Name" />
                     <asp:BoundField DataField="Email" HeaderText="Email" />
                     <asp:BoundField DataField="phone" HeaderText="Phone" />
                     <asp:BoundField DataField="gender" HeaderText="Gender" />
                     <asp:BoundField DataField="dob" HeaderText="Dob" />
                
                    <asp:CommandField HeaderText="Status" ShowDeleteButton="True" DeleteText="confirm" />
                </Columns>
            </asp:GridView>
    </form>
</asp:Content>
