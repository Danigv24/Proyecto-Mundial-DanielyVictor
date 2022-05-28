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
	href="https://tmssl.akamaized.net/styles/tm-main.min.css?lm=1649925962" />
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
	href="https://tmssl.akamaized.net/css/stylesheets/relevante_news.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/jquery.bxslider.min.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/jquery.custom.bxslider.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/beliebtheit.css?lm=1649922393" />

<link rel="stylesheet" type="text/css" href="corea.css" />
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
<title>Selección de Fútbol Croata</title>
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
							<li><a class="dropdown-item text-danger" href="#">Croacia</a></li>
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
								href="PaisesBajos.jsp">Países Bajos</a></li>
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
	<br>
	<h1>
		Selección de Fútbol Croata <img src="imagenes/croacia.png"
			alt="croacia" width="100" height="100">
	</h1>
	<div class="summary"></div>
	<table class="alee">
		<thead>
			<tr>
				<th class="ale" scope="row">Nombre</th>
			    <th class="ale"  scope="row">Posicion</th>
			    <th class="ale" scope="row">Dorsal</th>
		     	<th class="ale" scope="row">Selección</th>
			</tr>
		</thead>
		<tbody>
			<%
					LinkedList<Jugadores> lista2 = Controller.getCroacia();
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
	<div class="keys" style="display: none"
		title="/kroatien/startseite/verein/3556">
		<span>205927</span><span>160482</span><span>226073</span><span>475959</span><span>238266</span><span>282144</span><span>37838</span><span>46083</span><span>71594</span><span>293194</span><span>39125</span><span>362977</span><span>316934</span><span>374954</span><span>51471</span><span>205938</span><span>27992</span><span>42460</span><span>293200</span><span>387106</span><span>95438</span><span>293169</span><span>119150</span><span>46580</span><span>46413</span>
	</div>
	</div>
	</div>

	</div>

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
			<a title="Partidos amistosos" class="hervorgehobener_link"/freundschaftsspiele/startseite/wettbewerb/FS">Partidos
				amistosos</a> - <a title="2.  Jornada" class=""/freundschaftsspiele/spieltag/wettbewerb/FS/saison_id/2021/spieltag/2">2.
				Jornada</a> mar, 29/03/2022 - 16:00 Hora
		</div>
		<div class="formation_begegnung">
			<div class="formation_verein text-right">
				<a title="Croacia"/kroatien/startseite/verein/3556/saison_id/2021">Croacia</a>
				<a title="Croacia"/kroatien/startseite/verein/3556/saison_id/2021"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/37.png?lm=1520611569"
					title="Croacia" alt="Croacia" class="flaggenrahmen" /></a>
			</div>
			<div class="formation_ergebnis">
				<a title="Crónica" class="ergebnis-link" id="3773013"/spielbericht/index/spielbericht/3773013">2:1</a>
			</div>
			<div class="formation_verein text-left">
				<a title="Bulgaria"/bulgarien/startseite/verein/3394/saison_id/2021"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/28.png?lm=1520611569"
					title="Bulgaria" alt="Bulgaria" class="flaggenrahmen" /></a> <a
					title="Bulgaria"/bulgarien/startseite/verein/3394/saison_id/2021">Bulgaria</a>
			</div>
			<div class="clearer"></div>
		</div>
		<div class="row" style="padding: 0px; margin: 0px;">
			<div
				class="large-7 aufstellung-vereinsseite columns small-12 unterueberschrift aufstellung-unterueberschrift">
				Formación inicial: 3-1-4-2</div>

		</div>
		<div class="large-7 columns small-12 aufstellung-vereinsseite"
			style="display: inline-block; position: relative;">
			<div style="margin-top: 76.20%;"></div>
			<div
				style="position: absolute; top: 0; bottom: 0; left: 0; right: 0;">
				<img src="imagenes/Background.png"
					style="position: absolute; height: auto; width: 1080px;"
					class="lazy" />
				<div class="aufstellung-spieler-container"
					style="top: 80%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">23</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/ivica-ivusic/profil/spieler/160482">Ivusic</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 62%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">5</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/duje-caleta-car/profil/spieler/238266">Caleta-Car</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 36%; bottom: 77%;">
						<span class="icons_sprite icon-gelbekarte-formation" span
							title="Tarjeta Amarilla Min 33" rel="tooltip">&nbsp;</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 30%; bottom: 76%;">
						<span class="icons_sprite icon-gelbrotekarte-formation" span
							title="Segunda Tarjeta Amarilla y ROJA Min 63" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">2</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/mile-skoric/profil/spieler/71594">Skoric</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 35%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 27 por Pongracic" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">21</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/domagoj-vida/profil/spieler/46083">Vida</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 35%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 46 por Perisic" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 18%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">3</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/borna-barisic/profil/spieler/39125">Barisic</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 36%; bottom: 77%;">
						<span class="icons_sprite icon-gelbekarte-formation" span
							title="Tarjeta Amarilla Min 77" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">7</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/nikola-moro/profil/spieler/316934">Moro</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 35%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 46 por Kovacic" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 23%; left: 30%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">15</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/mario-pasalic/profil/spieler/205938">Pasalic</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 2%; left: 50%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">14</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/marko-livaja/profil/spieler/95438">Livaja</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 35%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 61 por Kramaric" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 23%; left: 50%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">11</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/lovro-majer/profil/spieler/387106">Majer</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 35%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 72 por L.Modric" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 2%; left: 30%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">13</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/nikola-vlasic/profil/spieler/293200">Vlasic</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 35%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 61 por Budimir" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 18%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">18</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/mislav-orsic/profil/spieler/119150">Orsic</a>
						</span>
					</div>
				</div>
			</div>
		</div>
		<div
			class="large-5 aufstellung-vereinsseite columns small-12 hide-for-small unterueberschrift"
			style="border-left: 1px solid #e4e4e4; border-right: 0px solid #e4e4e4;">
			Banquillo</div>
		<div
			class="large-5 columns small-12 show-for-small unterueberschrift aufstellung-vereinsseite"
			style="border-top: 1px solid #e4e4e4;">Banquillo</div>
		<div
			class="large-5 columns small-12 aufstellung-ersatzbank-box aufstellung-vereinsseite"
			style="padding: 0px; margin-bottom: -1px;">
			<table class="ersatzbank">
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">12</div>
					</td>
					<td><a title="Ivo Grbic"/ivo-grbic/profil/spieler/226073">Ivo
							Grbic</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">1</div>
					</td>
					<td><a title="Dominik Livakovic"/dominik-livakovic/profil/spieler/205927">Dominik
							Livakovic</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">20</div>
					</td>
					<td><a title="Josko Gvardiol"/josko-gvardiol/profil/spieler/475959">Josko
							Gvardiol</a></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">6</div>
					</td>
					<td><a title="Marin Pongracic"/marin-pongracic/profil/spieler/282144">Marin
							Pongracic</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 27 por Skoric" rel="tooltip">&nbsp;</span>
						<span style="cursor: pointer !important;"
						class="icons_sprite icon-gelbekarte-formation" span
						title="Tarjeta Amarilla Min 88" rel="tooltip">&nbsp;</span></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">19</div>
					</td>
					<td><a title="Borna Sosa"/borna-sosa/profil/spieler/293194">Borna
							Sosa</a></td>
					<td>LI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">22</div>
					</td>
					<td><a title="Josip Juranovic"/josip-juranovic/profil/spieler/362977">Josip
							Juranovic</a></td>
					<td>LD</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">16</div>
					</td>
					<td><a title="Kristijan Jakic"/kristijan-jakic/profil/spieler/374954">Kristijan
							Jakic</a></td>
					<td>PIV</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">8</div>
					</td>
					<td><a title="Mateo Kovacic"/mateo-kovacic/profil/spieler/51471">Mateo
							Kovacic</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 46 Moro" rel="tooltip">&nbsp;</span></td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">10</div>
					</td>
					<td><a title="Luka Modric"/luka-modric/profil/spieler/27992">Luka
							Modric</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 72 por Majer" rel="tooltip">&nbsp;</span> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-tor-formation" span title="GOL Min 76"
						rel="tooltip">&nbsp;</span></td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">4</div>
					</td>
					<td><a title="Ivan Perisic"/ivan-perisic/profil/spieler/42460">Ivan
							Perisic</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 46 por Vida" rel="tooltip">&nbsp;</span></td>
					<td>II</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">17</div>
					</td>
					<td><a title="Ante Budimir"/ante-budimir/profil/spieler/46413">Ante
							Budimir</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 61 por Vlasic" rel="tooltip">&nbsp;</span>
					</td>
					<td>DEL</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">9</div>
					</td>
					<td><a title="Andrej Kramaric"/andrej-kramaric/profil/spieler/46580">Andrej
							Kramaric</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 61 por Livaja" rel="tooltip">&nbsp;</span>
						<span style="cursor: pointer !important;"
						class="icons_sprite icon-tor-formation" span title="GOL Min 80"
						rel="tooltip">&nbsp;</span></td>
					<td>DEL</td>
				</tr>
				<tr style="background-color: #FBFBFB;">
					<td>
						<div>Entrenador:</div>
					</td>
					<td><a title="Zlatko Dalic" id="0"/zlatko-dalic/profil/trainer/2711">Zlatko
							Dalic</a></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
</body>
</html>
