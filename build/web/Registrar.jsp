<%-- 
    Document   : Registrar
    Created on : 22/02/2018, 02:32:02 PM
    Author     : Carlos Enrique P P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Registrar</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    </head>
    <body class="bg-dark">
        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Registrar</div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblIdentificación">Identificación</label>
                                    <input class="form-control" name="txtIdentificación" type="text" placeholder="Ingrese identificación">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblPrimer Nombre">Primer Nombre</label>
                                    <input class="form-control" name="txtPrimer Nombre" type="text" placeholder="Ingrese Primer Nombre">
                                
                                </div>
                                <div class="col-md-6">
                                    <label for="lblPrimer Nombre">Segundo Nombre</label>
                                    <input class="form-control" name="txtSegundo Nombre" type="text" placeholder="Ingrese Segundo Nombre">
                                
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblPrimer Apellido">Primer Apellido</label>
                                    <input class="form-control" name="txtPrimer Apellido" type="text" placeholder="Ingrese Primer Apellido">
                                
                                </div>
                                <div class="col-md-6">
                                    <label for="lblPrimer Nombre">Segundo Apellido</label>
                                    <input class="form-control" name="txtSegundo Nombre" type="text" placeholder="Ingrese Segundo Apellido">
                                
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblDirección">Dirección</label>
                                    <input class="form-control" name="txtDirección" type="text" placeholder="Ingrese Dirección">
                                
                                </div>
                                <div class="col-md-6">
                                    <label for="lblTelefono">Telefono</label>
                                    <input class="form-control" name="txttelefono" type="text" placeholder="Ingrese su telefono">
                                
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-9">
                                    <label for="lblCorreo">Correo</label>
                                    <input class="form-control" name="txtCorreo" type="text" placeholder="Ingrese su correo">
                                
                                </div>
                              
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblContraseña">Contraseña</label>
                                    <input class="form-control" name="passwordContraseña" type="password" placeholder="Ingrese su Contraseña">
                                
                                </div>
                                 <div class="col-md-6">
                                    <label for="lblConfirmar Contraseña">Confirmar Contraseña</label>
                                    <input class="form-control" name="passwordConfirmar Contraseña" type="password" placeholder="Confirmar su Contraseña">
                                
                                </div>
                              
                            </div>
                        </div>
                        <input name="btnRegistrar" type="submit" class="btn btn-primary btn-block"value="Registrar"/>
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="login.jsp">Login</a>
                        <a class="d-block small" href="forgot-password.html">Olvido su contraseña?</a>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
