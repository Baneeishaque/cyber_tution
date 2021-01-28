<%@ Page Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="StudyMaterials.aspx.cs" Inherits="StudyMaterials" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <script src="Scripts/jquery-1.3.2.js" type="text/javascript"></script>
        <script src="Scripts/jquery.MultiFile.js" type="text/javascript"></script>
        
        
        
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-size :12px;
        }
        .style2
        {
            width: 157px;
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
                    CssClass="btnRegister1" Text="Upload All" />
                    
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

