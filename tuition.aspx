<%@ Page Language="C#" validateRequest="false"  MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="tuition.aspx.cs" Inherits="tuition" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>

   #frame { zoom: 0.70; -moz-transform: scale(0.70); -moz-transform-origin: 0 0; }


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><table>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Width="138px">
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Files"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" class="multi" onclick="Button1_Click1"/>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    CssClass="btnRegister1" Text="Upload" />
                    
            </td>
        </tr>
         <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                
                    <asp:Label ID="Labelerror" runat="server" ForeColor="#FFFF99"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

