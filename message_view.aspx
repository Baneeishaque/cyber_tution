<%@ Page Language="C#" MasterPageFile="~/MasterPageHomeAdmin.master" AutoEventWireup="true" CodeFile="message_view.aspx.cs" Inherits="message_view" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 51px;
        }
        .style3
        {
            width: 98px;
        }
        .style4
        {
            width: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" AutoPostBack="true" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
              
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                          <asp:DataList ID="DataList1" runat="server" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" Width="615px">
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("stud_name") %>'></asp:Label>
                                </td>
                                <td class="style4">
                                    <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("msg_sub") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label6" runat="server" Text="Message"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("msg") %>'></asp:Label>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                    </asp:View><asp:View ID="View2" runat="server">  <asp:DataList ID="DataList2" runat="server" 
                    Width="615px">
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("tea_name") %>'></asp:Label>
                                </td>
                                <td class="style4">
                                    <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("msg_sub") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label6" runat="server" Text="Message"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("msg") %>'></asp:Label>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                        </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

