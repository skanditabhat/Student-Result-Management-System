<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentresult1.aspx.cs" Inherits="studentresult1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 51px;
        }
        .style2
        {
            width: 100%;
            border-collapse: collapse;
        }
        .style3
        {
            height: 28px;
        }
        .style5
        {
            height: 28px;
            width: 651px;
        }
        .style6
        {
        }
        .style7
        {
            height: 25px;
        }
        .style8
        {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
    <div >
        &nbsp;<br/>
        
        <table cellpadding="1" class="style1" 
            style="background-position: center top; background-color: #C0C0C0;">
             <tr>
                <td class="style6" align="center" bgcolor="Yellow" colspan="2" 
                     style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-style: italic; font-weight: bold; color: #FF0000">
        SMS SCHOOL BRAMHAVAR<br />
                    Results</td>
            </tr>
        
            <tr>
                <td align="left" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; color: #000000" 
                    class="style7">
                    Student Roll 
                    No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Label ID="lblroll" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style7">
                    </td>
            </tr>
            <tr>
                <td align="left"
                style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; color: #000000">
                    Student Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left"
                style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; color: #000000">
                    Student Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblclass" runat="server" Text="Label"></asp:Label></td>
               
                <td>
                    &nbsp;</td>
            </tr>
            
        </table>

        <table class="style2">
            <tr>
                <td bgcolor="#000099" class="style5" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: italic; color: #FFCC00">
                    Subjects</td>
                <td bgcolor="#000099" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: italic; color: #FFCC00">
                    Marks</td>
            </tr>
            <tr>
                <td align="left" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #000000" 
                    class="style6">
                   English:<br />
                </td>
                <td>
                    <asp:Label ID="lbleng" runat="server" Text="Label" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #000000" 
                    class="style6">
                    Kannada:<br />
                </td>
                <td>
                    <asp:Label ID="lblkan" runat="server" Text="Label" Font-Bold="True" 
                        Font-Size="Large"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #000000" 
                    class="style6">
                    EVS:<br />
                </td>
                <td>
                    <asp:Label ID="lblevs" runat="server" Text="Label" Font-Bold="True" 
                        Font-Size="Large"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #000000" 
                    class="style6">
                    Mathemetics:<br />
                </td>
                <td>
                    <asp:Label ID="lblmath" runat="server" Text="Label" Font-Bold="True" 
                        Font-Size="Large"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #000000" 
                    class="style6">
                    GK:<br />
                </td>
                <td>
                    <asp:Label ID="lblgk" runat="server" Text="Label" Font-Bold="True" 
                        Font-Size="Large"></asp:Label></td>
            </tr>
            <tr>
                <td bgcolor="#000099" class="style6">
                    &nbsp;</td>
                <td bgcolor="#000099">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: green" 
                    class="style8">
                    Total Marks:<br />
                </td>
                <td class="style8">
                   
                    <asp:Label ID="lbltotal" runat="server" Text="Label" ForeColor="#33CC33" 
                        Font-Bold="True" Font-Size="Large"></asp:Label>
                
                &nbsp;out of 500</td>
            </tr>
            <tr>
                <td align="left" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: green" 
                    class="style6">
                    Percentage:<br />
                </td>
                <td>
                    <asp:Label ID="lblperc" runat="server" Text="Label" ForeColor="#33CC33" 
                        Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#CCFF33" ForeColor="#FF3300" 
            onclick="Button1_Click" style="margin-left: 19px" Text="Check another result" 
            Width="132px" />
        <br />

        <br />
    
    </div>
    </form>
</body>
</html>
