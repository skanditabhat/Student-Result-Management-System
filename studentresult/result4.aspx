<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="result4.aspx.cs" Inherits="result4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
   
    <table style="width: 100%" >
        <tr>
            <td colspan="2" style="font-size: x-large; color: #800000; font-weight: bold">
                Add result for 10 class</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: bold; color: #000000; text-decoration: underline">
                Select class</td>
            <td style="font-weight: bold; color: #000000; text-decoration: underline">
                Select Student name</td>
        </tr>

         <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
             </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
             </td>
        </tr>
    </table>
    <div>
        <table cellpadding="3" cellspacing="3" style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
            <tr>
                <td style="font-weight: bold; color: green;">
                    Roll No</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color:Green">
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: green">
                    Class</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                    English</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                    Kannada</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                   Hindi</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                    Mathemetics</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                   Social Science</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="font-weight: bold; color: #000000">
                    Science</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FF0000; font-weight: bold">
                    Total</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Add Total" />
                </td>
            </tr>
            <tr>
                <td style="color: #FF0000; font-weight: bold">
                    Percentage</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="#CCFF33" 
                        Font-Bold="True" ForeColor="Red" /></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>

    </form>

</asp:Content>

