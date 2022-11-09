<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manageresult1.aspx.cs" Inherits="manageresult1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p align="center" 
        style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: bold; font-style: normal; color: #FF0000">
        Update and Delete 1 to 3 Class Results<br />
       </p>
   
    <table style="width: 100%">
        <tr>
            <td style="width: 421px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 421px">
                <asp:GridView ID="GridView1" runat="server" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    AutoGenerateSelectButton="True" Width="222px" Height="171px" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                
                <table style="width: 100%">
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            Rollno:</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtrollno"  CssClass="form-control"/>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            Name:</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtname"  CssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            Class:</td>
                        <td>
                           <asp:TextBox runat="server" ID="txtclass"  CssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            English:</td>
                        <td>
                           <asp:TextBox runat="server" ID="txteng"  CssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            Kanada:</td>
                        <td>
                           <asp:TextBox runat="server" ID="txtkan"  CssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            EVS:</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtevs"  CssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            Maths:</td>
                        <td>
                           <asp:TextBox runat="server" ID="txtmath"  CssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            G.K:</td>
                        <td>
                           <asp:TextBox runat="server" ID="txtgk"  CssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            Total:</td>
                        <td>
                           <asp:TextBox runat="server" ID="txttotal"  CssClass="form-control"/>
                        </td>
                           
                    </tr>
                    <tr>
                        <td style="width: 426px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #000000;">
                            Percenatge:</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtperc"  CssClass="form-control"/></td>
                    </tr>
                     <tr>
            <td style="width: 421px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="UPDATE" onclick="Button1_Click" 
                    BackColor="Lime" Font-Bold="True" ForeColor="Black" Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="DELETE" BackColor="Red" 
                    Font-Bold="True" ForeColor="Black" onclick="Button2_Click" Width="81px" />
            </td>
        </tr>
                </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="width: 421px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
    </table>
    </form>
</asp:Content>

