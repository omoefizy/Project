<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-6 wow fadeInDown">
    <div class="accordion">
         <div class="pull-left">
           <img class="img-responsive" src="images/slider/ovs.png">
            </div>                
                        
         </div>
       </div> 
     <div>    
        <br />
         
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="False" 
            ForeColor="#000099" Text="Pending Election  " Font-Bold="True" Font-Names="Monotype Corsiva"></asp:Label>
         
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Election ID  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Enter" ForeColor="#000066" />
&nbsp;</div>
</asp:Content>
