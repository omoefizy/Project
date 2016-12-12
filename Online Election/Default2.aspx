<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="col-sm-6 wow fadeInDown">
    <div class="accordion">
         <div class="pull-right">
           <img class="img-responsive" src="images/slider/login.png">
            </div>                
                        
         </div>
       </div> 
       
          <div class="container">
   
               <h2>Click to login</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Login</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
          <form class="form-horizontal">
  <div class="form-group form-group-md">
    <label class="control-label col-sm-2" for="UserID">UserID:</label>
    <div class="col-sm-6">
     <asp:TextBox ID="id" CssClass="form-control" runat="server" placeholder="Enter UserID" required="required"></asp:TextBox>
    </div>
  </div>
              <br />
  <div class="form-group form-group-md">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-6    "> 
        <asp:TextBox ID="pass" CssClass="form-control" runat="server" TextMode="Password" placeholder="Enter password" required="required"></asp:TextBox>
    </div>
  </div>
              <br />
        <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary btn-sm" onclick="Button1_Click" ForeColor="White" />
    &nbsp;
        <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-sm" onclick="Button2_Click" Text="Cancel" ForeColor="White" />
        <br />
        <br />
        Forget Password?
    <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-primary btn-sm" onclick="LinkButton3_Click">Forget Password</asp:LinkButton>
        </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      
    </div>
  </div>
  </div>
    </div>
</asp:Content>