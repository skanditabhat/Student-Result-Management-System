<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepasswords.aspx.cs" Inherits="changepasswords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table cellpadding="4" cellspacing="4" 
        style="width: 100%; background-color:">
        <tr>
            <td align="center" colspan="2" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: bold; font-style: normal; color: #000000; text-decoration: underline;">
                Change Password</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: normal; color: #FF0000">
                Current Password:</td>
            <td class="style6">
                <asp:TextBox runat="server" ID="txtpass" placeholder="current password" 
                    CssClass="form-control" Height="25px" Width="165px" TextMode="Password"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #008000">
                New Password:</td>
            <td>
                <asp:TextBox ID="txtnpass" runat="server" placeholder="new password" 
                    CssClass="form-control" Height="25px" Width="165px" TextMode="Password"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #008000">
                Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtcpass" runat="server" placeholder="confirm password" 
                    CssClass="form-control" TextMode="Password" Height="25px" Width="165px"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" BackColor="#CCFF33" BorderColor="Red" 
                    ForeColor="#006600" Text="UPDATE" onclick="Button3_Click" />
            </td>
        </tr>
    </table>

    </form>

</asp:Content>

