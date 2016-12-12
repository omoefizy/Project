<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Result.aspx.cs" Inherits="Result" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-6 wow fadeInDown">
    <div class="accordion">
         <div class="pull-left">
           <img class="img-responsive" src="images/slider/resu.png">
            </div>                
                        
         </div>
       </div> 

    <br />
     
    <asp:Label ID="Label3" runat="server" Text="Election ID  :-" ForeColor="#000099"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
    AutoPostBack="True" Height="22px" Width="133px">
        <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Result  :-" ForeColor="#000099"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />

</asp:Content>