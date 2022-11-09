<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="result1.aspx.cs" Inherits="result1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

    <table style="width: 100%">
        <tr>
            <td colspan="2" style="font-size: x-large; color: #800000; font-weight: bold">
                Add result for 1 to 3 class</td>
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
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
             </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
             </td>
        </tr>
    </table>
    <div>
        <asp:Panel ID="Panel1" runat="server">
        
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
                <td style="font-weight: bold; color: green">
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid" Height="24px"></asp:TextBox>
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
                    <asp:TextBox ID="txteng" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                    Kannada</td>
                <td>
                    <asp:TextBox ID="txtkan" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                    EVS</td>
                <td>
                    <asp:TextBox ID="txtevs" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                    Mathemetics</td>
                <td>
                    <asp:TextBox ID="txtmath" runat="server" BorderColor="#FF6699" 
                        BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #000000">
                    G.K</td>
                <td>
                    <asp:TextBox ID="txtgk" runat="server" BorderColor="#FF6699" 
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
                        Text="Add Total" onclick="Button3_Click" />
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
                    <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="#FF0066" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#990033" 
                        NavigateUrl="~/addresult.aspx">&lt;---</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="submit" runat="server" Text="SUBMIT" BackColor="#CCFF33" 
                        Font-Bold="True" ForeColor="Red" onclick="submit_Click" /></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
    </div>

    </form>

</asp:Content>

