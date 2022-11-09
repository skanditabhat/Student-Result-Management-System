<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Defaulttt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .style1
        {
            width: 569px;
        }
        .style2
        {
            width: 697px;
        }
        .style3
        {
            width: 360px;
        }
        .style4
        {
            width: 600px;
        }
        .style5
        {
            width: 700px;
        }
        .style6
        {
            width: 1216px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-position: 0px 0px; background-image: url('images/result4.jpg'); height: 534px; background-repeat: no-repeat; width: 1319px; background-attachment: inherit;" >
    <br />
    <br />
    <div >
         <table >
            <tr>
                <td class="style2" colspan="2" align="center" >
                  <h2 style="margin-left: 0px; font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; font-style: italic; font-variant: normal; text-transform: none; color: #800080;">  STUDENT RESULT MANAGEMENT</h2></td>
            </tr>
            <tr>
                <td class="style5" align="center" colspan="2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; color: #FF0000"  >
                    SMS SCHOOL BRAMHAVAR<br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td  style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; color: #FF0000;" class="style6" 
                    
                    >
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    Student result: 
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0033CC" 
                        NavigateUrl="~/studentlogin.aspx">Click Here</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style1" style="border-style: double" >
                
                    <table  > 
                        
                      
                        <tr>
                            <td colspan="2" align ="center" 
                                
                                style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; color: #00CC00">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Admin Login</td>
                        </tr>
                        <tr>
                            <td class="style4" >
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" 
                                
                                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000; font-style: normal" 
                                class="style4" >
                                user name&nbsp;:  </td>
                            <td class="style3">
                                 <asp:TextBox runat="server" ID="txtUserId" placeholder="Enter UserName" 
                                     CssClass="form-control" BackColor="Transparent"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" >
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" 
                                
                                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #000000" 
                                class="style4" >
                                password :</td>
                            <td class="style3">
                                  <asp:TextBox runat="server" ID="txtPassword" placeholder="Enter Password"  TextMode="Password" 
                    CssClass="form-control" BackColor="Transparent"/>
                               
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" >
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            <td class="style3">
                                
                                <asp:Button ID="login" runat="server" BackColor="#66FF33" Font-Bold="True" 
                                    ForeColor="White" Height="28px" onclick="login_Click" Text="LOG IN" 
                                    Width="71px" />
                                
                            </td>
                        </tr>
                       
                    </table>
&nbsp; 
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
        
           
                
            </tr>
        </table>
    
        </div>
    </div>
    </form>
</body>
</html>
