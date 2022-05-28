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

<link rel="stylesheet" type="text/css" href="alemania1.css" />
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
<title>Selección Japonesa de Fútbol</title>
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
							<li><a class="dropdown-item text-danger" href="#">Japón</a></li>
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
		Selección Japonesa de Fútbol <img src="imagenes/Japon.png" alt="Japon"
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
					LinkedList<Jugadores> lista2 = Controller.getJapon();
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
		title="/japan/startseite/verein/3435">
		<span>405382</span><span>158799</span><span>79517</span><span>77383</span><span>355816</span><span>81789</span><span>307870</span><span>213249</span><span>188915</span><span>346647</span><span>79522</span><span>83002</span><span>395589</span><span>146310</span><span>524315</span><span>489359</span><span>496656</span><span>129693</span><span>79377</span><span>165793</span><span>504849</span><span>420931</span><span>405398</span><span>348791</span><span>245744</span><span>690993</span><span>589128</span><span>108650</span>
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
			<a title="Clasificación Mundial Asia" class="hervorgehobener_link"/wm-qualifikation-asien/startseite/pokalwettbewerb/WMQ1">Clasificación
				Mundial Asia</a> - <a title="Grupo B" class=""/wm-qualifikation-asien/spieltag/pokalwettbewerb/WMQ1/saison_id/2019/spieltag/22/gruppe/B">Grupo
				B</a> mar, 29/03/2022 - 12:35 Hora
		</div>
		<div class="formation_begegnung">
			<div class="formation_verein text-right">
				<a title="Japón"/japan/startseite/verein/3435/saison_id/2019">Japón</a>
				<a title="Japón"/japan/startseite/verein/3435/saison_id/2019"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/77.png?lm=1520611569"
					title="Japón" alt="Japón" class="flaggenrahmen" /></a>
			</div>
			<div class="formation_ergebnis">
				<a title="Crónica" class="ergebnis-link" id="3625743"/spielbericht/index/spielbericht/3625743">1:1</a>
			</div>
			<div class="formation_verein text-left">
				<a title="Vietnam"/vietnam/startseite/verein/8778/saison_id/2019"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/185.png?lm=1520611569"
					title="Vietnam" alt="Vietnam" class="flaggenrahmen" /></a> <a
					title="Vietnam"/vietnam/startseite/verein/8778/saison_id/2019">Vietnam</a>
			</div>
			<div class="clearer"></div>
		</div>
		<div class="row" style="padding: 0px; margin: 0px;">
			<div
				class="large-7 aufstellung-vereinsseite columns small-12 unterueberschrift aufstellung-unterueberschrift">
				Formación inicial: 4-3-3 ofensivo</div>

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
						<span class="aufstellung-rueckennummer-name"> <a/eiji-kawashima/profil/spieler/77383">Kawashima</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 7.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">20</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/yuta-nakayama/profil/spieler/346647">Nakayama</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">3</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/shogo-taniguchi/profil/spieler/307870">Taniguchi</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 52.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">22</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/maya-yoshida/profil/spieler/81789">Yoshida</a>
						</span>
					</div>
					<div class="kapitaenicon-formation"
						style="position: absolute; top: 17px; left: 55%;">&nbsp;</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 32%;">
						<span class="icons_sprite icon-tor-formation" span
							title="GOL Min 55" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 73%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">16</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/miki-yamane/profil/spieler/395589">Yamane</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 28%; left: 53%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">15</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/reo-hatate/profil/spieler/496656">Hatate</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 46 por Ito" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 39%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">7</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/gaku-shibasaki/profil/spieler/129693">Shibasaki</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; left: 32%; bottom: 65%;">
						<span class="icons_sprite icon-gelbekarte-formation" span
							title="Tarjeta Amarilla Min 49" rel="tooltip">&nbsp;</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Tanaka" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 28%; left: 27%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">8</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/genki-haraguchi/profil/spieler/79377">Haraguchi</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Morita" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 10%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">21</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/kaoru-mitoma/profil/spieler/504849">Mitoma</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 10%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">11</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/takefusa-kubo/profil/spieler/405398">Kubo</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 36%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="Sustitución Min 62 por Minamino" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 3%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">9</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/ayase-ueda/profil/spieler/589128">Ueda</a>
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
					<td><a title="Shuichi Gonda"/shuichi-gonda/profil/spieler/79517">Shuichi
							Gonda</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">23</div>
					</td>
					<td><a title="Daniel Schmidt"/daniel-schmidt/profil/spieler/158799">Daniel
							Schmidt</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">4</div>
					</td>
					<td><a title="Kosei Tani"/kosei-tani/profil/spieler/405382">Kosei
							Tani</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">19</div>
					</td>
					<td><a title="Sho Sasaki"/sho-sasaki/profil/spieler/213249">Sho
							Sasaki</a></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">2</div>
					</td>
					<td><a title="Naomichi Ueda"/naomichi-ueda/profil/spieler/188915">Naomichi
							Ueda</a></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">5</div>
					</td>
					<td><a title="Yuto Nagatomo"/yuto-nagatomo/profil/spieler/79522">Yuto
							Nagatomo</a></td>
					<td>LI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">13</div>
					</td>
					<td><a title="Hidemasa Morita"/hidemasa-morita/profil/spieler/524315">Hidemasa
							Morita</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Haraguchi" rel="tooltip">&nbsp;</span>
					</td>
					<td>PIV</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">17</div>
					</td>
					<td><a title="Ao Tanaka"/ao-tanaka/profil/spieler/489359">Ao
							Tanaka</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Shibasaki" rel="tooltip">&nbsp;</span>
					</td>
					<td>MC</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">10</div>
					</td>
					<td><a title="Takumi Minamino"/takumi-minamino/profil/spieler/165793">Takumi
							Minamino</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 62 por Kubo" rel="tooltip">&nbsp;</span></td>
					<td>EI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">18</div>
					</td>
					<td><a title="Takuma Asano"/takuma-asano/profil/spieler/245744">Takuma
							Asano</a></td>
					<td>ED</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">14</div>
					</td>
					<td><a title="Junya Ito"/junya-ito/profil/spieler/348791">Junya
							Ito</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="Sustitución Min 46 por Hatate" rel="tooltip">&nbsp;</span>
					</td>
					<td>ED</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">6</div>
					</td>
					<td><a title="Daichi Hayashi"/daichi-hayashi/profil/spieler/690993">Daichi
							Hayashi</a></td>
					<td>DEL</td>
				</tr>
				<tr style="background-color: #FBFBFB;">
					<td>
						<div>Entrenador:</div>
					</td>
					<td><a title="Hajime Moriyasu" id="0"/hajime-moriyasu/profil/trainer/21905">Hajime
							Moriyasu</a></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
</body>
</html>
