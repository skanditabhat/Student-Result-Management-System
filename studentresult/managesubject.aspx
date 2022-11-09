<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="managesubject.aspx.cs" Inherits="managesubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <p>
&nbsp;</p>
    <style type="text/css">
    .style1
{
    width:100%;
    background-color:pink;
}
.style2
{
   width:100%;
    background-color:pink; 
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    
   
    
    <table class="style1">
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    Text="Update &amp; Delete Subject Record" Font-Bold="True" 
                    Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
        <td>
        &nbsp;</td>
         <td>
        &nbsp;</td></tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" Width="455px" 
                    AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    EmptyDataText="Record Not Found...Try again" ForeColor="Black" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
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

                <br />

            </td>
           <td>
               <asp:Panel ID="Panel1" runat="server">
                   <table class="style2" >
                       <tr>
                           <td>
                               <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Subject ID" 
                                   Font-Bold="True"></asp:Label>
                           </td>
                           <td>
                               <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                           </td>
                       </tr>
                       <tr>
        <td>
        &nbsp;</td>
         <td>
        &nbsp;</td></tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Subject Name" 
                                   Font-Bold="True"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
        <td>
        &nbsp;</td>
         <td>
        &nbsp;</td></tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Subject Code" 
                                   Font-Bold="True"></asp:Label>
                           </td>
                           <td>
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
        <td>
        &nbsp;</td>
         <td>
        &nbsp;</td></tr>
                       <tr>
                           <td>
                               <asp:Button ID="Button3" runat="server" BackColor="#00CC00" ForeColor="Black" 
                                   Text="UPDATE" onclick="Button3_Click" Font-Bold="True" />
                               &nbsp;&nbsp;
                               <asp:Button ID="Button4" runat="server" BackColor="Red" ForeColor="Black" 
                                   Text="DELETE" onclick="Button4_Click" Font-Bold="True" />
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                   </table>

               </asp:Panel>
                
              &nbsp;</td>
        </tr>
       
    </table>
    
   
    
    </form>
</asp:Content>

