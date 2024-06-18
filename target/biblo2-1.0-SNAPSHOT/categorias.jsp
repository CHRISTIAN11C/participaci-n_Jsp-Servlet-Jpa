<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Categoria"%>
<%
    List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CATEGORIAS</title>
    </head>
    <body>
    <center><font size="12"><h1>Listado de Categorias</h1></font></center>
    <p><a href="CategoriaServlet?action=add"><h1><h1><h1>Nuevo</h1></h1></h1></a></p>
    <table border = "1">
        <tr>
            <th>Id</th>
            <th>Descripcion</th>
            <th>Renombrar</th>
            <th>Desacer</th>
        </tr>
        <%
            for (Categoria item : categorias) {
        %>
        <tr>
            <td><%= item.getId() %></td>
            <td><%= item.getDescripcion()%></td>
            <td><a href="CategoriaServlet?action=edit&id=<%= item.getId()%>">Editar</a></td>
            <td><a href="CategoriaServlet?action=dele&id=<%= item.getId()%>" onclick="return(confirm('Estas Seguro?'))">Eliminar</a></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
