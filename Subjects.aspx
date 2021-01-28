<%@ Page Language="C#" MasterPageFile="~/MasterPageHomeAdmin.master" AutoEventWireup="true" CodeFile="Subjects.aspx.cs" Inherits="Subjects" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_sub" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_sub" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Syllabus"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_syll" runat="server" Height="65px" TextMode="MultiLine" 
                        Width="257px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt_syll" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                    <asp:Button ID="Button2" runat="server" Text="Save"  CssClass="btnRegister1" 
                        onclick="Button2_Click" />
                    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Update"  
                        CssClass="btnRegister1" onclick="Button1_Click"/>
                    <asp:Label ID="Labelerror" runat="server" ForeColor="#FFFF99"></asp:Label>
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
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AlternatingRowStyle-CssClass="alt" CssClass="mGrid" GridLines="None" 
                    onpageindexchanging="GridView1_PageIndexChanging" 
                   onrowdeleting="GridView1_RowDeleting" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                   
                    PagerStyle-CssClass="pgr" Width="476px">
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="Style/select1.jpg" 
                            ShowSelectButton="True" />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="Style/del2.jpg" 
                            ShowDeleteButton="True" />
                    </Columns>
                    <PagerStyle CssClass="pgr" />
                    <AlternatingRowStyle CssClass="alt" />
                </asp:GridView></td>
            </tr>
    </table>
    
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

