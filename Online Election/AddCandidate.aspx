<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddCandidate.aspx.cs" Inherits="AddCandidate" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Body" runat="server">
   
     <div style="width:100%">

        <table width="80%">
            <tr>
                <td colspan="2" align="center">

    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="False" 
        Text="Add Candidate" ForeColor="Blue" Font-Bold="True" Font-Names="Monotype Corsiva"></asp:Label>

                </td>
            </tr>
            <tr><td colspan="2"><br /></td></tr>
   <tr><td align="left">  <asp:Label ID="Label3" runat="server" Text="Name  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td align="left">    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
  
   <tr><td colspan="2"><br /></td></tr>
  <tr><td align="left">  <asp:Label ID="Label4" runat="server" Text="Address  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td align="left"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
  
   <tr><td colspan="2"><br /></td></tr>

    <tr><td align="left"><asp:Label ID="Label5" runat="server" Text="Mobile No  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
</td><td align="left"> <asp:TextBox ID="TextBox3"  runat="server"></asp:TextBox>  
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Invalid Mobile No" 
        ValidationExpression="^[0-9]*$" Font-Size="Small" ForeColor="Red"></asp:RegularExpressionValidator>
        </td></tr>
<tr><td colspan="2"><br /></td></tr>

    <tr><td align="left"><asp:Label ID="Label11" runat="server" Text="Descption  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
</td><td align="left"> <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td></tr>

    <tr><td colspan="2"><br /></td></tr>

    <tr><td align="left"> <asp:Label ID="Label6" runat="server" Text="Photo  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td align="left"><asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#000099" /></td></tr>

     <tr><td colspan="2"><br /></td></tr>
      <tr><td align="left"></td><td align="left"><asp:Image ID="Image1" runat="server" Height="115px" Width="115px" /> <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" ForeColor="#000099" /></td></tr>
         <tr><td colspan="2"><br /></td></tr>

    <tr><td align="left"><asp:Label ID="Label7" runat="server" Text="School  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td align="left">
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td></tr>
                 <tr><td colspan="2"><br /></td></tr>
    <tr><td align="left"><asp:Label ID="Label1" runat="server" Text="Department  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td align="left">
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td></tr>
                 <tr><td colspan="2"><br /></td></tr>
    <tr><td align="left"><asp:Label ID="Label8" runat="server" Text="Mat_No  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td align="left">
        <asp:TextBox ID="TextBox10" type="Text" runat="server"></asp:TextBox>
        </td></tr>
                 <tr><td colspan="2"><br /></td></tr>
    <tr><td align="left"><asp:Label ID="Label9" runat="server" Text="Level  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td align="left">
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td></tr>
   
   <tr><td colspan="2"><br /></td></tr>
    <tr><td align="left"><asp:Label ID="Label10" runat="server" Text="Country  :-" ForeColor="#000099" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label></td><td align="left">
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td></tr>
   <tr><td colspan="2"><br /></td></tr>
    <tr><td colspan="2" align="center"><asp:Button ID="Button2" runat="server" class="btn btn-primary btn-sm" onclick="Button2_Click" Text="Submit" ForeColor="White" /></td></tr>
    
    
    </table>
</div>
</asp:Content>
