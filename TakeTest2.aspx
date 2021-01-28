<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TakeTest2.aspx.cs" Inherits="TakeTest2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Exam</title>
<meta name="keywords" content="Green, Board, theme, web design, free template, website templates, CSS, HTML" />
<meta name="description" content="Green Board Theme is a free website template provided by templatemo.com" />
<link href="templatemo_style1.css" rel="stylesheet" type="text/css" />
<link href="coda-slider.css" rel="stylesheet" type="text/css" media="screen" title="no title" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>

        <style type="text/css">
            .style1
            {
                width: 100%;
            }
            .style2
            {
            }
            .style3
            {
                width: 295px;
            }
            .style4
            {
                width: 118px;
            }
            .style8
            {
                height: 35px;
            }
            .style9
            {
                width: 295px;
                height: 35px;
            }
        </style>
<script type="text/javascript">

               function myTimer(startVal,interval,outputId, dataField){
                          
                           this.value = startVal;
                           this.OutputCntrl = document.getElementById(outputId);
                           this.currentTimeOut = null;
                           this.interval = interval;
                           this.stopped=false;
                           this.data = null;
                           
                           var formEls = document.form1.elements;
                           if(dataField)
                           {
                                for(var i=0; i < formEls.length -1; i++)
                                {
                                    if(formEls[i].name == dataField)
                                    {
                                        this.data = formEls[i];
                                        i = formEls.length + 1;
                                    }                          
                                }
                           }

                    myTimer.prototype.go = function ()
                    {
                           if(this.value > 0 && this.stopped == false)
                            {
                                this.value = (this.value - this.interval);
                                    if(this.data)
                                    {
                                        this.data.value = this.value;
                                    }
                                var current = this.value;
                                this.OutputCntrl.innerHTML = this.Hours(current) + ':' + this.Minutes(current) + ':' +  this.Seconds(current);
                                this.currentTimeOut = setTimeout("Timer.go()",this.interval);
                            }
                            else
                            {
                            alert('Time Out!');
                            window.location="Logout.aspx";
                            
                            }
                            
                        

                    }
                    myTimer.prototype.stop = function (){
                        this.stopped = true;
                        if(this.currentTimeOut != null){
                            clearTimeout(this.currentTimeout);
                        }  
                    }
                    myTimer.prototype.Hours = function(value){
                        return Math.floor(value/3600000); 
                    }
                    myTimer.prototype.Minutes = function(value){
                        return Math.floor((value - (this.Hours(value)*3600000))/60000);
                    } 
                    myTimer.prototype.Seconds = function(value){
                        var hoursMillSecs = (this.Hours(value)*3600000)
                        var minutesMillSecs = (this.Minutes(value)*60000)
                        var total = (hoursMillSecs + minutesMillSecs)
                        var ans = Math.floor(((this.value - total)%60000)/1000);

                        if(ans < 10)
                            return "0" + ans;
                         
                        return ans;
                    }  
               }           



    </script>
</head>
<body>
	
    <div id="slider">
    	
        <div id="header">
        	<div id="sitetitle" >
	        	<h1 >Question Paper</h1>
	        	
            </div>
            &nbsp;
        </div>
        
        <div id="content">
        
            <div class="scroll">
                <div class="scrollContainer">
                
                   
                
                    <div class="panel" id="contactus">
                     <form id="form1" runat="server">
    
   
   

                            <table class="style1">
                                <tr>
                                    <td class="style8">
                                        </td>
                                    <td class="style9">&nbsp;</td>
                                    <td id="fla" colspan="2">
                                    
                                       <asp:Label ID="lblTimerCount" runat="server" Height="5px" Width="232px" Font-Size="18px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style4">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="18px" Text="Question :"></asp:Label>
                                    </td>
                                    <td>
                <asp:Label ID="Question" runat="server" Text="N of T" Width="52px" style="margin-left: 0px" 
                                            Font-Size="18px"></asp:Label>
                                    </td>
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
                                    <td class="style2" colspan="4">
                                        <asp:Label ID="Questionlbl" runat="server" Height="66px" Text="Label" Font-Size="18px" Width="721px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="style2" colspan="4">
                                        <asp:RadioButtonList ID="rbtnAns" Font-Size="18px" runat="server">
                </asp:RadioButtonList>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbtnAns"
                    ErrorMessage="Choose An Answer!" Font-Bold="True" ValidationGroup="Ans" Width="138px"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                  <td style="width: 100px; height: 12px;">
                <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click" Text="Skip" Width="55px" /></td>
            <td style="width: 100px; height: 12px;">
                <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Next" Width="68px" ValidationGroup="Ans" /></td>
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
   
   

</form>   
                	</div>
                    
                </div>
            </div>
            
            <!-- end of scroll -->
        
        </div>
        
        <div id="menu">
            <ul class="navigation">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li><a href="#contactus">Contact<span  class="ui_icon contactus"></span></a></li>
            </ul>
        </div>
        
        <div id="footer">
        
        </div>
    
    </div> <!-- end of slider -->

</body>
</html>
