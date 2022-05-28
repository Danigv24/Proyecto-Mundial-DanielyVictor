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
	href="https://tmssl.akamaized.net/styles/tm-main.min.css?lm=1649926029" />
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
<title>Selección Inglesa de Fútbol</title>
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
							<li><a class="dropdown-item text-dark" href="Croacia.jsp">Croacia</a></li>
							<li><a class="dropdown-item text-dark" href="Dinamarca.jsp">Dinamarca</a></li>
							<li><a class="dropdown-item text-dark" href="Ecuador.jsp">Ecuador</a></li>
							<li><a class="dropdown-item text-dark" href="España.jsp">España</a></li>
							<li><a class="dropdown-item text-dark"
								href="EstadosUnidos.jsp">Estados Unidos</a></li>
							<li><a class="dropdown-item text-dark" href="Francia.jsp">Francia</a></li>
							<li><a class="dropdown-item text-dark" href="Ghana.jsp">Ghana</a></li>
							<li><a class="dropdown-item text-danger" href="#">Inglaterra</a></li>
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
		Selección Inglesa de Fútbol <img src="imagenes/inglaterra.png"
			alt="inglaterra" width="100" height="100">
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
					LinkedList<Jugadores> lista2 = Controller.getInglaterra();
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
		title="/england/startseite/verein/3299">
		<span>130164</span><span>192080</span><span>52570</span><span>177907</span><span>335721</span><span>253677</span><span>392757</span><span>186590</span><span>128901</span><span>183288</span><span>730893</span><span>341051</span><span>357662</span><span>406635</span><span>581678</span><span>181579</span><span>488362</span><span>61651</span><span>346483</span><span>392765</span><span>134425</span><span>203460</span><span>132098</span><span>324358</span>
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
				Jornada</a> mar, 29/03/2022 - 20:45 Hora
		</div>
		<div class="formation_begegnung">
			<div class="formation_verein text-right">
				<a title="Inglaterra"/england/startseite/verein/3299/saison_id/2021">Inglaterra</a>
				<a title="Inglaterra"/england/startseite/verein/3299/saison_id/2021"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/189.png?lm=1520611569"
					title="Inglaterra" alt="Inglaterra" class="flaggenrahmen" /></a>
			</div>
			<div class="formation_ergebnis">
				<a title="Crónica" class="ergebnis-link" id="3773016"/spielbericht/index/spielbericht/3773016">3:0</a>
			</div>
			<div class="formation_verein text-left">
				<a title="Costa de Marfil"/elfenbeinkuste/startseite/verein/3591/saison_id/2021"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/38.png?lm=1520611569"
					title="Costa de Marfil" alt="Costa de Marfil" class="flaggenrahmen" /></a>
				<a title="Costa de Marfil"/elfenbeinkuste/startseite/verein/3591/saison_id/2021">Costa
					de Marfil</a>
			</div>
			<div class="clearer"></div>
		</div>
		<div class="row" style="padding: 0px; margin: 0px;">
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
					style="position: absolute; height: auto; width: 1080px;"
					class="lazy" />
				<div class="aufstellung-spieler-container"
					style="top: 80%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">1</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/nick-pope/profil/spieler/192080">Pope</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">5</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/tyrone-mings/profil/spieler/253677">Mings</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 32%;">
						<span class="icons_sprite icon-tor-formation" span
							title="GOL Min 90+3" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 52.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">6</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/harry-maguire/profil/spieler/177907">Maguire</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 73%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">2</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/ben-white/profil/spieler/335721">White</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 46 por Walker-Peters" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 7.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">3</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/tyrick-mitchell/profil/spieler/730893">Mitchell</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Luke Shaw" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">4</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/declan-rice/profil/spieler/357662">Rice</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 52%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">8</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/james-ward-prowse/profil/spieler/181579">Ward-Prowse</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 79 por Gallagher" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 23%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">10</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/jude-bellingham/profil/spieler/581678">Bellingham</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 18%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">7</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/raheem-sterling/profil/spieler/134425">Sterling</a>
						</span>
					</div>
					<div class="kapitaenicon-formation"
						style="position: absolute; top: 17px; left: 55%;">&nbsp;</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 32%;">
						<span class="icons_sprite icon-tor-formation" span
							title="GOL Min 45" rel="tooltip">&nbsp;</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Phil Foden" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 18%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">11</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/jack-grealish/profil/spieler/203460">Grealish</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Smith Rowe" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 3%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">9</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/ollie-watkins/profil/spieler/324358">Watkins</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 32%;">
						<span class="icons_sprite icon-tor-formation" span
							title="GOL Min 30" rel="tooltip">&nbsp;</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Harry Kane" rel="tooltip">&nbsp;</span>
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
						<div class="ersatz-rn">13</div>
					</td>
					<td><a title="Fraser Forster"/fraser-forster/profil/spieler/52570">Fraser
							Forster</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">22</div>
					</td>
					<td><a title="Jordan Pickford"/jordan-pickford/profil/spieler/130164">Jordan
							Pickford</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">16</div>
					</td>
					<td><a title="Conor Coady"/conor-coady/profil/spieler/128901">Conor
							Coady</a></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">15</div>
					</td>
					<td><a title="Marc Guéhi"/marc-guehi/profil/spieler/392757">Marc
							Guéhi</a></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">12</div>
					</td>
					<td><a title="Luke Shaw"/luke-shaw/profil/spieler/183288">Luke
							Shaw</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Mitchell" rel="tooltip">&nbsp;</span>
					</td>
					<td>LI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">17</div>
					</td>
					<td><a title="Kyle Walker-Peters"/kyle-walker-peters/profil/spieler/341051">Kyle
							Walker-Peters</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 46 White B." rel="tooltip">&nbsp;</span></td>
					<td>LD</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">18</div>
					</td>
					<td><a title="Phil Foden"/phil-foden/profil/spieler/406635">Phil
							Foden</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Sterling" rel="tooltip">&nbsp;</span>
					</td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">21</div>
					</td>
					<td><a title="Conor Gallagher"/conor-gallagher/profil/spieler/488362">Conor
							Gallagher</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 79 por Ward-Prowse" rel="tooltip">&nbsp;</span>
					</td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">14</div>
					</td>
					<td><a title="Jordan Henderson"/jordan-henderson/profil/spieler/61651">Jordan
							Henderson</a></td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">19</div>
					</td>
					<td><a title="Mason Mount"/mason-mount/profil/spieler/346483">Mason
							Mount</a></td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">23</div>
					</td>
					<td><a title="Emile Smith Rowe"/emile-smith-rowe/profil/spieler/392765">Emile
							Smith Rowe</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Grealish" rel="tooltip">&nbsp;</span>
					</td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">20</div>
					</td>
					<td><a title="Harry Kane"/harry-kane/profil/spieler/132098">Harry
							Kane</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Watkins" rel="tooltip">&nbsp;</span>
					</td>
					<td>DEL</td>
				</tr>
				<tr style="background-color: #FBFBFB;">
					<td>
						<div>Entrenador:</div>
					</td>
					<td><a title="Gareth Southgate" id="3744"/gareth-southgate/profil/trainer/3358">Gareth
							Southgate</a></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
</body>
</html>
