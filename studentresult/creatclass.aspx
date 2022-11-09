<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="creatclass.aspx.cs" Inherits="creatclass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<p>
    <Table style="width: 100%; ">
        <tr>
            <td colspan="2" align="center" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: bold; color: Blue; text-decoration: underline; background-color:; font-style: normal;">
                CREATE CLASS</td>
        </tr>
        <tr>
            <td style="width: 473px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000; width: 473px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Text="Class name"></asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtcls"  CssClass="form-control" Height="23px"/>
            </td>
        </tr>
        <tr>
            <td style="width: 473px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; color: #000000; width: 473px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="False" 
                    Text="Class Name in Numeric"></asp:Label>
            </td>
            <td>
                 <asp:TextBox runat="server" ID="txtnamenum" CssClass="form-control" 
                     Height="22px"/>
            </td>
        </tr>
        <tr>
            <td style="width: 473px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #000000; font-weight: bold; height: 30px; width: 473px;">
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Text="Section"></asp:Label>
            </td>
            <td style="height: 30px">
                 <asp:TextBox runat="server" ID="txtsection"  CssClass="form-control" 
                     Height="21px"/>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 473px;">
                </td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 473px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit"  
                    BackColor="#006600" ForeColor="White" CssClass="alert-success" 
                    Font-Bold="True" Height="34px" />
            </td>
        </tr>
    </table>
    <br />
    
</p>
</form>
</asp:Content>

