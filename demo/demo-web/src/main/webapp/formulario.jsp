<%@page contentType="text/html; charset=ISO-8859-1"  %>
<!DOCTYPE html>
<html>
<head>


	<meta charset="UTF-8">
	<meta name="author" content="Grupo_5_TIW">

	<style>
		
		.asterisco{
			color:red;
		}
		
		.seccion{
			margin-left: 25%;
			margin-right: 25%;
		}
		
		.formu{
		
			background-color:#F2F2F2;
		
		}
	
	</style>

	<script>
	
		function validate() {
			
			/*Validacion Nombre*/
				var n = document.forms["Form"]["nombre"].value;
				if (n==null || n=="") {
					document.getElementById("Nombre").style.color="red";
					alert("Por favor escriba su nombre");
				return false;
				}
			
			/*Validacion Apellidos*/
				var a = document.forms["Form"]["apellidos"].value;
				if (a==null || a=="") {
					document.getElementById("Apellidos").style.color="red";
					alert("Por favor escriba sus apellidos");
				return false;
				}
			
			/*Validacion Email*/
				var e = document.forms["Form"]["Email"].value;
				var atpos = e.indexOf("@");
				var dotpos = e.lastIndexOf(".");
				if (atpos<1 || dotpos<atpos+2 || dotpos+2>=e.length) {
					document.getElementById("email").style.color="red";
					alert("Email no valido. Introduce una direccion con este formato: nombre@dominio.extension");
					return false;
				}
				
			/*Validacion Usuario*/
				var u = document.forms["Form"]["Usuario"].value;
				if (u==null || u=="") {
					document.getElementById("idUsuario").style.color="red";
					alert("Por favor introduzca su nombre de usuario");
				return false;
				}
			
			/*Validacion contraseña*/
				/*Se comprueba si se ha introducido algo*/
				var c1 = document.forms["Form"]["Contraseña1"].value;
				if (c1==null || c1=="") {
					document.getElementById("idContraseña1").style.color="red";
					alert("Por favor introduzca su contraseña");
				return false;
				}
				
				var patron=/^[0-9a-zA-Z]{1,8}$/;/*expresion regular*/
				if ((patron.test(c1))==false){
				document.getElementById("idContraseña1").style.color="red";
				alert("Por favor introduzca una contraseña valida.Se permite un maximo de 8 caracteres y los validos son letras de la [a-z] y digitos del[0-9]");
				return false;
				}
			
			
			/*Validacion confirmación contraseña*/
				/*Comprobar que no esta vacio*/
				var c2 = document.forms["Form"]["Contraseña2"].value;
				if (c2==null || c2=="") {
					document.getElementById("idContraseña2").style.color="red";
					alert("Confirme su contraseña");
				return false;
				}
				/*Comprobar que las contraseñas introducidas son las mismas*/
				if(c1 != c2){
					document.getElementById("idContraseña2").style.color="red";
					alert("No coinciden las contraseñas. Vuelva a confirmar la contraseña");
					
				return false;	
				}
			
				
			/*Envio correcto*/
			alert("El formulario ha sido enviado correctamente");
			return true;
				
		}

	</script>

</head>

<body>
	

	<div class="seccion" >
		<p> A continuacion se le muestra un formulario. Los campos en negrita y señalados con un asterisco son obligatorios rellenarlos. </p>
		<p> Una vez realizado el formulario haga click en el boton aceptar para enviar sus datos. </p>
		
		<div class="formu" >
		<form name="Form" action="" method="post" onsubmit="return validate()" enctype="text/plain" >
			<!--Informacion Personal-->
			
			<h2> INFORMACION PERSONAL:</h2>
			<ul>
			
				<li>
					<b id="Nombre"> Nombre<label class="asterisco">*</label>:</b> <input type=text name=nombre size=30 ><br><br>
				</li>
				<li>
					<b id="Apellidos"> Apellidos<label class="asterisco">*</label>:</b> <input type=text name=apellidos size=60 ><br><br>
				</li>
				<li>
					<div id="sexo">Seleccione su sexo:</div><br>
						<INPUT TYPE=RADIO NAME= sexo VALUE=Hombre >Hombre<br>
						<INPUT TYPE=RADIO NAME= sexo VALUE=Mujer >Mujer<br><br>
					
				</li>
				<li>
					<b id="email"> Email<label class="asterisco">*</label>:</b> <input type="text" name="Email" size="30"> 
					<p><strong>Nota:</strong> Debe de seguir este formato: nombre@dominio.extension</p><br>
				</li>
			</ul>
			<!--Fin Informacion Personal-->
			
			<!--Informacion Usuario-->
			
			<h2> INFORMACION DE USUARIO:</h2>
			<ul>
				<li>
					<b id="idUsuario"> Usuario<label class="asterisco">*</label>:</b> <input type="text" name="Usuario" size="35" ><br><br>
				</li>
				<li>
					<b id="idContraseña1"> Contraseña<label class="asterisco">*</label>:</b> <input type="password" name="Contraseña1" size="20" maxlength="8"><br><br>
				</li>
				<li>
					<b id="idContraseña2"> Contraseña<label class="asterisco">*</label>:</b> <input type="password" name="Contraseña2" size="20" maxlength="8"><br><br>
				</li>
			</ul>
			<!--Fin Informacion Usuario-->
			
			
			
			
			<table>
			<tr>
			<td>
			<INPUT TYPE=SUBMIT VALUE="Enviar" >
			</td>
			</tr>
			</table>
			
		</form>
		</div>
	

	</div>

	
</body>

</html>
