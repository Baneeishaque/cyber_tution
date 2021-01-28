<%@ Page Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="Questions.aspx.cs" Inherits="Questions" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
             font-size :12px;
             color :White ;
        }
        .style2
        {
            width: 206px;
        }
        .style3
        {
            width: 206px;
            height: 21px;
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label2" runat="server" Text="Examination"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="165px">
                        </asp:DropDownList>
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
                        <asp:Button ID="Button2" runat="server" CssClass="btnRegister1" 
                            onclick="Button2_Click" Text="Edit" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
           
                
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label4" runat="server" Text="Question"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_qstion" runat="server" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txt_qstion" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label5" runat="server" Text="Answer1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txt_1" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label6" runat="server" Text="Answer2"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txt_2" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label7" runat="server" Text="Answer3"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txt_3" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label8" runat="server" Text="Answer4"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txt_4" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label9" runat="server" Text="Correct Answer"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="dropdwn_ans" runat="server" Width="50px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" CssClass="btnRegister1" 
                            onclick="Button3_Click" Text="Save" />
                        &nbsp; &nbsp; <asp:Label ID="Labelerror" runat="server" ForeColor="#FFFF99"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
             <tr>
                    <td class="style5">
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
        </asp:View>
    </asp:MultiView>
</asp:Content>

