<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Resultados"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="com.ies.baroja.ServletForm"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="imagenes/logoM.jpg">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="cuadro.css" type="text/css" media="screen" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Resultados del Mundial</title>
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
							<li><a class="dropdown-item text-dark" href="SnowEleven.jsp">SnowEleven</a></li>
							<li><a class="dropdown-item text-dark" href="DaniTeam.jsp">Dani FC</a></li>
							<li><a class="dropdown-item text-dark" rhref="FcNoConvo.jsp">FcNoConvo</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link text-white"
						href="Buscador.jsp">Buscador de Jugadores</a></li>
						 <% HttpSession admin = request.getSession();
					            String sEmail = (String) admin.getAttribute("logemail");
					            if (sEmail != null) {
					            	if (sEmail.equals("admin@gmail.com")) {
					            		out.println("<li class='nav-item'><a class='nav-link text-white'"
					            		+ " href='altajugador.jsp'>Añadir Jugadores</a></li>");
					            	} else {
					            		out.println();
					            	}
					
					            } else {
					            	out.println();
					            }
					            %>
				</ul>
			</div>
		</div>
	</nav>		
		<div class="cuadro">
			<img src="imagenes/cuadrom.png" alt="cuadrom" usemap="#workmap"
				height="500">
			<map name="workmap">
				<area shape="circle" coords="108,145,33" alt="" span
					title="Portugal-Brasil: 5-4 resultado FINAL.">
				<area shape="circle" coords="108,175,33" alt="" span
					title="Tunéz-Irán: 2-1 resultado FINAL.">
				<area shape="circle" coords="107,264,33" alt="" span
					title="Serbia-México: 3-1 resultado FINAL.">
				<area shape="circle" coords="107,330,33" alt="" span
					title="Polonia-Alemania: 0-2 resultado FINAL.">
				<area shape="circle" coords="107,400,33" alt="" span
					title="Dinamarca-DaniTeam: 0-1 resultado FINAL.">
				<area shape="circle" coords="107,460,33" alt="" span
					title="Catar-Uruguay: 0-1 resultado FINAL.">
				<area shape="circle" coords="107,530,33" alt="" span
					title="Ecuador-Corea del Sur: 3-1 resultado FINAL.">
				<area shape="circle" coords="107,630,33" alt="" span
					title="Arabia Saudita-Japón: 3-2 resultado FINAL.">
				<area shape="circle" coords="220,180,35" alt="" span
					title="Portugal-Tunéz: 4-0 resultado FINAL.">
				<area shape="circle" coords="220,280,35" alt="" span
					title="Serbia-Alemania: 1-2 resultado FINAL.">
				<area shape="circle" coords="220,450,35" alt="" span
					title="DaniTeam-Uruguay: 2-1 resultado FINAL.">
				<area shape="circle" coords="220,550,35" alt="" span
					title="Ecuador-Arabia Saudita: 2-0 resultado FINAL.">
				<area shape="circle" coords="320,240,35" alt="" span
					title="Portugal-Alemania: 1-3 resultado FINAL.">
				<area shape="circle" coords="320,490,35" alt="" span
					title="DaniTeam-Ecuador: 0-3 resultado FINAL.">
				<area shape="circle" coords="420,300,35" alt="" span
					title="Alemania-Ecuador: 3-0 resultado FINAL.">
				<area shape="circle" coords="520,370,35" alt="" span
					title="Alemania-SnowEleven: 3-2 resultado FINAL.">
				<area shape="circle" coords="620,400,35" alt="" span
					title="Francia-SnowEleven: 1-3 resultado FINAL.">
				<area shape="circle" coords="700,240,35" alt="" span
					title="Argentina-Francia: 1-4 resultado FINAL.">
				<area shape="circle" coords="700,500,35" alt="" span
					title="SnowEleven-Belgica: 4-1 resultado FINAL.">
				<area shape="circle" coords="800,180,35" alt="" span
					title="Argentina-Paises Bajos: 5-2 resultado FINAL.">
				<area shape="circle" coords="800,280,35" alt="" span
					title="Canada-Francia: 0-5 resultado FINAL.">
				<area shape="circle" coords="800,450,35" alt="" span
					title="Estados Unidos-SnowEleven: 2-3 resultado FINAL.">
				<area shape="circle" coords="800,550,35" alt="" span
					title="Belgica-FcNoConvo: 1-0 resultado FINAL.">
				<area shape="circle" coords="900,150,35" alt="" span
					title="Suiza-Argentina: 0-3 resultado FINAL.">
				<area shape="circle" coords="870,170,35" alt="" span
					title="Paises Bajos-Croacia: 2-1 resultado FINAL.">
				<area shape="circle" coords="900,265,35" alt="" span
					title="Ghana-Canada: 1-2 resultado FINAL.">
				<area shape="circle" coords="900,330,35" alt="" span
					title="Inglaterra-Francia: 0-3 resultado FINAL.">
				<area shape="circle" coords="900,400,35" alt="" span
					title="Camerún-Estados Unidos: 3-5 resultado FINAL.">
				<area shape="circle" coords="900,460,35" alt="" span
					title="España-SnowEleven: 1-3 resultado FINAL.">
				<area shape="circle" coords="900,530,35" alt="" span
					title="Belgica-Senegal: 3-0 resultado FINAL.">
				<area shape="circle" coords="900,600,35" alt="" span
					title="Marruecos-FcNoConvo: 3-4 resultado FINAL.">
				<area shape="circle" coords="520,500,35" alt="" span
					title="¡ALEMANIA CAMPEON DEL MUNDIALVD 2022!">
			</map>
		</div>
		<div id="container">
			<form action="ServletForm" method="POST">
				<h2>Busca los Resultados de tú Selección Favorita!</h2>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">Selección</span>
					<input name="buscaEquipo" type="text" class="form-control" required
					 pattern="[(a-zA-ZáéíóúAÉÍÓÚÑñ_)\w]{3,20}" placeholder="Usar GUION BAJO para los espacios">
				</div>
				<div>
					<button name="enviar" class="btn btn-danger" type="submit">Entrar</button>
				</div>
			</form>
			<br>
		<%HttpSession sesion = request.getSession();
					String sEquipo=(String)sesion.getAttribute("Seleccion");
					LinkedList<Resultados> equipo = Controller.getEquipo(sEquipo);
					if(sEquipo != null){	
						out.println("<table class='alee'>"
						+"<thead>"
							+"<tr class='alee'>"
								+"<th>Jornada</th>"
								+"<th>EquipoLocal</th>"
								+"<th>EquipoVisitante</th>"
								+"<th>Resultado</th>"
							+"</tr>"
						+"</thead>"
						+"<tbody>");
							
						for (int i = 0; i < equipo.size(); i++) {
						out.println("<tr class='alee'>"); 
						out.println("<td>" 	+ equipo.get(i).getJornada()+ "</td>");
						 out.println("<td>" + equipo.get(i).getEquipoL() + "</td>"); 
						 out.println("<td>" + equipo.get(i).getEquipoV() + "</td>"); 
						 out.println("<td>" + equipo.get(i).getResultado()+ "</td>");
						 out.println("</tr>"); 
					}
						out.println("</tbody>"
								+"</table>");
					}
					
					else{
						out.println();
					}
					sesion.invalidate();
					 %>
			
		
		</div>
</body>
</html>
