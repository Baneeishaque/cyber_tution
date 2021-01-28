<%@ Page Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-size :12px;
        }
        .style2
        {
            width: 108px;
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
                <asp:TextBox ID="txt_exam" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_exam" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Width="138px">
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Pass Mark"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" Width="79px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="*" 
                    ValidationExpression="^[0-9]{1,2}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Max Mark"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmax" runat="server" Width="79px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtmax" ErrorMessage="*" 
                    ValidationExpression="^[0-9]{1,3}"></asp:RegularExpressionValidator>
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
                    <asp:Label ID="Labelerror" runat="server" ForeColor="#FFFF99"></asp:Label></td>
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
                </asp:GridView></td></td>
        </tr>
    </table>
</asp:Content>

