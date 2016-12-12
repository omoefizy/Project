<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vote.aspx.cs" Inherits="Vote" %>


<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 618px">
    
        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" 
            Font-Underline="False" ForeColor="#000099" Text="Cast Vote  "></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Topic" ForeColor="Blue"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" 
            oncheckedchanged="RadioButton1_CheckedChanged" ForeColor="Blue" AutoPostBack="True" />
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" ForeColor="Red">View Profile</asp:LinkButton>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" 
            oncheckedchanged="RadioButton2_CheckedChanged" ForeColor="Blue" AutoPostBack="True" />
        &nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" ForeColor="Red">View Profile</asp:LinkButton>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="47px">
            <asp:RadioButton ID="RadioButton3" runat="server" 
                oncheckedchanged="RadioButton3_CheckedChanged" ForeColor="Blue" AutoPostBack="True" />
            &nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" ForeColor="Red">View Profile</asp:LinkButton>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="46px">
            <asp:RadioButton ID="RadioButton4" runat="server" 
                oncheckedchanged="RadioButton4_CheckedChanged" ForeColor="Blue" AutoPostBack="True" />
            &nbsp;
            <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" ForeColor="Red">View Profile</asp:LinkButton>
        </asp:Panel>
        <asp:Button ID="Button3" runat="server" Text="Vote" onclick="Button3_Click" 
            style="height: 26px" ForeColor="#000066" />
    
    </div>
</asp:Content>