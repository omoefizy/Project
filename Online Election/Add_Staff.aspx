<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Add_Staff.aspx.cs" Inherits="Add_Staff" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="80%">
<tr><td colspan="2"><br /></td></tr>
<tr><td colspan="2" align="center">
    <asp:Label ID="Label1" runat="server" Text="Add Staff Details" 
        Font-Size="XX-Large" Font-Underline="False" ForeColor="#000099" Font-Bold="True" Font-Names="Monotype Corsiva"></asp:Label></td></tr>
<tr><td colspan="2"><br /></td></tr>
<tr><td>
    <asp:Label ID="Label3" runat="server" Text="Name:-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
<tr><td colspan="2"><br /></td></tr>
<tr><td>
    <asp:Label ID="Label5" runat="server" Text="Department:-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
<tr><td colspan="2"><br /></td></tr>
<tr><td>
    <asp:Label ID="Label4" runat="server" Text="User Name:-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>
        <tr><td colspan="2"><br /></td></tr>
<tr><td>
    <asp:Label ID="Label6" runat="server" Text="Password:-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td></tr>

<tr><td colspan="2">
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <br /></td></tr>
<tr><td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-sm" onclick="Button1_Click" ForeColor="White" /></td></tr>
<tr><td colspan="2"><br /></td></tr>
</table>

</asp:Content>