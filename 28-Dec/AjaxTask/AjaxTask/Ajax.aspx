<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax.aspx.cs" Inherits="AjaxTask.Ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Comment Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your comment has been succesfully sent',
                type: 'success'
            });
        }
    </script>
    <style>
        #lblComment {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:Label ID="lblComment" runat="server"></asp:Label>

        <div style="background-color: #d94125;">
            <div class="container my-5 py-5 text-dark">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-6">
                        <div class="card">
                            <div class="card-body p-4">
                                <div class="d-flex flex-start w-100">
                                    <div class="w-100">
                                        <h5>Add a comment</h5>

                                        <div class="form-outline">
                                            <asp:UpdatePanel runat="server">
                                                <ContentTemplate>
                                                    <asp:TextBox runat="server" class="form-control" ID="txtComment"></asp:TextBox>
                                                    </div>
                <div class="d-flex justify-content-between mt-3">
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Send" OnClick="Button1_Click" />
                    <i class="fas fa-long-arrow-alt-right ms-1"></i>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
