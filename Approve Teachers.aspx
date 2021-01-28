<%@ Page Language="C#" MasterPageFile="~/MasterPageHomeAdmin.master" AutoEventWireup="true" CodeFile="Approve Teachers.aspx.cs" Inherits="Approve_Teachers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-size :12px;
        }
        .style2
        {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Registered Teachers"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Width="138px">
                </asp:DropDownList>
            </td>
        </tr>
       
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                    <asp:Button ID="Button2" runat="server" Text="Approve"  CssClass="btnRegister1" onclick="Button2_Click" 
                        />
                    &nbsp;&nbsp; <asp:Label ID="Labelerror" runat="server" ForeColor="#FFFF99"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

