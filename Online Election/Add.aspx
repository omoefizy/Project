<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pull-left">
           <img class="img-responsive" src="images/slider/adm.png">
            </div>    
      <div>
        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#000099" 
            Text="New Election " Font-Underline="False" Font-Bold="True" Font-Names="Monotype Corsiva"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Election ID  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Election Topic  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="No. Of Candidate  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="24px" 
            Width="45px">
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Name Of Candidate 1  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
&nbsp;
        <asp:DropDownList ID="TextBox2" runat="server" Height="24px" Width="125px">
            <asp:ListItem>--Select--</asp:ListItem>
          
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Name Of Candidate 2  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
&nbsp;
        <asp:DropDownList ID="TextBox3" runat="server" Height="24px" Width="125px">
        <asp:ListItem>--Select--</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Name Of Candidate 3  :-" 
            Visible="False" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
&nbsp;
        <asp:DropDownList ID="TextBox4" runat="server" Height="24px" Width="125px" 
            Visible="False">
            <asp:ListItem>--Select--</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Name Of Candidate 4  :-" 
            Visible="False" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
&nbsp;
        <asp:DropDownList ID="TextBox5" runat="server" Height="24px" Width="125px" 
            Visible="False">
            <asp:ListItem>--Select--</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="117px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="End Date  :-" ForeColor="Blue" Font-Bold="True" Font-Names="Lucida Sans Unicode"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox7" type="date" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Font-Size="Small" ForeColor="Red" Text="yyyy/MM/dd"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-sm" onclick="Button3_Click1" 
                Text="Submit" ForeColor="White" />
        </asp:Panel>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    </div
</asp:Content>
