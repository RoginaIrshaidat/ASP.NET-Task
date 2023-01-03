<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UserControlTask.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <title>Log in</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />

</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <section class="vh-100">
                <div class="container-fluid h-custom">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-md-9 col-lg-6 col-xl-5">
                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                                class="img-fluid" alt="Sample image">
                        </div>
                        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">



                            <div class="divider d-flex align-items-center my-4">
                            </div>

                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-lg"
                                    placeholder="Enter a valid email address"></asp:TextBox>

                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <asp:TextBox type="password" ID="txtPass" runat="server" class="form-control form-control-lg"
                                    placeholder="Enter password"></asp:TextBox>

                            </div>

                            <div class="d-flex justify-content-between align-items-center">
                                <!-- Checkbox -->
                                <div class="form-check mb-0">
                                    <asp:CheckBox ID="checkRember" runat="server" class="form-check-input me-2" />
                                  
                                    <label class="form-check-label" for="form2Example3">
                                        Remember me
                                    </label>


                                    <div class="text-center text-lg-start mt-4 pt-2">
                                        <asp:Button ID="btnlogin" runat="server" Text="Log in " class="btn btn-primary btn-lg"
                                            Style="padding-left: 2.5rem; padding-right: 2.5rem;" OnClick="btnlogin_Click" />

                                        <p class="small fw-bold mt-2 pt-1 mb-0">
                                            Don't have an account? <a href="#!"
                                                class="link-danger">Register</a>
                                        </p>
                                    </div>
                                </div>
            </section>
    </form>
</body>
</html>

