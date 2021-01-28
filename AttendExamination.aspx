<%@ Page Language="C#" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="AttendExamination.aspx.cs" Inherits="Examination" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 168px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="ExamName"></asp:Label>
            </td>
        <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Width="138px">
                </asp:DropDownList>
                    <asp:Label ID="Labelerror" runat="server" ForeColor="#FFFF99"></asp:Label>
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
               <asp:Button ID="Button2" runat="server" Text="Continue"  CssClass="btnRegister1" 
                        onclick="Button2_Click" />
                    </td>
    </tr>
</table>
</asp:Content>

