<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addstudent.aspx.cs" Inherits="addstudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

    <table style="width: 100%; background-color:">
        <tr>
            <td align="center"  colspan="2" 
                
                
                style="font-family: 'Times New Roman', Times, serif; font-size: xx-large;  text-decoration: underline; color: #0000FF; font-weight: bold;">
                Add Student</td>
        </tr>
         <tr>
            <td style="width: 563px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 563px">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Roll No" 
                    Height="22px"></asp:Label>
            </td>
            <td>
                 <asp:TextBox runat="server" ID="txtroll" placeholder="Enter Rollno" 
                     CssClass="form-control" Height="26px"/>
            </td>
        </tr>
        <tr>
            <td style="width: 563px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 24px; width: 563px;">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Student Name"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox runat="server" ID="txtname" placeholder="Enter Name" 
                    CssClass="form-control" Height="25px"/>
                
            </td>
          
        </tr>
        <tr>
            <td style="width: 563px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 563px">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="124px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 563px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 563px">
                <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="DOB"></asp:Label>
            </td>
            <td>
           <asp:TextBox runat="server" ID="txtdate" placeholder="Date"   
                    CssClass="form-control" Height="24px"/>
                
            </td>
        </tr>
        <tr>
            <td style="width: 563px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 563px">
                <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Class"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="124px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 563px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 563px">
                &nbsp;</td>
            <td>
                <asp:Button ID="submit" runat="server" BackColor="Yellow" ForeColor="Red" 
                    Text="SUBMIT" Width="86px" onclick="submit_Click" />
            </td>
        </tr>
         <tr>
            <td style="width: 563px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</form>

</asp:Content>

