<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" CodeBehind="~/Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-sm-6 wow fadeInDown">
    <div class="accordion">
         <div class="pull-left">
           <img class="img-responsive" src="images/slider/adminicon.png">
            </div>                
                        
         </div>
       </div> 
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Underline="False" 
            ForeColor="#000099" Text="Calculate Votes" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva"></asp:Label>
    
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Election ID  :-" ForeColor="Blue"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="27px" onclick="Button1_Click" 
            Text="OK" Width="68px" ForeColor="#000066" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" BackColor="Blue" ForeColor="White"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="587px" Visible="False" 
            Width="828px">
            &nbsp; &nbsp; &nbsp;<br />
            <table style="width: 70%;" >
                <tr style="border: 1px solid #DB7C1D;">
                    <td>
                    <asp:Image ID="Image1" runat="server" Height="114px" Width="105px" />
                    </td>
                    <td align="left" class="style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="Name  :-" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Mobile  :-" ForeColor="Blue"></asp:Label>&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Votes  :-" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="EV1" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                <td></td>
                </tr>
                <tr style="border: 1px solid #DB7C1D;">
                    <td>
                    <asp:Image ID="Image2" runat="server" Height="114px" Width="105px" />
                    </td>
                    <td align="left" class="style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Name  :-" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label15" runat="server" Text="Mobile  :-" ForeColor="Blue"></asp:Label>&nbsp;
                        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Votes  :-" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="EV2" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                <td></td>
                </tr>
                <tr style="border: 1px solid #DB7C1D;">
                    <td>
                    <asp:Image ID="Image3" runat="server" Height="114px" Width="105px" />
                    </td>
                    <td align="left" class="style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label19" runat="server" Text="Name  :-" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label21" runat="server" Text="Mobile  :-" ForeColor="Blue"></asp:Label>&nbsp;
                        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="Votes  :-" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="EV3" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                <td></td>
                </tr>
                <tr style="border: medium solid #DB7C1D;">
                    <td>
                    <asp:Image ID="Image4" runat="server" Height="114px" Width="105px" />
                    </td>
                    <td align="left" class="style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label25" runat="server" Text="Name  :-" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label27" runat="server" Text="Mobile  :-" ForeColor="Blue"></asp:Label>&nbsp;
                        <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:Label ID="Label29" runat="server" Font-Bold="True" Text="Votes  :-" ForeColor="Blue"></asp:Label>
                        &nbsp;
                        <asp:Label ID="EV4" runat="server" Font-Bold="True"></asp:Label>
                        
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label4" runat="server" Text="EC1 - " Visible="False"></asp:Label>
&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="EC2 - " Visible="False"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="EC3 - " Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label7" runat="server" Text="EC4 - " Visible="False"></asp:Label>
            <br />
        </asp:Panel>
    
        <br />
    
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 203px;
        }
    </style>
</asp:Content>
