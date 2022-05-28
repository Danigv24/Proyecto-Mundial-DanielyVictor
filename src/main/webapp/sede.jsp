<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="com.ies.baroja.ServletForm"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<!--se añade este script para que funcione el Dropdown -->
<link rel="icon" href="imagenes/logoM.jpg">
<link rel="stylesheet" href="sede.css" type="text/css" media="screen" />
<title>Página del Mundial VD</title>
</head>
<body class="about">
	<nav class="navbar navbar-expand-md navbar-light"
		style="background-color: #000000;">
		<div class="container-fluid text-white">
			<a class="navbar-brand" href="index.jsp"><img
				src="imagenes/logoM.jpg" alt="Logo" width="100" height="100"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse text-white"
				id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="index.jsp">Inicio</a></li>
					<li class="nav-item "><a class="nav-link text-white" href="#">Sede
							del Mundial</a></li>
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
							<li><a class="dropdown-item text-dark" href="Camerun.jsp">Camerún</a></li>
							<li><a class="dropdown-item text-dark" href="Canada.jsp">Canadá</a></li>
							<li><a class="dropdown-item text-dark" href="Catar.jsp">Catar</a></li>
							<li><a class="dropdown-item text-dark" href="Corea.jsp">Corea
									del Sur</a></li>
							<li><a class="dropdown-item text-dark" href="Croacia.jsp">Croacia</a></li>
							<li><a class="dropdown-item text-dark" href="Dinamarca.jsp">Dinamarca</a></li>
							<li><a class="dropdown-item text-dark" href="Ecuador.jsp">Ecuador</a></li>
							<li><a class="dropdown-item text-dark" href="España.jsp">España</a></li>
							<li><a class="dropdown-item text-dark"
								href="EstadosUnidos.jsp">Estados Unidos</a></li>
							<li><a class="dropdown-item text-dark" href="Francia.jsp">Francia</a></li>
							<li><a class="dropdown-item text-dark" href="Ghana.jsp">Ghana</a></li>
							<li><a class="dropdown-item text-dark"
								href="Inglaterra.jsp">Inglaterra</a></li>
							<li><a class="dropdown-item text-dark" href="Iran.jsp">Irán</a></li>
							<li><a class="dropdown-item text-dark" href="Japon.jsp">Japón</a></li>
							<li><a class="dropdown-item text-dark" href="Marruecos.jsp">Marruecos</a></li>
							<li><a class="dropdown-item text-dark" href="Mexico.jsp">México</a></li>
							<li><a class="dropdown-item text-dark"
								href="Paisesbajos.jsp">Países Bajos</a></li>
							<li><a class="dropdown-item text-dark" href="Polonia.jsp">Polonia</a></li>
							<li><a class="dropdown-item text-dark" href="Portugal.jsp">Portugal</a></li>
							<li><a class="dropdown-item text-dark" href="Senegal.jsp">Senegal</a></li>
							<li><a class="dropdown-item text-dark" href="Serbia.jsp">Serbia</a></li>
							<li><a class="dropdown-item text-dark" href="Suiza.jsp">Suiza</a></li>
							<li><a class="dropdown-item text-dark" href="Tunez.jsp">Túnez</a></li>
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
									String sEmail = (String)admin.getAttribute("logemail");
									if(sEmail!=null){
										if(sEmail.equals("admin@gmail.com")){
											out.println("<li class='nav-item'><a class='nav-link text-white'"+
													" href='altajugador.jsp'>Añadir Jugadores</a></li>");
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
	<div id="main">
		<br> <br>
		<div id="mainRight">
			<div class="columnRight">
				<img src="imagenes/Barce.jpg" width="300" height="300" /> <p>Barcelona
				es una ciudad española, capital de la comunidad autónoma de
				Cataluña, de la provincia homónima y de la comarca del Barcelonés.
				Con una población de 1.636.732 habitantes en 2021, es la segunda
				ciudad más poblada de España y de la península ibérica después de
				Madrid, y la décima de la Unión Europea. Alberga los Estadios tanto
				como el Camp Nou como el RCD Stadium como montilivi aunque este
				ultimo es algo más pequeño que los otro dos pero disponible.</p>
			</div>
			<div class="columnRight">
				<img src="imagenes/madrid.jpg" width="300" height="300" /><p> Madrid
				es un municipio y una ciudad de España. La localidad, con categoría
				histórica de villa, es la capital del Estado y de la Comunidad de
				Madrid. En su término municipal, el más poblado de España, viven
				3.305.408 personas empadronadas, según el INE de 2021, lo que la
				convierte en la segunda ciudad más poblada de la Unión Europea, por
				detrás de Berlín. Futbolisticamente es una ciudad muy conocidad ya
				que alberga sede de los equipos como Real Madrid y Atletico de
				Madrid como los dos grandes equipos de la ciudad.</p>
			</div>
			<div class="columnRight">
				<img src="imagenes/sevilla.jpg" width="300" height="300" /> <p>Sevilla
				es un municipio y una ciudad de España, capital de la provincia
				homónima y de Andalucía. Contaba con 684.234 habitantes en 2021,
				por lo que es la ciudad más poblada de Andalucía, la cuarta de
				España después de Madrid, Barcelona y Valencia y la 32.ª de la Unión
				Europea. Hablando del Fútbol Sevilla albergara la final de la Europa
				League y la Copa del Rey a parte de este Mundial este año asi que es
				una buena sede contando con los campos como el Sanchez-Pijuan,Benito
				Villamarin y la Cartuja.</p>
			</div>
		</div>
	</div>
</body>
</html>
