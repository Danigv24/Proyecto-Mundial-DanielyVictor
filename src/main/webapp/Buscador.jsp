<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Usuarios"%>
<%@ page import="com.ies.baroja.Controller"%>
<%@ page import="com.ies.baroja.ServletForm"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
     <link rel="icon" href="imagenes/logoM.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
     crossorigin="anonymous">
        <link rel="stylesheet" href="buscador.css" type="text/css" media="screen" />
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
     <!--se añade este script para que funcione el Dropdown -->
    <title>Buscador De jugadores</title>
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
           <li class="nav-item">
             <a class="nav-link active text-white" aria-current="page" href="index.jsp">Inicio</a>
           </li>
           <li class="nav-item ">
             <a class="nav-link text-white" href="sede.jsp">Sede del Mundial</a>
           </li>
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
							<li><a class="dropdown-item text-dark" href="DaniTeam.jsp">DaniFC</a></li>
							<li><a class="dropdown-item text-dark" href="FcNoConvo.jsp">FcNoConvo</a></li>
				</ul></li>
        
           <li class="nav-item">
             <a class="nav-link text-white" href="#">Buscador de Jugadores</a>
           </li>
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
   <div id="container">
  <form  action="ServletForm" method="POST">
    <h2>Buscador De Jugadores</h2>
    <h5>Vea las estadísticas de sus Jugadores favoritos</h5>
    <div class="input-group mb-3">
    <span class="input-group-text" id="inputGroup-sizing-default">Nombre del Jugador</span>
    <input name="buscaNombre" type="text" class="form-control" pattern="[a-zA-ZáéíóúAÉÍÓÚÑñ\s]{3,20}" required >
  </div>
  <div class="input-group mb-3">
      <select class="form-select" aria-label="Default select example">

        <option selected>Selección</option>
        <option value="1">Alemania</option>
        <option value="2">Arabia Saudi</option>
        <option value="3">Argentina</option>
        <option value="4">Belgica</option>
        <option value="5">Brasil</option>
        <option value="6">Camerún</option>
        <option value="7">Canadá</option>
        <option value="8">Catar</option>
        <option value="9">Corea del Sur</option>
        <option value="10">Croacia</option>
        <option value="11">Dinamarca</option>
        <option value="12">Ecuador</option>
        <option value="13">España</option>
        <option value="14">Estados unidos</option>
        <option value="15">Francia</option>
        <option value="16">Ghana</option>
        <option value="17">Inglaterra</option>
        <option value="18">Irán</option>
        <option value="19">Japón</option>
        <option value="20">Marruecos</option>
        <option value="21">México</option>
        <option value="22">Países Bajos</option>
        <option value="23">Polonia</option>
        <option value="24">Portugal</option>
        <option value="25">Senegal</option>
        <option value="26">Serbia</option>
        <option value="27">Suiza</option>
        <option value="28">Túnez</option>
        <option value="29">Uruguay</option>
        <option value="30">SnowEleven</option>
        <option value="31">DaniTeam</option>
        <option value="32">FcNoConvo</option>
      </select>
    </div>
    <div class="input-group mb-3">
        <select class="form-select" aria-label="Default select example">
          <option selected>Posicion del Jugador</option>
          <option value="1">POR</option>
          <option value="2">LI</option>
          <option value="3">DFC</option>
          <option value="4">LD</option>
          <option value="5">MCD</option>
          <option value="6">MC</option>
          <option value="7">MI</option>
          <option value="8">MD</option>
          <option value="9">MCO</option>
          <option value="10">SD</option>
          <option value="11">EI</option>
          <option value="12">ED</option>
          <option value="13">DC</option>

        </select>
      </div>
    <fieldset>
      <button name="enviar" type="submit" >Buscar</button>
    
    </fieldset>
  </form>


</div>
  </body>
</html>
