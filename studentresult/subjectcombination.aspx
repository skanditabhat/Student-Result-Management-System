<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="subjectcombination.aspx.cs" Inherits="subjectcombination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">

    <table style="width: 100%;">
        <tr>
            <td align="center" colspan="2" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: bold; color: #0000FF; text-decoration: underline; font-style: normal;">
                Add Subject Combination</td>
        </tr>
        <tr>
            <td style="width: 477px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000; width: 477px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Text="Select Class:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"  Width="180px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 477px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #000000; font-weight: bold; width: 477px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Text="Subject:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 477px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 477px">
                &nbsp;</td>
            <td>
                <asp:Button ID="add" runat="server" BackColor="#00CC00" Font-Bold="True" 
                    ForeColor="White" Text="ADD" onclick="add_Click" 
                    CssClass="alert-success" />
            </td>
        </tr>
    </table>

</form>
</asp:Content>

