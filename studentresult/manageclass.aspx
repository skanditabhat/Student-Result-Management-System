<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manageclass.aspx.cs" Inherits="manageclass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div>
<center>
<h2 style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #FF0000"> Update and Delete Class Details</h2>

<hr />
<span><b> Enter Class Id:</b>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="search" ForeColor="Red" 
        onclick="Button1_Click" /></span>
<br />
<br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
        EmptyDataText="Record not found try again" EnableTheming="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="688px" 
        Height="65px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</center>

</div>
<br />
 <asp:Panel ID="Panel1" runat="server">
    
    <table bgcolor="#FF66FF" style="width: 100%">
        <tr>
            <td bgcolor="White" 
                
                
                style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #FF0000">
                Class id</td>
            <td bgcolor="White">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #000000; font-style: normal; font-size: large;">
                Class Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-style: normal; font-weight: bold; color: #000000; font-size: large;">
                Class Name in Numeric</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold; font-style: normal; color: #000000; font-size: large;">
                Section</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-style: normal; color: #000000; font-weight: bold; font-size: large;">
                Date</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Update" BackColor="#00CC00" 
                    Font-Bold="True" ForeColor="Black" onclick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Delete" BackColor="Red" 
                    Font-Bold="True" ForeColor="Black" onclick="Button4_Click" />
            </td>
        </tr>
    </table>
<br />
 </asp:Panel>

<div>
   
    
   

</div>
    </form>
</asp:Content>

