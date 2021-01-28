<%@ Page Language="C#" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="Contact Admin.aspx.cs" Inherits="Contact_Admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
             font-size :12px;
        }
        .style2
        {
            width: 131px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxsub" runat="server" Width="406px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxmsg" runat="server" Height="139px" TextMode="MultiLine" 
                    Width="409px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                    <asp:Button ID="Button2" runat="server" Text="Send"  CssClass="btnRegister1" onclick="Button2_Click" 
                        />
                    <asp:Label ID="Labelerror" runat="server" ForeColor="#FFFF99"></asp:Label>
                    </td>
        </tr>
    </table>
</asp:Content>

