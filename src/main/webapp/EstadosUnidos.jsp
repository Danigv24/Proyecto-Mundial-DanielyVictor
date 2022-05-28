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
<link rel="stylesheet" type="text/css" href="estados.css" />
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
<title>Selección de Fútbol Estadounidense</title>
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
							<li><a class="dropdown-item text-dark" href="sede.jsp">Alemania</a></li>
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
							<li><a class="dropdown-item text-danger" href="#">Estados
									Unidos</a></li>
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
		Selección de Fútbol Estadounidense<img
			src="imagenes/EstadosUnidos.png" alt="EstadosUnidos" width="100"
			height="100">
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
					LinkedList<Jugadores> lista2 = Controller.getEstadosunidos();
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
		title="/vereinigte-staaten/startseite/verein/3505">
		<span>221624</span><span>242284</span><span>468022</span><span>393321</span><span>245337</span><span>271072</span><span>282199</span><span>349701</span><span>504147</span><span>336168</span><span>332705</span><span>189895</span><span>504209</span><span>354792</span><span>315762</span><span>504215</span><span>474249</span><span>337807</span><span>315779</span><span>503991</span><span>189876</span><span>627207</span><span>355369</span>
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
			<a title="Clasificación Mundial CONCACAF"
				class="hervorgehobener_link"/wm-qualifikation-concacaf/startseite/pokalwettbewerb/WMQ3">Clasificación
				Mundial CONCACAF</a> - <a title="Grupo 1" class=""/wm-qualifikation-concacaf/spieltag/pokalwettbewerb/WMQ3/saison_id/2020/spieltag/22/gruppe/1">Grupo
				1</a> jue, 31/03/2022 - 03:05 Hora
		</div>
		<div class="formation_begegnung">
			<div class="formation_verein text-right">
				<a title="Costa Rica"/costa-rica/startseite/verein/8497/saison_id/2020">Costa
					Rica</a> <a title="Costa Rica"/costa-rica/startseite/verein/8497/saison_id/2020"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/36.png?lm=1520611569"
					title="Costa Rica" alt="Costa Rica" class="flaggenrahmen" /></a>
			</div>
			<div class="formation_ergebnis">
				<a title="Crónica" class="ergebnis-link" id="3583618"/spielbericht/index/spielbericht/3583618">2:0</a>
			</div>
			<div class="formation_verein text-left">
				<a title="Estados Unidos"/vereinigte-staaten/startseite/verein/3505/saison_id/2020"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/184.png?lm=1520611569"
					title="Estados Unidos" alt="Estados Unidos" class="flaggenrahmen" /></a>
				<a title="Estados Unidos"/vereinigte-staaten/startseite/verein/3505/saison_id/2020">Estados
					Unidos</a>
			</div>
			<div class="clearer"></div>
		</div>
		<div class="row" style="padding: 0px; margin: 0px;">
			<div
				class="large-7 aufstellung-vereinsseite columns small-12 unterueberschrift aufstellung-unterueberschrift">
				Formación inicial: 4-4-3 defensivo</div>

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
						<span class="aufstellung-rueckennummer-name"> <a/zack-steffen/profil/spieler/221624">Steffen</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">12</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/miles-robinson/profil/spieler/468022">Robinson</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 52.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">3</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/walker-zimmerman/profil/spieler/245337">Zimmerman</a>
						</span>
					</div>
					<div class="kapitaenicon-formation"
						style="position: absolute; top: 17px; left: 55%;">&nbsp;</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 7.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">5</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/antonee-robinson/profil/spieler/349701">Robinson</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 73%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">2</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/deandre-yedlin/profil/spieler/255916">Yedlin</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 61 por Moore" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 52%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">23</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/kellyn-acosta/profil/spieler/189895">Acosta</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">4</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/tyler-adams/profil/spieler/332705">Adams</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 46 Luca de la Torre" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 22%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">6</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/yunus-musah/profil/spieler/503991">Musah</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 10%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">10</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/christian-pulisic/profil/spieler/315779">Pulisic</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 84 Morris" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 3%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">9</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/ricardo-pepi/profil/spieler/627207">Pepi</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Reyna" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 10%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">21</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/timothy-weah/profil/spieler/370846">Weah</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Ferreira" rel="tooltip">&nbsp;</span>
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
						<div class="ersatz-rn">18</div>
					</td>
					<td><a title="Ethan Horvath"/ethan-horvath/profil/spieler/242284">Ethan
							Horvath</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">15</div>
					</td>
					<td><a title="Aaron Long"/aaron-long/profil/spieler/271072">Aaron
							Long</a></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">22</div>
					</td>
					<td><a title="Erik Palmer-Brown"/erik-palmer-brown/profil/spieler/282199">Erik
							Palmer-Brown</a></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">19</div>
					</td>
					<td><a title="James Sands"/james-sands/profil/spieler/393321">James
							Sands</a></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">16</div>
					</td>
					<td><a title="George Bello"/george-bello/profil/spieler/504147">George
							Bello</a></td>
					<td>LI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">7</div>
					</td>
					<td><a title="Shaq Moore"/shaq-moore/profil/spieler/336168">Shaq
							Moore</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 61 por Yedlin" rel="tooltip">&nbsp;</span>
					</td>
					<td>LD</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">14</div>
					</td>
					<td><a title="Luca de la Torre"/luca-de-la-torre/profil/spieler/315762">Luca
							de la Torre</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 46 Adams" rel="tooltip">&nbsp;</span></td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">8</div>
					</td>
					<td><a title="Cristian Roldán"/cristian-roldan/profil/spieler/354792">Cristian
							Roldán</a></td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">20</div>
					</td>
					<td><a title="Jesús Ferreira"/jesus-ferreira/profil/spieler/474249">Jesús
							Ferreira</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Weah" rel="tooltip">&nbsp;</span></td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">11</div>
					</td>
					<td><a title="Giovanni Reyna"/giovanni-reyna/profil/spieler/504215">Giovanni
							Reyna</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Pepi" rel="tooltip">&nbsp;</span></td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">13</div>
					</td>
					<td><a title="Jordan Morris"/jordan-morris/profil/spieler/337807">Jordan
							Morris</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 84 por Pulisic" rel="tooltip">&nbsp;</span>
					</td>
					<td>EI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">17</div>
					</td>
					<td><a title="Jordan Siebatcheu"/jordan-siebatcheu/profil/spieler/355369">Jordan
							Siebatcheu</a></td>
					<td>DEL</td>
				</tr>
				<tr style="background-color: #FBFBFB;">
					<td>
						<div>Entrenador:</div>
					</td>
					<td><a title="Gregg Berhalter" id="0"/gregg-berhalter/profil/trainer/22272">Gregg
							Berhalter</a></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
</body>
</html>
