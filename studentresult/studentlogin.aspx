<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentlogin.aspx.cs" Inherits="studentlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
<div  style="background-image: url('images/result7.jpg'); width: 1315px;" 
    height: 534px; background-repeat: no-repeat; width: 1319px; 
    background-attachment: inherit;">
    
    <div align="center" 
        
        
        
        
        
        style="font-family: &quot;Times New Roman&quot;, Times, serif; font-size: xx-large; font-weight: bold; font-style: italic; color: #FF0000; height: 518px; width: 1310px; background-repeat: no-repeat;">
    
        SMS SCHOOL BRAMHAVAR<br />
        <br />
        <table cellpadding="5" cellspacing="5" class="style1" >
            <tr>
                <td colspan="2" 
                    
                    style="st; font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; color: #008000;" 
                    align="center">
                    Exam Result is Out Now</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: oblique; color: #000080">
                    Enter student Roll No:</td>
                <td align="left">
                    <asp:TextBox ID="txtroll" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: oblique; color: #000080">
                    Select Class:</td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="0">select class</asp:ListItem>
                        <asp:ListItem Value="1">class 1 to 3</asp:ListItem>
                        <asp:ListItem Value="2">class 4 to 6</asp:ListItem>
                        <asp:ListItem Value="3">class 7 to 9</asp:ListItem>
                        <asp:ListItem Value="4">class 10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;
                    </td>
                <td align="left">
                    <asp:Button ID="Button1" runat="server" BackColor="Yellow" ForeColor="Red" 
                        Text="Check Result" Height="35px" onclick="Button1_Click" 
                        style="margin-top: 0px" Width="105px" Font-Bold="True" />
                </td>
                
            </tr>
            <tr>
                <td align="left">
                    <asp:HyperLink ID="HyperLink1" runat="server" BorderStyle="Groove" 
                        Font-Italic="False" Font-Size="Medium" Font-Underline="False" 
                        NavigateUrl="~/home.aspx">HOME</asp:HyperLink>
                </td>
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
        </div>
    </div>
    </form>
</body>
</html>
