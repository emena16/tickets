<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <title>Proyecto Test</title>
    </head>

    <body>
        <div class="container">
            <div class="card border-info ">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-light" href="agregar.htm">Nuevo registro</a>
                </div>
                <div class="card-body ">
                    
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Nuevos</th>
                                <th>Proceso</th>
                                <th>Atendidos</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--Nuevos-->
                            <td>
                                <c:forEach var ="row" items="${nuevos}">
                                    <div class="card border-danger ">
                                        <div class="card-header bg-danger text-white">
                                            <label>${row.idTicket} ${row.tituloTicket} <u> ${row.nombreTipoIncidencia}</u> <b>${row.nombreGravedadIncidencia}</b> </label>
                                        </div>
                                        <div class="card-body ">
                                            <div class="row">
                                                <label> ${row.descripcionProblema} </label>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <a href="editar.htm?id=${row.idTicket}" class="btn btn-warning">Editar</a>
                                                </div>
                                                <div class="col">
                                                    <a href="delete.htm?id=${row.idTicket}" class="btn btn-danger">Archivar</a>
                                                </div>
                                            </div>                                           
                                        </div>
                                    </div>
                                    <br>
                                </c:forEach>        
                            </td>
                            
                            <!--Proceso-->
                            <td>
                                <c:forEach var ="row" items="${proceso}">
                                    <div class="card border-warning ">
                                        <div class="card-header bg-warning text-white">
                                            <label>${row.idTicket} ${row.tituloTicket} <u> ${row.nombreTipoIncidencia}</u> <b>${row.nombreGravedadIncidencia}</b> </label>
                                        </div>
                                        <div class="card-body ">
                                            <div class="row">
                                                <label> ${row.descripcionProblema} </label>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <a href="editar.htm?id=${row.idTicket}" class="btn btn-warning">Editar</a>
                                                </div>
                                                <div class="col">
                                                    <a href="delete.htm?id=${row.idTicket}" class="btn btn-danger">Archivar</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                </c:forEach>
                            </td>
                            
                            <!--Atendidos-->
                            <td>
                                <c:forEach var ="row" items="${atendido}">
                                    <div class="card border-success ">
                                        <div class="card-header bg-success text-white">
                                            <label>${row.idTicket} ${row.tituloTicket} <u> ${row.nombreTipoIncidencia}</u> <b>${row.nombreGravedadIncidencia}</b> </label>
                                        </div>
                                        <div class="card-body ">
                                            <div class="row">
                                                <label> ${row.descripcionProblema} </label>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <a href="editar.htm?id=${row.idTicket}" class="btn btn-warning">Editar</a>
                                                </div>
                                                <div class="col">
                                                    <a href="delete.htm?id=${row.idTicket}" class="btn btn-danger">Archivar</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                </c:forEach>
                            </td>
                        </tbody>
                    </table>

                    
<!--                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRES</th>
                                <th>CORREO</th>
                                <th>NACIONALIDAD</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var ="dato" items="${lista}">
                            <tr>
                                <td>${dato.tituloTicket}</td>
                                <td>${dato.tituloTicket}</td>
                                <td>${dato.tituloTicket}</td>
                                <td>${dato.tituloTicket}</td>
                                <td>
                                    <a href="editar.htm?id=${dato.tituloTicket}" class="btn btn-warning">Editar</a>
                                    <a href="delete.htm?id=${dato.tituloTicket}" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>-->

                </div>
            </div>
            
        </div>
        
    </body>
</html>
