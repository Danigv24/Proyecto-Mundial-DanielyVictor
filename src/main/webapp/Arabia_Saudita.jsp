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
	href="https://tmssl.akamaized.net/styles/tm-main.min.css?lm=1649926000" />
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
<link rel="stylesheet" type="text/css" href="arabia.css" />
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
<title>Selección de fútbol de Arabia Saudita</title>
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
							<li><a class="dropdown-item text-danger" href="#">Arabia
									Saudita</a></li>
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
							<li><a class="dropdown-item text-dark" href="Tunez.jsp">Túnez</a></li>
							<li><a class="dropdown-item text-dark" href="Uruguay.jsp">Uruguay</a></li>
							<li><hr class="dropdown-divider"></li>
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
		Selección de fútbol de Arabia Saudita <img src="imagenes/arabia.png"
			alt="arabia" width="100" height="100">
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
					LinkedList<Jugadores> lista2 = Controller.getArabia();
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
		title="/saudi-arabien/startseite/verein/3807">
		<span>509914</span><span>262845</span><span>193167</span><span>509875</span><span>421391</span><span>265940</span><span>509894</span><span>319552</span><span>509897</span><span>171915</span><span>869509</span><span>379058</span><span>631927</span><span>141805</span><span>308120</span><span>155487</span><span>434672</span><span>164593</span><span>195332</span><span>631923</span><span>153350</span><span>193153</span><span>441191</span><span>201379</span><span>242267</span><span>631922</span>
	</div>
	</div>
	</div>

	</div>


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
				B</a> mar, 29/03/2022 - 20:00 Hora
		</div>
		<div class="formation_begegnung">
			<div class="formation_verein text-right">
				<a title="Arabia Saudita"/saudi-arabien/startseite/verein/3807/saison_id/2019">Arabia
					Saudita</a> <a title="Arabia Saudita"/saudi-arabien/startseite/verein/3807/saison_id/2019"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/146.png?lm=1520611569"
					title="Arabia Saudita" alt="Arabia Saudita" class="flaggenrahmen" /></a>
			</div>
			<div class="formation_ergebnis">
				<a title="Crónica" class="ergebnis-link" id="3625744"/spielbericht/index/spielbericht/3625744">1:0</a>
			</div>
			<div class="formation_verein text-left">
				<a title="Australia"/australien/startseite/verein/3433/saison_id/2019"><img
					src="https://tmssl.akamaized.net/images/flagge/verysmall/12.png?lm=1520611569"
					title="Australia" alt="Australia" class="flaggenrahmen" /></a> <a
					title="Australia"/australien/startseite/verein/3433/saison_id/2019">Australia</a>
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
						<div class="rn">21</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/mohammed-al-owais/profil/spieler/262845">Al-Owais</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">3</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/abdullah-madu/profil/spieler/265940">Madu</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 35%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="sustitucion" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 63%; left: 52.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">2</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/hassan-tambakti/profil/spieler/509897">Tambakti</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 7.5%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">13</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/yasser-al-shahrani/profil/spieler/171915">Al-Shahrani</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 61%; left: 73%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">6</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/mohammed-al-burayk/profil/spieler/379058">Al-Burayk</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 35%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="sustitucion" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 23%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">7</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/salman-al-faraj/profil/spieler/155487">Al-Faraj</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 28%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">23</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/mohamed-kanno/profil/spieler/308120">Kanno</a>
						</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 43%; left: 52%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">16</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/sami-al-najei/profil/spieler/434672">Al-Najei</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 30%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="sustitucion" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 18%; left: 15%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">10</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/salem-al-dawsari/profil/spieler/195332">Al-Dawsari</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; right: 32%;">
						<span class="icons_sprite icon-tor-formation" span title="GOL"
							rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 18%; left: 65%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">8</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/hattan-bahebri/profil/spieler/201379">Bahebri</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 30%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="sustitucion" rel="tooltip">&nbsp;</span>
					</div>
				</div>
				<div class="aufstellung-spieler-container"
					style="top: 3%; left: 40%;">
					<div class=" aufstellung-rueckennummer-box">
						<div class="rn">9</div>
					</div>
					<div style="color: white; font-weight: bold; font-size: 10px;">
						<span class="aufstellung-rueckennummer-name"> <a/firas-al-buraikan/profil/spieler/631922">Al-Buraikan</a>
						</span>
					</div>
					<div
						style="cursor: pointer; position: absolute; top: -5px; left: 30%;">
						<span style="cursor: pointer !important;"
							class="icons_sprite icon-auswechslung-formation" span
							title="sustitucion" rel="tooltip">&nbsp;</span>
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
						<div class="ersatz-rn">1</div>
					</td>
					<td><a title="Amin Al-Bukhari"/amin-al-bukhari/profil/spieler/509875">Amin
							Al-Bukhari</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">22</div>
					</td>
					<td><a title="Fawaz Al-Qarni"/fawaz-al-qarni/profil/spieler/193167">Fawaz
							Al-Qarni</a></td>
					<td>POR</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">5</div>
					</td>
					<td><a title="Ziyad Al-Sahafi"/ziyad-al-sahafi/profil/spieler/421391">Ziyad
							Al-Sahafi</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="sustitucion" rel="tooltip">&nbsp;</span></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">4</div>
					</td>
					<td><a title="Ahmed Sharahili"/ahmed-sharahili/profil/spieler/319552">Ahmed
							Sharahili</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="sustitucion" rel="tooltip">&nbsp;</span></td>
					<td>CEN</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">12</div>
					</td>
					<td><a title="Saud Abdulhamid"/saud-abdulhamid/profil/spieler/631927">Saud
							Abdulhamid</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="sustitucion" rel="tooltip">&nbsp;</span></td>
					<td>LD</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">15</div>
					</td>
					<td><a title="Ali Al-Hassan"/ali-al-hassan/profil/spieler/141805">Ali
							Al-Hassan</a></td>
					<td>PIV</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">17</div>
					</td>
					<td><a title="Khalid Al-Ghannam"/khalid-al-ghannam/profil/spieler/631923">Khalid
							Al-Ghannam</a></td>
					<td>EI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">18</div>
					</td>
					<td><a title="Abdulrahman Ghareeb"/abdulrahman-ghareeb/profil/spieler/164593">Abdulrahman
							Ghareeb</a></td>
					<td>EI</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">20</div>
					</td>
					<td><a title="Abdulaziz Al-Bishi"/abdulaziz-al-bishi/profil/spieler/153350">Abdulaziz
							Al-Bishi</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="sustitucion" rel="tooltip">&nbsp;</span></td>
					<td>ED</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">19</div>
					</td>
					<td><a title="Abdulrahman Al-Obood"/abdulrahman-al-obood/profil/spieler/441191">Abdulrahman
							Al-Obood</a></td>
					<td>ED</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">14</div>
					</td>
					<td><a title="Abdullah Al-Hamdan"/abdullah-al-hamdan/profil/spieler/68626">Abdullah
							Al-Hamdan</a></td>
					<td>DEL</td>
				</tr>
				<tr>
					<td class="nummer aufstellung-rueckennummer-ersatzbank">
						<div class="ersatz-rn">11</div>
					</td>
					<td><a title="Saleh Al-Shehri"/saleh-al-shehri/profil/spieler/242267">Saleh
							Al-Shehri</a> <span style="cursor: pointer !important;"
						class="icons_sprite icon-einwechslung-formation" span
						title="sustitucion" rel="tooltip">&nbsp;</span></td>
					<td>DEL</td>
				</tr>
				<tr style="background-color: #FBFBFB;">
					<td>
						<div>Entrenador:</div>
					</td>
					<td><a title="Hervé Renard" id="0"/herve-renard/profil/trainer/6480">Hervé
							Renard</a></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
</body>
</html>
