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
	href="https://tmssl.akamaized.net/styles/tm-main.min.css?lm=1649925752" />
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
	href="https://tmssl.akamaized.net/css/stylesheets/vereinTopTransfers.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/aufstellung.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/jquery.bxslider.min.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/jquery.custom.bxslider.css?lm=1649922393" />
<link rel="stylesheet" type="text/css"
	href="https://tmssl.akamaized.net/css/beliebtheit.css?lm=1649922393" />

<link rel="stylesheet" type="text/css" href="canada.css" />
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
<title>Selección Tunecina de Fútbol</title>
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
							<li><a class="dropdown-item text-danger" href="#">Túnez</a></li>
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
		Selección tunecina de Fútbol <img src="imagenes/tunez.png" alt="tunez"
			width="100" height="100">
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
					LinkedList<Jugadores> lista2 = Controller.getTunez();
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
		title="/tunesien/startseite/verein/3670">
		<span>569433</span><span>348144</span><span>221355</span><span>215677</span><span>450417</span><span>496706</span><span>93447</span><span>275956</span><span>133042</span><span>230921</span><span>191407</span><span>211474</span><span>192167</span><span>169399</span><span>290587</span><span>233782</span><span>577881</span><span>546712</span><span>191903</span><span>346776</span><span>607224</span><span>253752</span><span>184491</span><span>69110</span><span>122635</span><span>103565</span><span>209304</span><span>142252</span>
	</div>
	</div>
	</div>

	</div>

	<script async src="/js/custom/tm-track-links.min.js" type="module"></script>
	<div class="flex-container">


		<div class="box viewport-tracking" data-viewport="Letzte_Formation">
			<div class="subkategorie-header">
				<h2>Última formación</h2>

			</div>
			<div class="zentriert p4">
				<a title="Clasificación Mundial África" class="hervorgehobener_link"/wm-qualifikation-afrika/startseite/pokalwettbewerb/WMQ2">Clasificación
					Mundial África</a> - <a title="Tercera ronda - vuelta" class=""/wm-qualifikation-afrika/spieltag/pokalwettbewerb/WMQ2/saison_id/2019/spieltag/10/gruppe/3RR">Tercera
					ronda - vuelta</a> mar, 29/03/2022 - 21:30 Hora
			</div>
			<div class="formation_begegnung">
				<div class="formation_verein text-right">
					<a title="Túnez"/tunesien/startseite/verein/3670/saison_id/2019">Túnez</a>
					<a title="Túnez"/tunesien/startseite/verein/3670/saison_id/2019"><img
						src="https://tmssl.akamaized.net/images/flagge/verysmall/173.png?lm=1520611569"
						title="Túnez" alt="Túnez" class="flaggenrahmen" /></a>
				</div>
				<div class="formation_ergebnis">
					<a title="Crónica" class="ergebnis-link" id="3736290"/spielbericht/index/spielbericht/3736290">0:0</a>
				</div>
				<div class="formation_verein text-left">
					<a title="Malí"/mali/startseite/verein/3674/saison_id/2019"><img
						src="https://tmssl.akamaized.net/images/flagge/verysmall/105.png?lm=1520611569"
						title="Malí" alt="Malí" class="flaggenrahmen" /></a> <a title="Malí"/mali/startseite/verein/3674/saison_id/2019">Malí</a>
				</div>
				<div class="clearer"></div>
			</div>
			<div class="row" style="padding: 0px; margin: 0px;">
				<div
					class="large-7 aufstellung-vereinsseite columns small-12 unterueberschrift aufstellung-unterueberschrift">
					Formación inicial: 4-3-3 ofensivo</div>
				<div
					class="large-5 aufstellung-vereinsseite columns small-12 hide-for-small unterueberschrift"
					style="border-left: 1px solid #e4e4e4; border-right: 0px solid #e4e4e4;">
					Banquillo</div>
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
							<div class="rn">22</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/bechir-ben-said/profil/spieler/348144">Ben
									Said</a>
							</span>
						</div>
						<div
							style="cursor: pointer; position: absolute; left: 35%; bottom: 65%;">
							<span class="icons_sprite icon-gelbekarte-formation" span
								title="Tarjeta Amarilla Min 90+3" rel="tooltip">&nbsp;</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 63%; left: 28%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">4</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/nader-ghandri/profil/spieler/275956">Ghandri</a>
							</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 63%; left: 52.5%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">3</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/montassar-talbi/profil/spieler/496706">Talbi</a>
							</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 61%; left: 7.5%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">12</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/ali-maaloul/profil/spieler/133042">Maâloul</a>
							</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 61%; left: 73%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">20</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/mohamed-drager/profil/spieler/192167">Dräger</a>
							</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 28%; left: 53%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">15</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/mohamed-ali-ben-romdhane/profil/spieler/577881">Ben
									Romdhane</a>
							</span>
						</div>
						<div
							style="cursor: pointer; position: absolute; top: -5px; left: 30%;">
							<span style="cursor: pointer !important;"
								class="icons_sprite icon-auswechslung-formation" span
								title="Sustitución Min 90+3 por Ifa" rel="tooltip">&nbsp;</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 39%; left: 40%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">8</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/ghaylen-chaaleli/profil/spieler/346776">Chaaleli</a>
							</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 28%; left: 27%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">14</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/aissa-laidouni/profil/spieler/233782">Laïdouni</a>
							</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 10%; left: 15%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">7</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/youssef-msakni/profil/spieler/69110">Msakni</a>
							</span>
						</div>
						<div
							style="cursor: pointer; position: absolute; top: -5px; left: 30%;">
							<span style="cursor: pointer !important;"
								class="icons_sprite icon-auswechslung-formation" span
								title="Sustitución Min 67 por Skhiri" rel="tooltip">&nbsp;</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 10%; left: 65%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">23</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/naim-sliti/profil/spieler/184491">Sliti</a>
							</span>
						</div>
						<div
							style="cursor: pointer; position: absolute; top: -5px; left: 30%;">
							<span style="cursor: pointer !important;"
								class="icons_sprite icon-auswechslung-formation" span
								title="Sustitución Min 90+1 por Mejbri" rel="tooltip">&nbsp;</span>
						</div>
					</div>
					<div class="aufstellung-spieler-container"
						style="top: 3%; left: 40%;">
						<div class=" aufstellung-rueckennummer-box">
							<div class="rn">19</div>
						</div>
						<div style="color: white; font-weight: bold; font-size: 10px;">
							<span class="aufstellung-rueckennummer-name"> <a/seifeddine-jaziri/profil/spieler/209304">Jaziri</a>
							</span>
						</div>
						<div
							style="cursor: pointer; position: absolute; top: -5px; left: 30%;">
							<span style="cursor: pointer !important;"
								class="icons_sprite icon-auswechslung-formation" span
								title="Sustitución Min 46 por Khenissi" rel="tooltip">&nbsp;</span>
						</div>
					</div>
				</div>
			</div>

			<div
				class="large-5 columns small-12 show-for-small unterueberschrift aufstellung-vereinsseite"
				style="border-top: 1px solid #e4e4e4;">Banquillo</div>
			<div
				class="large-5 columns small-12 aufstellung-ersatzbank-box aufstellung-vereinsseite"
				style="padding: 0px; margin-bottom: -1px;">
				<table class="ersatzbank">
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">16</div>
						</td>
						<td><a title="Aymen Dahmen"/aymen-dahmen/profil/spieler/569433">Aymen
								Dahmen</a></td>
						<td>POR</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">1</div>
						</td>
						<td><a title="Ali Jemal"/ali-jemal/profil/spieler/221355">Ali
								Jemal</a></td>
						<td>POR</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">2</div>
						</td>
						<td><a title="Bilel Ifa"/bilel-ifa/profil/spieler/93447">Bilel
								Ifa</a> <span style="cursor: pointer !important;"
							class="icons_sprite icon-einwechslung-formation" span
							title="Sustitución Min 90+3 por Ben Romdhane" rel="tooltip">&nbsp;</span>
						</td>
						<td>CEN</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">9</div>
						</td>
						<td><a title="Mortadha Ben Ouanes"/mortadha-ben-ouanes/profil/spieler/230921">Mortadha
								Ben Ouanes</a></td>
						<td>LI</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">5</div>
						</td>
						<td><a title="Oussama Haddadi"/oussama-haddadi/profil/spieler/191407">Oussama
								Haddadi</a></td>
						<td>LI</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">21</div>
						</td>
						<td><a title="Hamza Mathlouthi"/hamza-mathlouthi/profil/spieler/169399">Hamza
								Mathlouthi</a></td>
						<td>LD</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">17</div>
						</td>
						<td><a title="Ellyes Skhiri"/ellyes-skhiri/profil/spieler/290587">Ellyes
								Skhiri</a> <span style="cursor: pointer !important;"
							class="icons_sprite icon-einwechslung-formation" span
							title="Sustitución Min 67 por Msakni" rel="tooltip">&nbsp;</span>
						</td>
						<td>PIV</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">13</div>
						</td>
						<td><a title="Ferjani Sassi"/ferjani-sassi/profil/spieler/191903">Ferjani
								Sassi</a></td>
						<td>MC</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">6</div>
						</td>
						<td><a title="Anis Slimane"/anis-slimane/profil/spieler/546712">Anis
								Slimane</a></td>
						<td>MC</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">18</div>
						</td>
						<td><a title="Saad Bguir"/saad-bguir/profil/spieler/253752">Saad
								Bguir</a></td>
						<td>MCO</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">10</div>
						</td>
						<td><a title="Hannibal Mejbri"/hannibal-mejbri/profil/spieler/607224">Hannibal
								Mejbri</a> <span style="cursor: pointer !important;"
							class="icons_sprite icon-einwechslung-formation" span
							title="Sustitución Min 90+1 por Sliti" rel="tooltip">&nbsp;</span>
						</td>
						<td>MCO</td>
					</tr>
					<tr>
						<td class="nummer aufstellung-rueckennummer-ersatzbank">
							<div class="ersatz-rn">11</div>
						</td>
						<td><a title="Taha Yassine Khenissi"/taha-yassine-khenissi/profil/spieler/142252">Taha
								Yassine Khenissi</a> <span style="cursor: pointer !important;"
							class="icons_sprite icon-einwechslung-formation" span
							title="Sustitución Min 46 por Jaziri" rel="tooltip">&nbsp;</span>
						</td>
						<td>DEL</td>
					</tr>
					<tr style="background-color: #FBFBFB;">
						<td>
							<div>Entrenador:</div>
						</td>
						<td><a title="Jalel Kadri" id="0"/jalel-kadri/profil/trainer/22056">Jalel
								Kadri</a></td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</div>
</body>
</html>
