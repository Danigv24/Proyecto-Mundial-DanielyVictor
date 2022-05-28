<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="com.ies.baroja.ServletForm"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/stylesheets/menue.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/styles/tm-main.min.css?lm=1649925874" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/stylesheets/main.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/stylesheets/main_desktop.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/chosen.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/stylesheets/vereinsseite.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/spielbericht.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/statistiken.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/meintm.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/stylesheets/verein.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/aufstellung.css?lm=1649922393" />

<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/jquery.bxslider.min.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/jquery.custom.bxslider.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="https://tmssl.akamaized.net/css/beliebtheit.css?lm=1649922393" />
  <link rel="icon" href="imagenes/logoM.jpg">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="jugadora.css" type="text/css" media="screen" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Jugador Añadido Correctamente</title>
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-light" style="background-color: #000000;">
   <div class="container-fluid text-white">
     <a class="navbar-brand" href="#"><img src="imagenes/logoM.jpg" alt="Logo" width="100" height="100"></a>
     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
 	<div class="collapse navbar-collapse text-white"
				id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="index.jsp">Inicio</a></li>
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
							<li><a class="dropdown-item text-dark" href="Inglaterra.jsp">Inglaterra</a></li>
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
	<div class="container">
		<h1>Jugador Añadido Correctamente</h1>

<img src="imagenes/alfo.gif" alt="alfo">

<br>
		<h1>¿Quieres añadir otro jugador?</h1>
		<form action="altajugador.jsp">
			<div class="input-group mb-3">

			</div>
			<button type="submit" >Añadir</button>
			</form>
			</div>
</body>
</html>
