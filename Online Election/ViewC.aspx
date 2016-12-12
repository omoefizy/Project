<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewC.aspx.cs" Inherits="ViewC" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

<table>
    <tr><td colspan="2"><br /></td></tr>
       <tr><td colspan="2" align="center"><asp:Label ID="Label2" runat="server" Text="Candidate Detail" Font-Size="X-Large" 
            Font-Underline="False" ForeColor="#000099" Font-Bold="True" Font-Names="Monotype Corsiva"></asp:Label></td></tr>
       <tr><td colspan="2"><br /></td></tr>
</table>
   
    <asp:Panel ID="Panel4" runat="server"  style="margin-bottom: 0px">
      
        <asp:Label ID="Label4" runat="server" Text="Name  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
        &nbsp;
        <asp:Label ID="Cname" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="115px" Width="115px" />
        <br />
        <br />
         <asp:Label ID="Label10" runat="server" Text="Description  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
        &nbsp;
        <asp:Label ID="Addr" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Mobile No  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
        &nbsp;
        <asp:Label ID="Mob" runat="server"></asp:Label>
        <br />
        <br />
       <asp:Label ID="Label6" runat="server" Text="Address  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
        &nbsp;
        <asp:Label ID="Desc" runat="server"></asp:Label>
        <br />
        <br />
                <asp:Label ID="Label1" runat="server" Text="School  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
        &nbsp;
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
                <asp:Label ID="Label5" runat="server" Text="Department  :-" Font-Bold="True" Font-Names="Lucida Sans Unicode" ForeColor="Blue"></asp:Label>
        &nbsp;
        <asp:Label ID="Label7" runat="server"></asp:Label>
         <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Level:-" Font-Bold="True" Font-Names="Lucida Sans Unicode" ForeColor="Blue"></asp:Label>
        &nbsp;
        <asp:Label ID="Label13" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Text="Mat_No :-" Font-Bold="True" Font-Names="Lucida Sans Unicode" ForeColor="Blue"></asp:Label>
        &nbsp;
        <asp:Label ID="Label15" runat="server"></asp:Label>
        <br />
        <br />
    </asp:Panel>
    <br />


</div>
</asp:Content>