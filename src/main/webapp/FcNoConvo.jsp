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
<link rel="stylesheet" type="text/css" href="Nocon.css" />
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
<!--se a?ade este script para que funcione el Dropdown -->
<style type="text/css">
</style>
<title>FcNoConvo</title>
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
							<li><a class="dropdown-item text-dark" href="Camerun.jsp">Camer?n</a></li>
							<li><a class="dropdown-item text-dark" href="Canada.jsp">Canad?</a></li>
							<li><a class="dropdown-item text-dark" href="Catar.jsp">Catar</a></li>
							<li><a class="dropdown-item text-dark" href="Corea.jsp">Corea
									del Sur</a></li>
							<li><a class="dropdown-item text-dark" href="Croacia.jsp">Croacia</a></li>
							<li><a class="dropdown-item text-dark" href="Dinamarca.jsp">Dinamarca</a></li>
							<li><a class="dropdown-item text-dark" href="Ecuador.jsp">Ecuador</a></li>
							<li><a class="dropdown-item text-dark" href="Espa?a.jsp">Espa?a</a></li>
							<li><a class="dropdown-item text-dark"
								href="EstadosUnidos.jsp">Estados Unidos</a></li>
							<li><a class="dropdown-item text-dark" href="Francia.jsp">Francia</a></li>
							<li><a class="dropdown-item text-dark" href="Ghana.jsp">Ghana</a></li>
							<li><a class="dropdown-item text-dark" href="Inglaterra.jsp">Inglaterra</a></li>
							<li><a class="dropdown-item text-dark" href="Iran.jsp">Ir?n</a></li>
							<li><a class="dropdown-item text-dark" href="Japon.jsp">Jap?n</a></li>
							<li><a class="dropdown-item text-dark" href="Marruecos.jsp">Marruecos</a></li>
							<li><a class="dropdown-item text-dark" href="Mexico.jsp">M?xico</a></li>
							<li><a class="dropdown-item text-dark"
								href="Paisesbajos.jsp">Pa?ses Bajos</a></li>
							<li><a class="dropdown-item text-dark" href="Polonia.jsp">Polonia</a></li>
							<li><a class="dropdown-item text-dark" href="Portugal.jsp">Portugal</a></li>
							<li><a class="dropdown-item text-dark" href="Senegal.jsp">Senegal</a></li>
							<li><a class="dropdown-item text-dark" href="Serbia.jsp">Serbia</a></li>
							<li><a class="dropdown-item text-dark" href="Suiza.jsp">Suiza</a></li>
							<li><a class="dropdown-item text-dark" href="Tunez.jsp">T?nez</a></li>
							<li><a class="dropdown-item text-dark" href="Uruguay.jsp">Uruguay</a></li>
							<li><a class="dropdown-item text-dark"
								href="SnowEleven.jsp">SnowEleven</a></li>
							<li><a class="dropdown-item text-dark"
								href="DaniTeam.jsp">Dani FC</a></li>
							<li><a class="dropdown-item text-dark"
								href="#">FcNoConvo</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link text-white"
						href="Buscador.jsp">Buscador de Jugadores</a></li>
						<%HttpSession admin = request.getSession();	
					String sEmail = (String)admin.getAttribute("logemail");
					if(sEmail!=null){
						if(sEmail.equals("admin@gmail.com")){
							out.println("<li class='nav-item'><a class='nav-link text-white'"+
									" href='altajugador.jsp'>A?adir Jugadores</a></li>");
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
		FcNoConvo <img src="imagenes/Leones.png" alt="FcNoConvo" width="100"
			height="100">
	</h1>
	<table class="alee">
		<thead>
			<tr>

				<th class="ale" scope="row">Nombre</th>
				<th class="ale" scope="row">Posicion</th>
				<th class="ale" scope="row">Dorsal</th>
				<th class="ale" scope="row">Selecci?n</th>

			</tr>
		</thead>
		<tbody>
			<%
					LinkedList<Jugadores> lista2 = Controller.getFcNoConvo();
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
			<h2>?ltima formaci?n</h2>

		</div>
		<div class="zentriert p4">
			<a title="Partidos amistosos" class="hervorgehobener_link">Partidos
				amistosos</a> - <a title="2.  Jornada">2. Jornada</a> mar, 29/03/2022 -
			21:15 Hora
		</div>
		<div class="formation_begegnung">
			<div class="formation_verein text-right">
				<a title="FcNoConvo">FcNoConvo</a> <a title="FcNoConvo"><img
					src="imagenes/Leones.png" width="25.5" title="FcNoConvo"
					class="flaggenrahmen" /></a>
			</div>
			<div class="formation_ergebnis">
				<a title="Cr?nica" class="ergebnis-link" id="3773020">5:0</a>
			</div>
			<div class="formation_verein text-left">
				<a title="Sud?frica"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/159.png?lm=1520611569"
					title="Sud?frica" alt="Sud?frica" class="flaggenrahmen" /></a> <a
					title="Sud?frica">Sud?frica</a>
			</div>
			<div class="clearer"></div>
		</div>
		<div class="row" style="padding: 0px; margin: 0px;">
			<div
				class="large-7 aufstellung-vereinsseite columns small-12 unterueberschrift aufstellung-unterueberschrift">
				Formaci?n inicial: 3-4-1-2</div>

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
						<div class="rn">13</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Oblak</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 62%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">5</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Bonucci</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">4</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Alaba</a>
						</span>
					</div>
					<div class="kapitaenicon-formation"
						style="position: absolute; top: 17px; left: 55%;">&nbsp;</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituci?n Min 65 por V.Lindel?f" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">22</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Ajer</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 34%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">3</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Spinazzola</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 30%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">19</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Kessi?</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituci?n Min 65 por Laimer" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 52%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">8</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Barella</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 35%; bottom: 65%;">
						<span class="icons_sprite icon-gelbekarte-formation" span
							title="Tarjeta de Amarilla Min 67" rel="tooltip">&nbsp;</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituci?n Min 79 Tonali" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 34%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">23</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Cuadrado</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituci?n Min 88 por ?alhanoglu" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 22%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">21</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Mahrez</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituci?n Min 64 por  ?degaard" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 2%; left: 50%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">7</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Aubameyang</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 32%;">
						<span class="icons_sprite icon-tor-formation" span
							title="GOL Min 34" rel="tooltip">&nbsp;</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustituci?n Min 65 por Salah" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 2%; left: 30%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">9</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a>Haaland</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 32%;">
						<span class="icons_sprite icon-tor-formation" span
							title="GOL Min 23" rel="tooltip">&nbsp;</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 20%;">
						<span class="icons_sprite icon-tor-formation" span
							title="GOL Min 76 " rel="tooltip">&nbsp;</span>
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
						<div class="ersatz-rn">25</div>
					</td>
					<td><a title="David Ospina">David Ospina</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">1</div>
					</td>
					<td><a title="Gianluigi Donnarumma">Gianluigi Donnarumma</a>
					</td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">2</div>
					</td>
					<td><a title="Ramy Bensebaini">Ramy Bensebaini</a></td>
					<td>LI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">15</div>
					</td>
					<td><a title="Victor Lindel?f">Victor Lindel?f</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustituci?n Min 80 por Alaba" rel="tooltip">&nbsp;</span></td>
					<td>DFC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">6</div>
					</td>
					<td><a title="Youcef Atal">Youcef Atal</a></td>
					<td>LD</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">14</div>
					</td>
					<td><a title="James Rodriguez">James Rodriguez</a></td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">12</div>
					</td>
					<td><a title="Sandro Tonali">Sandro Tonali</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustituci?n Min 79 por Barella" rel="tooltip">&nbsp;</span>
						<span style="cursor: pointer !important;"
						class="icons_sprite icon-tor-formation" span title="GOL Min 90+2"
						rel="tooltip">&nbsp;</span></td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">16</div>
					</td>
					<td><a title="Konrad Laimer">Konrad Laimer</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustituci?n Min 65 por Kessi?" rel="tooltip">&nbsp;</span>
					</td>
					<td>MCD</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">19</div>
					</td>
					<td><a title="Hakan ?alhanoglu">Hakan ?alhanoglu</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustituci?n Min 88 por Cuadrado" rel="tooltip">&nbsp;</span>
					</td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">17</div>
					</td>
					<td><a title="Martin  ?degaard">Martin ?degaard</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustituci?n Min 64 por Mahrez" rel="tooltip">&nbsp;</span>
					</td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">24</div>
					</td>
					<td><a title="Ciro Inmobile">Ciro Inmobile</a></td>
					<td>DC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">10</div>
					</td>
					<td><a title="Mohammed Salah">Mohammed Salah</a> <span
						style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustituci?n Min 65 por Aubameyang" rel="tooltip">&nbsp;</span>
						<span style="cursor: pointer !important;"
						class="icons_sprite icon-tor-formation" span title="GOL Min 82"
						rel="tooltip">&nbsp;</span></td>
					<td>ED</td>
				</tr>
				<tr style="background-color: #FBFBFB;">
					<td>
						<div>Entrenador:</div>
					</td>
					<td><a title="Ernesto Valverde" id="0" />Ernesto Valverde</a></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
</body>
</html>
