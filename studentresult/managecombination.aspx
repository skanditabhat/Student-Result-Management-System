<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="managecombination.aspx.cs" Inherits="managecombination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    
    <table style="width: 100%; border: 1px solid #808080">
        <tr>
            <td align="center" colspan="2" 
                
                style="font-family: &quot;Times New Roman&quot;, Times, serif; font-size: xx-large; font-weight: bold; color: #FF0000; text-decoration: underline;">
                Delete Duplicate Data</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="419px">
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
            </td>
           
           
            <td>
             <asp:Panel ID="Panel1" runat="server">
                <table style="width: 100%" bgcolor="red">
                <tr>
                        <td style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #FF0000">
                            ID</td>
                        <td>
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
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000">
                            Class</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 22px; font-family: 'Times New Roman', Times, serif; font-size: large; color: #000000; font-weight: bold;">
                            Subject</td>
                        <td style="height: 22px">
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
            <td>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="Red" Font-Bold="True" 
                    ForeColor="Black" Text="DELETE" onclick="Button4_Click" />
                         </td>
            <td>
                &nbsp;</td>
        </tr>
                </table>
                 </asp:Panel>
            </td>
        </tr>
       
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    </form>

</asp:Content>

