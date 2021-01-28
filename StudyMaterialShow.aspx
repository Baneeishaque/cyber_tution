<%@ Page Language="C#" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="StudyMaterialShow.aspx.cs" Inherits="StudyMaterialShow" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    
       <link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
<script type="text/javascript" src="Scripts/prototype.js"></script>
<script type="text/javascript" src="Scripts/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="Scripts/lightbox.js"></script>
    
    
    
    
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

