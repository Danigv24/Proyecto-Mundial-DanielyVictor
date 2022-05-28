<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="com.ies.baroja.ServletForm"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="utf-8">
<link rel="icon" href="imagenes/logoM.jpg">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link href="mundial2.css" rel="stylesheet" type="text/css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<!--Se a�ade este script para que funcione el Dropdown -->
<title>P�gina del Mundial VD</title>

</head>
<body>
	<nav class="navbar navbar-expand-md navbar-light"
		style="background-color: #000000;">
		<div class="container-fluid text-white">
			<a class="navbar-brand" href="#"><img src="imagenes/logoM.jpg"
				alt="Logo" width="100" height="100"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>

			</button>
			<div class="collapse navbar-collapse text-white"
				id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="#">Inicio</a></li>
					<li class="nav-item "><a class="nav-link text-white"
						href="sede.jsp">Sede del Mundial</a></li>
					<li class="nav-item dropdown "><a
						class="nav-link dropdown-toggle text-white" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false"> Equipos </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item text-dark" href="Alemania.jsp">Alemania</a></li>
							<li><a class="dropdown-item text-dark"
								href="Arabia_Saudita.jsp">Arabia Saudita</a></li>
							<li><a class="dropdown-item text-dark" href="Argentina.jsp">Argentina</a></li>
							<li><a class="dropdown-item text-dark" href="Belgica.jsp">Belgica</a></li>
							<li><a class="dropdown-item text-dark" href="Brasil.jsp">Brasil</a></li>
							<li><a class="dropdown-item text-dark" href="Camerun.jsp">Camer�n</a></li>
							<li><a class="dropdown-item text-dark" href="Canada.jsp">Canad�</a></li>
							<li><a class="dropdown-item text-dark" href="Catar.jsp">Catar</a></li>
							<li><a class="dropdown-item text-dark" href="Corea.jsp">Corea
									del Sur</a></li>
							<li><a class="dropdown-item text-dark" href="Croacia.jsp">Croacia</a></li>
							<li><a class="dropdown-item text-dark" href="Dinamarca.jsp">Dinamarca</a></li>
							<li><a class="dropdown-item text-dark" href="Ecuador.jsp">Ecuador</a></li>
							<li><a class="dropdown-item text-dark" href="Espa�a.jsp">Espa�a</a></li>
							<li><a class="dropdown-item text-dark"
								href="EstadosUnidos.jsp">Estados Unidos</a></li>
							<li><a class="dropdown-item text-dark" href="Francia.jsp">Francia</a></li>
							<li><a class="dropdown-item text-dark" href="Ghana.jsp">Ghana</a></li>
							<li><a class="dropdown-item text-dark" href="Inglaterra.jsp">Inglaterra</a></li>
							<li><a class="dropdown-item text-dark" href="Iran.jsp">Ir�n</a></li>
							<li><a class="dropdown-item text-dark" href="Japon.jsp">Jap�n</a></li>
							<li><a class="dropdown-item text-dark" href="Marruecos.jsp">Marruecos</a></li>
							<li><a class="dropdown-item text-dark" href="Mexico.jsp">M�xico</a></li>
							<li><a class="dropdown-item text-dark"
								href="Paisesbajos.jsp">Pa�ses Bajos</a></li>
							<li><a class="dropdown-item text-dark" href="Polonia.jsp">Polonia</a></li>
							<li><a class="dropdown-item text-dark" href="Portugal.jsp">Portugal</a></li>
							<li><a class="dropdown-item text-dark" href="Senegal.jsp">Senegal</a></li>
							<li><a class="dropdown-item text-dark" href="Serbia.jsp">Serbia</a></li>
							<li><a class="dropdown-item text-dark" href="Suiza.jsp">Suiza</a></li>
							<li><a class="dropdown-item text-dark" href="Tunez.jsp">T�nez</a></li>
							<li><a class="dropdown-item text-dark" href="Uruguay.jsp">Uruguay</a></li>
								<li><a class="dropdown-item text-dark"
								href="SnowEleven.jsp">SnowEleven</a></li>
							<li><a class="dropdown-item text-dark"
								href="DaniTeam.jsp">Dani FC</a></li>
							<li><a class="dropdown-item text-dark"
								href="FcNoConvo.jsp">FcNoConvo</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link text-white"
						href="Buscador.jsp">Buscador de Jugadores</a></li>
					<%HttpSession admin = request.getSession();	
						String sEmail= (String)admin.getAttribute("logemail");
						if(sEmail!=null){
							if(sEmail.equals("admin@gmail.com")){
								out.println("<li class='nav-item'><a class='nav-link text-white'"+
										" href='altajugador.jsp'>A�adir Jugadores</a></li>");
							}
							else{
								out.println();
							}
							
						}else{
							out.println();
						}
					%>
				</ul>

			</div>
		</div>
	</nav>
	<h2>
		World Cup VD 2022 <img class="imagen" src="imagenes/mascota.gif"
			alt="mascota" height="120" width="100">
	</h2>
	<p>Bienvenidos a la p�gina del Mundial VD2022 donde podras
		encontrar la informaci�n sobre los equipos participantes, los
		jugadores que los componen, el estado actual de la competici�n y
		muchas cosas m�s, espero que disfruten descubriendolas y no olviden
		registrase para recibir novedades.</p>
	<div class="container3">
	<%HttpSession misesion = request.getSession();
			
				if(misesion.getAttribute("logemail")!=null){
					out.println("<div class='card1'>"+
							"<div class='circle'></div>"+
							"<div class='content'>"+
								"<h5>Usuario Registrado</h5>"
								+"<form action='ServletForm' method='POST'><button type='submit' name='Cerrar' >CerrarSesi�n</button></form>"
								+"</div><img width='200' src='imagenes/inicioC.png'></div>");
				}
				else{
					out.println("<div class='card1'>"+
					"<div class='circle'></div>"+
					"<div class='content'>"+
						"<h5>Iniciar Sesi�n</h5>"					
						+"<p>Aqu� Podra iniciar sesi�n o darse de alta si es nuevo usuario en la web. �A qu� est�s esperando?</p>"
						+"<form><button type='submit' formaction='iniciarsesion.html'>Entrar</button></form>"
						+"</div><img width='200' src='imagenes/avatar.png'></div>");
				}
				
				%>
		<div class="card1">
			<div class="circle"></div>
			<div class="content">
			
				<h5>Buscador de Jugadores</h5>
				<p>Busque las Estad�sticas de su Jugador favorito en el buscador
					de nuestra p�gina. Acceda desde aqu�</p>
				<form>
					<button type="submit" formaction="Buscador.jsp">Entrar</button>
				</form>
			</div>
			<img width="200" src="imagenes/esta.png">
		</div>
		<div class="card1">
			<div class="circle"></div>
			<div class="content">
				<h5>Resultados del Mundial</h5>
				<p>Consulta la tabla de resultados de todo el mundial.</p>
				<form>
					<button type="submit" formaction="CuadroM.jsp">Entrar</button>
				</form>
			</div>
			<img width="200" src="imagenes/trofeo.png">
		</div>
		<div class="card1">
			<div class="circle"></div>
			<div class="content">
				<h5>Wordle De los Equipos del Mundial</h5>
				<p>Entrenganse un Rato con este Minijuego inspirado en el juego
					de Wordle pero con los equipos de Nuestro Mundial.</p>
				<form>
					<button type="submit" formaction="Wordle.jsp">Entrar</button>
				</form>
			</div>
			<img width="200" src="imagenes/word.png">
		</div>

	</div>
</body>
</html>
