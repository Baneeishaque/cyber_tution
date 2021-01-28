<%@ Page Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="teacher_profile.aspx.cs" Inherits="teacher_profile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 347px;
    }
    .style2
    {
        width: 360px;
    }
    .style3
    {
        width: 478px;
    }
    .style4
    {
        width: 610px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style3">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                      <div id="ProfilePage">
    <div id="LeftCol">
        <div id="Photo">
        
         <asp:Image ID="Imagephoto" runat="server" BorderStyle="None" Height="180px" 
                                        ImageUrl="~/images/noimage.jpg" Width="150px" 
                ImageAlign="Middle" />
        
        </div>
        <div id="PhotoOptions">
        </div>
    </div>

    <div id="Info">
        <p>
          <strong>Name:</strong>
            <asp:Label ID="Labelname" runat="server" Text="Name"></asp:Label>
           
            &nbsp;</p>
        <p>
            <strong>Address:</strong>
            <asp:Label ID="Labeladdress" runat="server" Text="Address"></asp:Label>
            &nbsp;</p>
        <p>
            <strong>User Name:</strong>
            <asp:Label ID="Labelusername" runat="server" Text="User Name"></asp:Label>
            &nbsp;</p>
       
        <p>
            <strong>Mob No:</strong>
            <asp:Label ID="Labelmob" runat="server" Text="Mob No"></asp:Label>
            &nbsp;</p>
       <p>
            <strong>Email:</strong>
            <asp:Label ID="Labelemail" runat="server" Text="Email"></asp:Label>
            &nbsp;</p>
       <p>
            <strong>Gender:</strong>
            <asp:Label ID="Labelgender" runat="server" Text="Gender"></asp:Label>
            &nbsp;</p>
       <p>
            <strong>Qualification:</strong>
            <asp:Label ID="Labelqualification" runat="server" Text="Qualification"></asp:Label>
            &nbsp;</p>
       <p>
         
          <asp:Button ID="btn_Edit" runat="server" CssClass="btnRegister1" Height="24px" 
           onclick="btn_Edit_Click" Text="Edit" Width="100px" />
                                
           &nbsp;</p>
<p>
          &nbsp;</p>

    </div>

    <!-- Needed because other elements inside ProfilePage have floats -->
    <div style="clear:both"></div>
    <p>
          &nbsp;</p>
          <p>
              &nbsp;</p>
</div>
                      
                      
                      
                      
                        
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="style1">
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_name" runat="server" Width="223px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label23" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_address" runat="server" Width="223px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_username" runat="server" Width="223px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label20" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_password" runat="server" Width="223px" AutoPostBack="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label4" runat="server" Text="Mobile No"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_mob" runat="server" Width="223px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_email" runat="server" Width="223px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rdb_gender" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Selected="True">Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label24" runat="server" Text="Qualification"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_qualificatn" runat="server" Width="223px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" BorderStyle="None" Height="180px" 
                                        ImageUrl="~/images/no_icon.jpg" Width="150px" />
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
                                    <asp:Label ID="Label7" runat="server" Text="Profile Photo"></asp:Label>
                                </td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="216px" />
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
                                   
                                    <asp:Button ID="btn_Save" runat="server" CssClass="btnRegister1" 
                                        onclick="btn_Save_Click" Text="Save" />
                                    &nbsp;
                                    <asp:Button ID="btn_Cancel" runat="server" CssClass="btnRegister1" 
                                        onclick="btn_Cancel_Click" Text="Cancel" />
                                    <asp:Label ID="LabelError" runat="server" ForeColor="#FFCC00"></asp:Label>
                                   
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

