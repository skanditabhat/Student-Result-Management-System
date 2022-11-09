<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="managestudent.aspx.cs" Inherits="managestudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
    
   <div>
   <center>
       <h2 style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: bold; font-style: normal; color: #FF0000">Update and Delete Student Details</h2><br />

   <span style="font-weight: bold; color: #000000"> Enter Rollno:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
       <asp:Button ID="Search" runat="server" Text="Search" onclick="Search_Click" 
           Font-Bold="True" ForeColor="Red" />
   </span>
   <br />
   <br />
       <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
           onselectedindexchanged="GridView1_SelectedIndexChanged" Width="552px" 
           BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
           CellPadding="3" CellSpacing="2" EmptyDataText="Record Not Found Try again">
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
     <table style="width: 100%">
     <tr>
             <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #FF0000">
                 ID</td>
             <td>
                 <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
             <td style="font-size: large; font-weight: bold; font-style: normal; color: #000000; font-family: 'Times New Roman', Times, serif">
                 Rollno</td>
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
             <td style="font-size: large; font-weight: bold; font-style: normal; color: #000000; font-family: 'Times New Roman', Times, serif">
                 Student Name</td>
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
             <td style="font-size: large; font-weight: bold; font-style: normal; color: #000000; font-family: 'Times New Roman', Times, serif">
                 Gender</td>
             <td style="height: 22px">
                 <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
             <td style="font-size: large; font-weight: bold; font-style: normal; color: #000000; font-family: 'Times New Roman', Times, serif">
                 DOB</td>
             <td>
                 <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
             <td style="font-size: large; font-weight: bold; font-style: normal; color: #000000; font-family: 'Times New Roman', Times, serif">
                 Class</td>
             <td>
                 <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label1" runat="server"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Button ID="Update" runat="server" onclick="Update_Click" Text="Update" 
                     BackColor="#33CC33" Font-Bold="True" ForeColor="Black" />
             </td>
             <td>
                 <asp:Button ID="Delete0" runat="server" BackColor="Red" Font-Bold="True" 
                     ForeColor="Black" onclick="Delete_Click" Text="Delete" />
             </td>
         </tr>
     </table>



 </asp:Panel>

    </form>
</asp:Content>


