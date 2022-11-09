<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manageresults.aspx.cs" Inherits="Manageresults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<table class="nav-justified">
    <tr>
        <td align="center" colspan="4" 
            
            style="padding: inherit; font-size: xx-large; color: #FF0000; text-decoration: underline; background-color:; font-style: normal; font-weight: bold; font-family: 'Times New Roman', Times, serif;" 
            bgcolor=>
            SELECT CLASS TO MANAGE RESULT</td>
    </tr>
    <tr>
        <td>
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button3" runat="server" BackColor="#FF9999" Font-Bold="True" 
                ForeColor="Black" Height="64px" Text="1 to 3 Class" Width="132px" 
                onclick="Button3_Click" CssClass="alert-info" />
        </td>
        <td>
            <asp:Button ID="Button4" runat="server" BackColor="#FF9999" Font-Bold="True" 
                ForeColor="Black" Height="64px" Text="4 to 6 Class" Width="132px" 
                onclick="Button4_Click" CssClass="alert-info" />
        </td>
        <td>
            <asp:Button ID="Button5" runat="server" BackColor="#FF9999" Font-Bold="True" 
                ForeColor="Black" Height="64px" Text="7 to 9 Class" Width="132px" 
                onclick="Button5_Click" CssClass="alert-info" />
        </td>
        <td>
            <asp:Button ID="Button6" runat="server" BackColor="#FF9999" Font-Bold="True" 
                ForeColor="Black" Height="64px" Text="10 Class" Width="132px" 
                onclick="Button6_Click" CssClass="alert-info" />
        </td>
    </tr>
</table>
</form>
</asp:Content>

