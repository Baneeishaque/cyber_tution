<%@ Page Language="C#" MasterPageFile="~/MasteRegistration.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="StudentRegistration" Title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
   
    <style type="text/css">
        .style2
        {
            width: 141px;
        }
        .style3
        {
            width: 235px;
        }
        .style4
        {
            width: 99px;
        }
        .style5
        {
            width: 240px;
        }
    </style>
   
     
    <table class="gridtable">
        <tr>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem Selected="True">Student</asp:ListItem>
                </asp:RadioButtonList>
              
            </td>
          </tr>
    </table>
     <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
         <asp:View ID="View1" runat="server">
         
          <table class="gridtable">
    <tr>
        <td class="style2">
            <asp:Label ID="Label155" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="txt_name" runat="server" Width="223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txt_name" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="txt_address" runat="server" Width="223px"></asp:TextBox>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Mobile"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="txt_mobile" runat="server" Width="223px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txt_mobile" ErrorMessage="*" 
                ValidationExpression="^[0-9]{10,11}"></asp:RegularExpressionValidator>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label3" runat="server" Text="e mail"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="txt_email" runat="server" Width="223px" 
                AutoCompleteType="Disabled"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txt_email" ErrorMessage="*" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label4" runat="server" Text="Qualification"></asp:Label>
        </td>
        <td class="style3">
            <asp:DropDownList ID="dropdown_quali" runat="server" Width="223px">
                <asp:ListItem>BSc</asp:ListItem>
                <asp:ListItem>MSc</asp:ListItem>
                <asp:ListItem>BTech</asp:ListItem>
                <asp:ListItem>MTech</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="txt_uname" runat="server" Width="223px" AutoPostBack="True" 
                ontextchanged="txt_uname_TextChanged"></asp:TextBox>
            
            
        </td>
        <td class="style4">
            <asp:Image ID="imgUser" runat="server" Visible="false" />
            <asp:Label ID="lblUser" runat="server" Font-Size="7pt"></asp:Label>
        </td>
    </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label156" runat="server" Text="Password"></asp:Label>
                  </td>
                  <td class="style3">
                      <asp:TextBox ID="txt_pass" runat="server" Width="223px" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                          ControlToValidate="txt_pass" ErrorMessage="*"></asp:RequiredFieldValidator>
                  </td>
                  <td class="style4">
                      &nbsp;</td>
              </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
        </td>
        <td class="style3">
            <asp:RadioButtonList ID="rdb_gender" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Image ID="Image1" runat="server" BorderStyle="None" Height="180px" 
                ImageUrl="~/images/noimage.jpg" Width="150px" />
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label7" runat="server" Text="Profile Photo"></asp:Label>
        </td>
        <td class="style3">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="216px" 
                onunload="FileUpload1_Unload" />
            
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
            
            
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label160" runat="server" Text="Subject"></asp:Label>
        </td>
        <td class="style3">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="138px">
            </asp:DropDownList>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
   
             
              <tr>
                  <td class="style2">
                      &nbsp;</td>
                  <td class="style3">
                      <asp:Button ID="btn_Save" runat="server" CssClass="btnRegister1" 
                          onclick="btn_Save_Click" Text="Register Me" />
                      <asp:Label ID="LabelError" runat="server" ForeColor="#FF3300"></asp:Label>
                  </td>
                  <td class="style4">
                      &nbsp;</td>
              </tr>
</table>
         </asp:View>
          <asp:View ID="View2" runat="server">
           <table class="gridtable">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_name1" runat="server" Width="223px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txt_name1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_address1" runat="server" Width="223px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txt_address1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label10" runat="server" Text="Mobile No"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_mob1" runat="server" Width="223px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txt_mob1" ErrorMessage="*" 
                        ValidationExpression="^[0-9]{10,11}"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_email1" runat="server" Width="223px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txt_email1" ErrorMessage="*" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label12" runat="server" Text="Qualification"></asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="dropdown_quali1" runat="server" 
                        AppendDataBoundItems="True" Width="223px">
                        <asp:ListItem>BSc</asp:ListItem>
                        <asp:ListItem>MSc</asp:ListItem>
                        <asp:ListItem>BTech</asp:ListItem>
                        <asp:ListItem>MTech</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
               <tr>
                   <td class="style2">
                       <asp:Label ID="Label157" runat="server" Text="Experience(yrs)"></asp:Label>
                   </td>
                   <td class="style5">
                       <asp:TextBox ID="txt_exp" runat="server" Width="45px"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                           ControlToValidate="txt_exp" ErrorMessage="*" ValidationExpression="^[0-9]{1,2}"></asp:RegularExpressionValidator>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               
            <tr>
                <td class="style2">
                    <asp:Label ID="Label13" runat="server" Text="User name"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_uname1" runat="server" Width="223px" AutoPostBack="True" 
                        ontextchanged="txt_uname1_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Image ID="imgUser0" runat="server" Visible="false" />
                    <asp:Label ID="lblUser0" runat="server" Font-Size="7pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label14" runat="server" Text="Password"></asp:Label>
                    </td>
                <td class="style5">
                    <asp:TextBox ID="txt_pass1" runat="server" Width="221px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txt_pass1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
               <tr>
                   <td class="style2">
            <asp:Label ID="Label16" runat="server" Text="Gender"></asp:Label>
        </td>
        <td class="style5">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style2">
                       &nbsp;</td>
                   <td class="style5">
                       <asp:Image ID="Image2" runat="server" BorderStyle="None" Height="180px" 
                           ImageUrl="~/images/noimage.jpg" Width="150px" />
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style2">
                       &nbsp;</td>
                   <td class="style5">
                       &nbsp;</td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style2">
                       <asp:Label ID="Label159" runat="server" Text="Profile Photo"></asp:Label>
                   </td>
                   <td class="style5">
                       <asp:FileUpload ID="FileUpload2" runat="server" onunload="FileUpload1_Unload" 
                           Width="216px" />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                           ControlToValidate="FileUpload2" ErrorMessage="*"></asp:RequiredFieldValidator>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style2">
                       &nbsp;</td>
                   <td class="style5">
                       <asp:Button ID="Button1" runat="server" CssClass="btnRegister1" 
                           onclick="Button1_Click" Text="Save" />
                       <asp:Label ID="Labelerror1" runat="server" ForeColor="#FF3300"></asp:Label>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
</table>
         </asp:View>
                </asp:MultiView>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    











































    </asp:Content>

