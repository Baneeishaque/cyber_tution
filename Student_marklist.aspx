<%@ Page Language="C#" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="Student_marklist.aspx.cs" Inherits="Student_marklist" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 105px;
    }
    .style4
    {
        width: 105px;
        height: 24px;
    }
    .style5
    {
        height: 24px;
    }
        .style6
        {
            width: 105px;
            height: 21px;
        }
        .style7
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="abc">
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            </td>
        <td class="style6">
            Exam</td>
        <td class="style7">
            <asp:Label ID="lbl_exam" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style7">
            </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            Student</td>
        <td>
            <asp:Label ID="lbl_student" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
   
    <tr>
        <td class="style6">
            </td>
        <td class="style6">
            Mark</td>
        <td class="style7">
            <asp:Label ID="lbl_mark" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style7">
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            Passmark</td>
        <td>
            <asp:Label ID="lbl_passmark" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            Date</td>
        <td>
            <asp:Label ID="lbl_date" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

