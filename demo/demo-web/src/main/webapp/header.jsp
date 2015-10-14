<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${!empty acceso}">
<div>
<p style="float:right;">Hola ${usuario.nombre } | <a href="login?accion=salir">Salir</a></p>
</div>
</c:if>