<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="createsubject.aspx.cs" Inherits="createsubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
  
   
 
    <table style="width: 100%; ">
        <tr>
            <td align="center" colspan="2" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: bold; ; font-style: normal; text-decoration: underline; color: #0000FF;">
                CREATE SUBJECT</td>
        </tr>
        <tr>
            <td style="width: 486px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000; width: 486px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Text="Subject Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 486px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #000000; width: 486px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Text="Subject Code"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 486px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 486px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" BackColor="#00CC00" Font-Bold="True" 
                    ForeColor="White" Height="29px" onclick="Button3_Click" Text="ADD" 
                    Width="67px" />
            </td>
        </tr>
    </table>
  
   
 
 </form>
</asp:Content>

