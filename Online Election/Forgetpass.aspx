<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgetpass.aspx.cs" Inherits="Forgetpass" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section id="contact-page">
        <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Email </label>
                               <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                             </div>
                        <div class="form-group">
                             <asp:Button ID="Button2" runat="server" Text="Send" class="btn btn-primary btn-sm" onclick="Button1_Click" ForeColor="White" />
                        </div>                    
                        <asp:Label ID="lbmsg" runat="server"></asp:Label>
                           </form>
                       </div>     
          </section>
</asp:Content>

