<%-- 
    Document   : j_mec_mod
    Created on : 4 mar. 2020, 20:58:14
    Author     : asant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="CSS/style_modemp.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="header" style="height: 70px">
            <div class="bg-dark">
               <div>
                <nav class="navbar navbar-expand-lg navbar-dark gris scrolling-navbar fixed-top">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                      <div class=" navg navbar-nav w-100 justify-content-center " >
                          <a class="nav-item nav-link active" href="../index.html">inicio</a>
                      </div>
                    </div>
                  </nav>
            </div>
        </div>
        </header>
        <div style="height: 30px"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                <div class="card shadow-lg bg-white">
                    <div class="card-header">Modificar información de empleado</div>
                    <div class="card-body">
                        <form id="form1" action="#" method="post" class="needs-validation">
                            <div class="form-row">
                                <div class="col-md4 mb-3">
                                    <label for="puesto">Asignación</label>
                                    <input name="puesto" type="text" class="form-control" id="pass" placeholder="" value=""><br>
                                    <label for="sueldo">Sueldo</label>
                                    <input name="sueldo" type="number" class="form-control" id="sueldo"><br>
                                    <button type="button" class="btn btn-info">Actualizar</button>
                                    </div>
                            </div>
                            
                        </form>
                    </div>
                </div>
                </div>
            </div>
            
        </div>
    </body>
</html>
