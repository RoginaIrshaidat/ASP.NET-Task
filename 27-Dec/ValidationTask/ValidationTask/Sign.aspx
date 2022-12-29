<%@ Page Title="" Language="C#" MasterPageFile="~/homePage.Master" AutoEventWireup="true" CodeBehind="Sign.aspx.cs" Inherits="ValidationTask.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <style>
        .mycontainer {
            display: flex;
            justify-content: center;
            margin: 35px;
        }

        .error {
            color: red;
        }
    </style>
   
    <div class="mycontainer">
        <div class="w-25">
            <h3 style="text-align: center;">Log In</h3>
            <br />
            <!-- Email input -->
            <div class="form-outline mb-4">
                <asp:TextBox ID="txtEmail" class="form-control" runat="server" placeholder="Email" ></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="The email format not correct" ID="ReguEmail" ControlToValidate="txtEmail" CssClass="error" ValidationGroup="signInGroup" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="ReqEmail" runat="server" ErrorMessage="Fill Your Email" ControlToValidate="txtEmail" CssClass="error" ValidationGroup="signInGroup" ></asp:RequiredFieldValidator>
                
            </div>

            <!-- Password input -->
            <div class="form-outline mb-4">
                <asp:TextBox ID="txtPass" class="form-control" runat="server" placeholder="Password" type="password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqPassword" runat="server" ErrorMessage="Fill Your Password" ControlToValidate="txtPass" CssClass="error" ValidationGroup="signInGroup"></asp:RequiredFieldValidator>
            </div>



            <!-- Register buttons -->
            <div class="text-center">
                <asp:Button class="btn btn-primary btn-block mb-4" ID="btnLogIn" runat="server" Text="Log in" ValidationGroup="signInGroup" />
  
            </div>
        </div>
        <div>
            <!-- Section: Design Block -->
            <section class="text-center">
                <!-- Background image -->

                <!-- Background image -->

                <div class="card mx-4 mx-md-5 shadow-5-strong" style="margin-top: -100px; background: hsla(0, 0%, 100%, 0.8); backdrop-filter: blur(30px);">
                    <div class="card-body py-5 px-md-5">

                        <div class="row d-flex justify-content-center">
                            <div class="col-lg-8">
                                <h2 class="fw-bold mb-5">Sign up now</h2>
                                <form>
                                    <!-- 2 column grid layout with text inputs for the first and last names -->
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <asp:TextBox ID="txtFName" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ReqFNAme" runat="server"   ValidationGroup='signUpGroup' ErrorMessage="Fill Your First Name" ControlToValidate='txtFName' CssClass="error"></asp:RequiredFieldValidator>
                                            
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <asp:TextBox ID="txtLName" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ReqLName" runat="server"  ValidationGroup='signUpGroup' ErrorMessage="Fill Your Last Name" ControlToValidate='txtLName' CssClass="error"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>

                                    <!-- Email input -->
                                    <div class="form-outline mb-4">
                                        <asp:TextBox ID="txtmail" class="form-control" runat="server" placeholder="Email" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequMail" runat="server" ErrorMessage="Fill Your Email" ControlToValidate='txtmail' CssClass="error" ValidationGroup="signUpGroup"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="Regumail" runat="server"   ValidationGroup='signUpGroup' ErrorMessage="The email format not correct" ControlToValidate='txtmail' CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>

                                    <!-- Password input -->
                                    <div class="form-outline mb-4">
                                        <asp:TextBox ID="txtpassword" class="form-control" runat="server" placeholder="Password" type="password" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ValidationGroup='signUpGroup' runat="server" ErrorMessage="Fill Your Pass" ControlToValidate='txtpassword' CssClass="error"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <asp:CompareValidator ID="ComPass" runat="server" ErrorMessage="The Password not match" ValidationGroup="signUpGroup" ControlToValidate='txtConfPass' ControlToCompare="txtpassword" CssClass="error"></asp:CompareValidator>
                                        <asp:TextBox ID="txtConfPass" class="form-control" runat="server" placeholder="Confirm Password" ValidationGroup="signUpGroup" type="password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequConfPass"  ValidationGroup='signUpGroup' runat="server" ErrorMessage="Fill Confirm Password" ControlToValidate='txtConfPass' CssClass="error"></asp:RequiredFieldValidator>
                                    </div>


                                    <!-- Submit button -->
                                    <asp:Button ID="btnSignUp" class="btn btn-primary btn-block mb-4" runat="server" Text="Sign up" ValidationGroup="signUpGroup" OnClick="btnSignUp_Click" />
                                    <input type="reset" class="btn btn-primary btn-block mb-4" />
                                       <asp:RequiredFieldValidator ID='RequiredFieldValidator2' 
                        ValidationGroup='signUpGroup'  ControlToValidate='txtmail'
                               Text='Field Cannot Be Empty' Runat='Server' />


                                    <!-- Register buttons -->
                                    <div class="text-center">
                                     
                                        <button type="button" class="btn btn-link btn-floating mx-1">
                                            <i class="fab fa-facebook-f"></i>
                                        </button>

                                        <button type="button" class="btn btn-link btn-floating mx-1">
                                            <i class="fab fa-google"></i>
                                        </button>

                                        <button type="button" class="btn btn-link btn-floating mx-1">
                                            <i class="fab fa-twitter"></i>
                                        </button>

                                        <button type="button" class="btn btn-link btn-floating mx-1">
                                            <i class="fab fa-github"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Section: Design Block -->
        </div>
    </div>
</asp:Content>
