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
	href="https://tmssl.akamaized.net/styles/tm-main.min.css?lm=1649925781" />
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

<link rel="stylesheet" type="text/css" href="ppaises.css" />
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
<title>Selección Holandesa de Fútbol</title>
</head>
<body>
	<nav class="navbar  navbar-expand-md navbar-light"
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
							<li><a class="dropdown-item text-dark"
								href="Inglaterra.jsp">Inglaterra</a></li>
							<li><a class="dropdown-item text-dark" href="Iran.jsp">Irán</a></li>
							<li><a class="dropdown-item text-dark" href="Japon.jsp">Japón</a></li>
							<li><a class="dropdown-item text-dark" href="Marruecos.jsp">Marruecos</a></li>
							<li><a class="dropdown-item text-dark" href="Mexico.jsp">México</a></li>
							<li><a class="dropdown-item text-danger" href="#">Países
									Bajos</a></li>
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
		Selección Holandesa de Fútbol <img src="imagenes/paisesbajos.png"
			alt="paisesbajos" width="100" height="100">
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
					LinkedList<Jugadores> lista2 = Controller.getPaisesbajos();
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
		title="/niederlande/startseite/verein/3379">
		<span>125714</span><span>333640</span><span>33027</span><span>326031</span><span>139208</span><span>177476</span><span>339328</span><span>339340</span><span>12282</span><span>275303</span><span>360518</span><span>133179</span><span>104223</span><span>326330</span><span>49499</span><span>321528</span><span>129554</span><span>182932</span><span>372267</span><span>355861</span><span>339332</span><span>284165</span><span>167850</span><span>326029</span><span>228645</span>
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
				<a title="Países Bajos"/niederlande/startseite/verein/3379/saison_id/2021">Países
					Bajos</a> <a title="Países Bajos"/niederlande/startseite/verein/3379/saison_id/2021"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/122.png?lm=1520611569"
					title="Países Bajos" alt="Países Bajos" class="flaggenrahmen" /></a>
			</div>
			<div class="formation_ergebnis">
				<a title="Crónica" class="ergebnis-link" id="3773015"/spielbericht/index/spielbericht/3773015">1:1</a>
			</div>
			<div class="formation_verein text-left">
				<a title="Alemania"/deutschland/startseite/verein/3262/saison_id/2021"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/40.png?lm=1520612525"
					title="Alemania" alt="Alemania" class="flaggenrahmen" /></a> <a
					title="Alemania"/deutschland/startseite/verein/3262/saison_id/2021">Alemania</a>
			</div>
			<div class="clearer"></div>
		</div>
		<div class="row" style="padding: 0px; margin: 0px;">
			<div
				class="large-7 aufstellung-vereinsseite columns small-12 unterueberschrift aufstellung-unterueberschrift">
				Formación inicial: 3-4-1-2</div>

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
						<span class="aufstellung-rueckennummer-name"> <a/mark-flekken/profil/spieler/125714">Flekken</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 62%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">3</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/matthijs-de-ligt/profil/spieler/326031">de
								Ligt</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">4</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/virgil-van-dijk/profil/spieler/139208">van
								Dijk</a>
						</span>
					</div>
					<div class="kapitaenicon-formation"
						style="position: absolute; top: 17px; left: 55%;">&nbsp;</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">17</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/daley-blind/profil/spieler/12282">Blind</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 34%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">6</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/tyrell-malacia/profil/spieler/339340">Malacia</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 74 por N.Ake" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 52%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">20</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/teun-koopmeiners/profil/spieler/360518">Koopmeiners</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 46 por G.Wijnaldum" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 30%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">21</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/frenkie-de-jong/profil/spieler/326330">de
								Jong</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 36%; bottom: 73%;">
						<span class="icons_sprite icon-gelbekarte-formation" span
							title="Tarjeta Amarilla Min 86" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 34%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">22</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/denzel-dumfries/profil/spieler/321528">Dumfries</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 22%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">11</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/steven-berghuis/profil/spieler/129554">Berghuis</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 58 por D.Klaassen" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 2%; left: 50%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">10</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/memphis-depay/profil/spieler/167850">Depay</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 36%; bottom: 73%;">
						<span class="icons_sprite icon-gelbekarte-formation" span
							title="Tarjeta Amarilla Min 29" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 2%; left: 30%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">18</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/donyell-malen/profil/spieler/326029">Malen</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 58 por S.Bergwijn" rel="tooltip">&nbsp;</span>
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
						<div class="ersatz-rn">23</div>
					</td>
					<td><a title="Joël Drommel"/joel-drommel/profil/spieler/333640">Joël
							Drommel</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">13</div>
					</td>
					<td><a title="Tim Krul"/tim-krul/profil/spieler/33027">Tim
							Krul</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">5</div>
					</td>
					<td><a title="Nathan Aké"/nathan-ake/profil/spieler/177476">Nathan
							Aké</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 74 por T.Malacia" rel="tooltip">&nbsp;</span>
					</td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">2</div>
					</td>
					<td><a title="Hans Hateboer"/hans-hateboer/profil/spieler/275303">Hans
							Hateboer</a></td>
					<td>LD</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">16</div>
					</td>
					<td><a title="Jordy Clasie"/jordy-clasie/profil/spieler/104223">Jordy
							Clasie</a></td>
					<td>PIV</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">15</div>
					</td>
					<td><a title="Marten de Roon"/marten-de-roon/profil/spieler/133179">Marten
							de Roon</a></td>
					<td>PIV</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">8</div>
					</td>
					<td><a title="Georginio Wijnaldum"/georginio-wijnaldum/profil/spieler/49499">Georginio
							Wijnaldum</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 46 por T.Koopmeiners" rel="tooltip">&nbsp;</span>
					</td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">14</div>
					</td>
					<td><a title="Davy Klaassen"/davy-klaassen/profil/spieler/182932">Davy
							Klaassen</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 58 por S.Berghuis" rel="tooltip">&nbsp;</span>
					</td>
					<td>MCO</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">7</div>
					</td>
					<td><a title="Steven Bergwijn"/steven-bergwijn/profil/spieler/284165">Steven
							Bergwijn</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 58 por D.Malen" rel="tooltip">&nbsp;</span>
						<span style="cursor: pointer !important;"
						class="icons_sprite icon-tor-formation" span title="GOL Min 68"
						rel="tooltip">&nbsp;</span></td>
					<td>EI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">9</div>
					</td>
					<td><a title="Arnaut Danjuma"/arnaut-danjuma/profil/spieler/355861">Arnaut
							Danjuma</a></td>
					<td>EI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">12</div>
					</td>
					<td><a title="Noa Lang"/noa-lang/profil/spieler/339332">Noa
							Lang</a></td>
					<td>EI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">19</div>
					</td>
					<td><a title="Wout Weghorst"/wout-weghorst/profil/spieler/228645">Wout
							Weghorst</a></td>
					<td>DEL</td>
				</tr>
				<tr style="background-color: #FBFBFB;">
					<td>
						<div>Entrenador:</div>
					</td>
					<td><a title="Louis van Gaal" id="0"/louis-van-gaal/profil/trainer/2029">Louis
							van Gaal</a></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
</body>
</html>
