<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

  <head>
    <meta charset="utf-8">
     <link rel="icon" href="imagenes/logoM.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
     crossorigin="anonymous">
        <link rel="stylesheet" href="wordle.css" type="text/css" media="screen" />
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
     <!--se añade este script para que funcione el Dropdown -->
    <title>Wordle MundialVD</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-light" style="background-color: #000000;">
     <div class="container-fluid text-white">
       <a class="navbar-brand" href="#"><img src="imagenes/logoM.jpg" alt="Logo" width="100" height="100"></a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse text-white" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="index.html">Inicio</a></li>
					<li class="nav-item "><a class="nav-link text-white"
						href="sede.html">Sede del Mundial</a></li>
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
							<li><a class="dropdown-item text-dark" href="FcNoConvo.jsp">FcNoConvo</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link text-white"
						href="Buscador.jsp">Buscador de Jugadores</a></li>
					<%
					HttpSession admin = request.getSession();
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
   <iframe allow="autoplay; fullscreen; encrypted-media" allowfullscreen="" allowscriptaccess="always" frameborder="10"          height="710px"
   width="1900px" scrolling="no" src="https://flippity.net/wm.php?x=A3ZkZANpU,FDfTwTXD8a8,WaPLsQYlurhvU,p4YrZ,4THJf,riyFn3UQ,qVaX,jSsk%C3%B1A,lGi7M7dwQzJut,hzen0,9PjGist,yIT8El,E4ItPj,cmA5vZuuFXJ,zPCKE7ioE,IgxwWw,t3GM8vd,aJnCNWn,CJHCGS,ll1UjHx,mR4mQle,uY3UFYv,7ckVA,lGTgSmWN4,5ntfLhO,NnDmWlD9Ao,kkq4geGk,dfOdT,yub8vzW&t=MundialVD"  style="max-width: 100%;" ></iframe>
  </body>
</html>
