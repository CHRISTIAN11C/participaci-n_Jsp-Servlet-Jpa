<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Libro"%>
<%
    List<Libro> libros = (List<Libro>) request.getAttribute("libros");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIBROS</title>
    </head>
    <body>
    <center><h1>Listados de Libros</h1></center>
    <p>
        <a href="LibroServlet?action=add"><h2>Nuevo</h2></a>
    </p>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Disponible</th>
            <th>Categoria</th>
            <th></th>
            <th></th>
        </tr>
        <%
            for (Libro item : libros) {
        %>
        <tr>
            <td><%= item.getId()%></td>
            <td><%= item.getTitulo()%></td>
            <td><%= item.getAutor()%></td>
            <td>
                <input type="checkbox" name="disponible"<%= (item.getDisponible()==1) ? "checkd" : ""%>readonly>
            </td>
            <td><%= item.getCategoriaId().getDescripcion()%></td>
            <td><a href="LibroServlet?action=edit&id=<%= item.getId()%>">Editar</a></td>
            <td><a href="LibroServlet?action=dele&id=<%= item.getId()%>" onclick="return(confirm('Estas seguro?'))">Eliminar</a></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
