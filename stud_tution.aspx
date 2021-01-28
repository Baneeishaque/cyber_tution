<%@ Page Language="C#"  validateRequest="false" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="stud_tution.aspx.cs" Inherits="stud_tution" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

   #frame { zoom: 0.70; -moz-transform: scale(0.70); -moz-transform-origin: 0 0; }


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style1">
           
            
            
           
          
            <tr>
                
                <td>
                    
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AlternatingRowStyle-CssClass="alt" CssClass="mGrid" GridLines="None" 
                    onpageindexchanging="GridView1_PageIndexChanging" 
                  
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                   
                    PagerStyle-CssClass="pgr" Width="476px">
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="Style/select1.jpg" 
                            ShowSelectButton="True" />
                       
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
        </style>
</asp:Content>

