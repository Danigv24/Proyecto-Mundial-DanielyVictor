<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Jugadores"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="com.ies.baroja.ServletForm"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/stylesheets/menue.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/styles/tm-main.min.css?lm=1649925874" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/stylesheets/main.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/stylesheets/main_desktop.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/chosen.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/stylesheets/vereinsseite.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/spielbericht.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/statistiken.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/meintm.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/stylesheets/verein.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/aufstellung.css?lm=1649922393" />

<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/jquery.bxslider.min.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/jquery.custom.bxslider.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/beliebtheit.css?lm=1649922393" />
<link rel="stylesheet" type="text/css" href="danit.css" />
<link rel="icon" href="imagenes/logoM.jpg">
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
<style type="text/css">
</style>
<title>Dani Team</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light"
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
							<li><a class="dropdown-item text-dark"
								href="SnowEleven.jsp">SnowEleven</a></li>
							<li><a class="dropdown-item text-dark"
								href="#">Dani FC</a></li>
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
	<br>
	<h1>
		Dani Team <img src="imagenes/DRA256.png" alt="DaniTeam" width="100"
			height="100">
	</h1>
	<table class="alee">
		<thead>
			<tr>

				<th class="ale" scope="row">Nombre</th>
				<th class="ale" scope="row">Posicion</th>
				<th class="ale" scope="row">Dorsal</th>
				<th class="ale" scope="row">Selección</th>


			</tr>
		</thead>
		<tbody>
			<%
					LinkedList<Jugadores> lista2 = Controller.getDaniTeam();
					for (int i = 0; i < lista2.size(); i++) {
					out.println("<tr scope='row'>");
					out.println("<td>" + lista2.get(i).getNombre() + "</td>");
					out.println("<td>" + lista2.get(i).getPosicion() + "</td>");
					out.println("<td>" + lista2.get(i).getDorsal() + "</td>");
					out.println("<td>" + lista2.get(i).getnombreequipo()+ "</td>");
					out.println("</tr>");
				}
				%>
		</tbody>
	</table>



	<script async src="/js/custom/tm-track-links.min.js" type="module"></script>
	<div class="flex-container">


		<div class="clearer"></div>
	</div>
	<div class="flex-container">
		<div class="clearer"></div>
	</div>
	<div class="box viewport-tracking" data-viewport="Letzte_Formation">
		<div class="subkategorie-header">
			<h2>Última formación</h2>

		</div>
		<div class="zentriert p4">
			<a title="Partidos amistosos" class="hervorgehobener_link">Partidos
				amistosos</a> - <a title="2.  Jornada" class="">2. Jornada</a> mar,
			29/03/2022 - 20:45 Hora
		</div>
		<div class="formation_begegnung">
			<div class="formation_verein text-right">
				<a title="Países Bajos">Países Bajos</a><a title="Países Bajos"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/122.png?lm=1520611569"
					title="Países Bajos" alt="Países Bajos" class="flaggenrahmen" /></a>
			</div>
			<div class="formation_ergebnis">
				<a title="Crónica" class="ergebnis-link" id="3773015">1:1</a>
			</div>
			<div class="formation_verein text-left">
				<a title="Alemania"><img src="imagenes/DRA256.png" width="27"
					height="50" title="DaniTeam" alt="DaniTeam" class="flaggenrahmen" /></a>
				<a title="Alemania">DaniTeam</a>
			</div>
			<div class="clearer"></div>
		</div>
		<div class="row" style="padding: 0px; margin: 0px; position: right;">
			<div
				class="large-7 aufstellung-vereinsseite columns small-12 unterueberschrift aufstellung-unterueberschrift">
				Formación inicial: 4-2-3-1</div>

		</div>
		<div class="large-7 columns small-12 aufstellung-vereinsseite"
			style="display: inline-block; position: relative;">
			<div style="margin-top: 76.20%;"></div>
			<div
				style="position: absolute; top: 0; bottom: 0; left: 0; right: 0;">
				<img src="imagenes/Background.png"
					style="position: absolute; height: auto; width: 1090px;"
					class="lazy" />
				<div class="aufstellung-spieler-container"
					style="top: 80%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">1</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>David
								Garcia</a></span>
					</div>
					<div class="kapitaenicon-formation"
						style="position: absolute; top: 17px; left: 55%;">&nbsp;</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 73%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">23</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Cafú</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -2px; left: 30%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituido Min 81 por Michel Salgado" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 52.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">4</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Puyol</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 25%; bottom: 75%;"
						span title="Tarjeta Amarilla Min 89">
						<span class="icons_sprite icon-gelbekarte-formation" span
							tittle="Sustitución" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">15</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Beckenbauer</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 7.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">2</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Roberto
								Carlos</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 20%; bottom: 68%;"
						span title="Tarjeta Amarilla Min 83">
						<span class="icons_sprite icon-gelbekarte-formation"
							data-type="link"
							data-content="/ajax/ereignis/spielbericht/16775667" rel="tooltip">&nbsp;</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -2px; left: 30%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituido Min 86 por Joan Capdevila" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 52%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">19</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Vieira</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 23%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">8</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Iniesta</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -2px; left: 28%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituido Min 69 por Zinedine Zidane" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">16</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Xavi
								Hernández</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -2px; left: 28%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituido Min 69 por Andrea Pirlo" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 18%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">14</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Cruyff</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -2px; left: 28%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituido Min 86 por Maradona" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 18%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">21</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Daniel
								Garcia</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 30%;"
						span title="GOL Min 45+1">
						<span class="icons_sprite icon-tor-formation" span
							tittle="Sustitución" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 3%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">9</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>María
								Frias</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -2px; left: 28%;">
						<span class="icons_sprite icon-auswechslung-formation" span
							title="Sustituido Min 81 por Ronaldo Nazario" rel="tooltip">&nbsp;</span>
					</div>
				</div>
			</div>
		</div>

		<div
			class="large-5 columns small-12 show-for-small unterueberschrift aufstellung-vereinsseite"
			style="border-top: 1px solid #e4e4e4;">Banquillo</div>
		<div
			class="large-5 aufstellung-vereinsseite columns small-12 hide-for-small unterueberschrift"
			style="border-right: 0px solid #e4e4e4;">Banquillo</div>
		<div
			class="large-5 columns small-12 aufstellung-ersatzbank-box aufstellung-vereinsseite"
			style="padding: 0px; margin-bottom: -1px;">
			<table class="ersatzbank">
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">13</div>
					</td>
					<td><a title="Iker Casillas">Iker Casillas</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">22</div>
					</td>
					<td><a title="Lev Yashin">Lev Yashin</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">5</div>
					</td>
					<td><a title="Fernando Hierro">Fernando Hierro</a></td>
					<td>DFC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">22</div>
					</td>
					<td><a title="Paolo Maldini">Paolo Maldini</a></td>
					<td>DFC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">3</div>
					</td>
					<td><a title="Joan Capdevila">Joan Capdevila</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 86 por Roberto Carlos" rel="tooltip">&nbsp;</span>
					</td>
					<td>LI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">6</div>
					</td>
					<td><a title="Benjamin Henrichs">Michel Salgado</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 81 por Cafú" rel="tooltip">&nbsp;</span></td>
					<td>LD</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">6</div>
					</td>
					<td><a title="Anton Stach">Anton Stach</a></td>
					<td>PIV</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">24</div>
					</td>
					<td><a title="Lothar Matthaus">Lothar Matthaus</a></td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">12</div>
					</td>
					<td><a title="Andrea Pirlo">Andrea Pirlo</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 69 por Xavi Hernández" rel="tooltip">&nbsp;</span>
					</td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">17</div>
					</td>
					<td><a title="Zinedine Zidane">Zinedine Zidane</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 69 por Andrés Iniesta" rel="tooltip">&nbsp;</span>
					</td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">20</div>
					</td>
					<td><a title="Diego Armando Maradona">Diego Armando
							Maradona</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 86 por J.Cruyff" rel="tooltip">&nbsp;</span>
					</td>
					<td>EI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">7</div>
					</td>
					<td><a title="Ronaldo Nazario">Ronaldo Nazario</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 81 por María Frias" rel="tooltip">&nbsp;</span>
					</td>
					<td>DC</td>
				</tr>
				<tr style="background-color: #FBFBFB;">
					<td>
						<div>Entrenador:</div>
					</td>
					<td><a title="Alex Ferguson" id="0"> Alex Ferguson</a></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
</body>
</html>
