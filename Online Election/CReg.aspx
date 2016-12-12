<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CReg.aspx.cs" Inherits="CReg" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="col-sm-6 wow fadeInDown">
    <div class="accordion">
         <div class="pull-right">
           <img class="img-responsive" src="images/slider/reg1.png">
            </div>                
                        
         </div>
       </div> 
    <div>
        <br />
   

        <asp:Label ID="Label9" runat="server" Font-Size="XX-Large" ForeColor="Blue" 
            Text="Student Registration" Font-Underline="False" Font-Bold="True" Font-Names="Monotype Corsiva"></asp:Label>
        <br />

  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal">Must Read</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Registration Guidelines</h4>
        </div>
        <div class="modal-body">
          <p>Name: Allows up to 40 uppercase and lowercase
               characters and a few special characters that are common to some names..</p>
            <p>Number: Allows Maximum of 11 digit from 0-9</p>
            <p>Email: Allows only Vaild email address</p>
            <p>Password: Minimum 6 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character
                Example: Valid Password Examples: PaSs@123
            </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
         <div class="form-group">
     <div class="input-group margin-bottom-sm">
  <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
   <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
</div>
             </div>
         <div class="form-group">
<div class="input-group margin-bottom-sm">
  <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
    
    <asp:RegularExpressionValidator ID="regexpName" runat="server"     
                                    ErrorMessage="Numbers are not allowed." 
                                    ControlToValidate="TextBox2"   ForeColor="Red"   
                                    ValidationExpression="^[a-zA-Z'.\s]{1,40}$" />
     <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox2" runat="server" />
</div>
             </div>
         <div class="form-group">
        <div class="input-group margin-bottom-sm">
  <span class="input-group-addon"><i class="fa fa-address fa-fw"></i></span>
   <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="Address"></asp:TextBox>
</div>
             </div>
         <div class="form-group">
          <div class="input-group margin-bottom-sm">
  <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
   <asp:TextBox ID="TextBox4" class="form-control" runat="server" placeholder="Number"></asp:TextBox>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
      ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="Invalid Phone Number" 
    ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
</div>
             </div>
         <div class="form-group">
  <div class="input-group margin-bottom-sm">
  <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
   <asp:TextBox ID="TextBox5" class="form-control" runat="server" placeholder="Email"></asp:TextBox>
     <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox5" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="TextBox5" ForeColor="Red" ErrorMessage="Invalid email address." />
</div>
             </div>
         <div class="form-group">
              <div class="input-group margin-bottom-sm">
  <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
   <asp:TextBox ID="TextBox6" class="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"     
                                    ErrorMessage="Password Too Weak" 
                                    ControlToValidate="TextBox6"   ForeColor="Red"   
                                    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{6,}" />
     <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox6" runat="server" />
</div>
    </div>
         <div class="form-group">
                 <div class="input-group margin-bottom-sm">
  <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
   <asp:TextBox ID="TextBox7" class="form-control" TextMode="Password" runat="server" placeholder="Confirm Password"></asp:TextBox>
      <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="TextBox6"
                ControlToValidate="TextBox7" runat="server" />
</div>
             </div>
         <div class="form-group">
        <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-sm" onclick="Button2_Click" Text="Submit" ForeColor="White" />
        <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-sm" onclick="Button3_Click" Text="Cancel" ForeColor="White" />  
    </div>
    </div>
</asp:Content>