<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="BTL_Example.theme.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="" rel="stylesheet" type="text/css" />
    <link href="../css/scss/loginStyle.css" rel="stylesheet" type="text/css" />
    <link href="lib/font-awesome/css/all.min.css" rel="stylesheet" type="text/css" />
    <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        rel="stylesheet"
        type="text/css" />--%>
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <%--<script src="../js/styleLogin.js"></script>--%>
</head>
<body>
    <div class="limiter">
        <div class="form-container w-100 min-vh-100 d-flex justify-content-center align-items-center flex-wrap">
            <div class="wrap-form-login d-flex justify-content-between bg-white align-items-center">
                <div class="image-logo">
                    <asp:Image ID="logo" ImageUrl="~/image/logo.jpg" runat="server" />
                </div>

                <form class="form-submit" runat="server">
                    <span class="title font-weight-bold">Đăng nhập</span>

                    <div class="d-flex flex-column justify-content-start">
                        <div class="w-100 position-relative">
                            <asp:TextBox ID="username"
                                CssClass="txt-input txtUsername border-0 shadow-none"
                                placeholder="Tên tài khoản"
                                runat="server" OnTextChanged="processEnterUsername" />
                            <span class="focus-username focus-txt-input"></span>
                            <span class="symbol">
                                <i class="fas fa-user fa-fw" aria-hidden="true"></i>
                            </span>
                        </div>
                        <asp:RequiredFieldValidator ID="validUsername"
                            ForeColor="Red"
                            Font-Italic="true"
                            Font-Size="Small"
                            runat="server"
                            CssClass="mb-2 ml-3"
                            ErrorMessage="Tên tài khoản không được để trống"
                            ControlToValidate="username" />
                    </div>

                    <div class="d-flex flex-column justify-content-start">
                        <div class="w-100 position-relative">
                            <asp:TextBox ID="password"
                                CssClass="txt-input txtPassword border-0 shadow-none"
                                placeholder="Mật khẩu"
                                runat="server" TextMode="Password" />
                            <span class="focus-txt-input"></span>
                            <span class="symbol">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </span>
                        </div>
                        <asp:RequiredFieldValidator ID="validPassword"
                            ForeColor="Red"
                            Font-Italic="true"
                            Font-Size="Small"
                            CssClass="ml-3"
                            runat="server" ErrorMessage="Mật khẩu không được để trống"
                            ControlToValidate="password" />
                    </div>

                    <div class="mt-3">
                        <asp:Button ID="login"
                            CssClass="btn btn-primary rounded-pill py-2 w-100"
                            runat="server" Text="Đăng nhập" OnClick="processSubmit" />
                    </div>

                    <div class="text-center">
                        <span class="font-italic small">Quên</span>
                        <a class="font-italic small text-primary" href="#">Tài khoản / Mật khẩu?</a>
                    </div>
                </form>
                <div class="url-register">
                    <a class="font-italic small text-secondary text-decoration-none" href="FrmRegister.aspx">Chưa có tài khoản
						 <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
