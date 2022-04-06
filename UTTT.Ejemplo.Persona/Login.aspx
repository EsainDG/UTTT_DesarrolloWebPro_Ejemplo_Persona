﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
   
<section class="vh-100" style="background-color: rgba(7, 33, 86, 0.89);">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-xl-10">
                <div class="card" style="border-radius: 1rem;">
                    <div class="row g-0">
                        <div class="col-md-6 col-lg-5 d-none d-md-block mt-5">
                            <img src="Images/img.jpg" alt="login form" class="img-fluid"/>
                        </div>
                        <div class="col-md-6 col-lg-7 d-flex align-items-center">
                            <div class="card-body p-4 p-lg-5 text-black">

                                <form runat="server">

                                    <div class="d-flex align-items-center mb-3 pb-1">
                                        <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                        <span class="h1 fw-bold mb-0">Login</span>
                                    </div>

                                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Inicia sesión en tu cuenta</h5>

                                    <div class="form-outline mb-4">
                                    <asp:Label ID="lblMensaje" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>

                                        <asp:TextBox ID="txtNombre" runat="server" type="text" class="form-control form-control-lg" ></asp:TextBox>
                                        <label class="form-label" for="form2Example17">Nombre de Usuario</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <asp:TextBox ID="txtPass" runat="server" type="password" class="form-control form-control-lg" ></asp:TextBox>
                                        <label class="form-label" for="form2Example27">Contraseña</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="pt-1 mb-4 row">
                                        <div class="col-3">
                                            <asp:Button ID="Button1" runat="server" Text="Ingresar" class="btn btn-dark btn-lg btn-block" type="button" OnClick="ValidarLogin" />
                                        </div>
                                        <div class="mt-4 col-6 offset-2">
                                            <asp:HyperLink ID="recuperarP" class="small text-danger" NavigateUrl="~/BuscarUsuario.aspx" runat="server">¿Olvidaste tu contraseña?</asp:HyperLink>
                                        </div>
                                    </div>

                                    
                                    <p class="mb-5 pb-lg-2 text-dark" >¿No estas registrado?
                                        <asp:HyperLink ID="btnAgregar" NavigateUrl="~/UsuarioManager.aspx" runat="server">Registrate aquí</asp:HyperLink>
                                    </p>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    <script src="Scripts/bootstrap.bundle.min.js"></script>
</body>
</html>