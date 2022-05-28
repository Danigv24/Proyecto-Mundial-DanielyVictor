package com.ies.baroja;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.JasperException;

import com.model.Jugadores;
import com.model.Usuarios;
import com.model.Resultados;
import com.model.Selecciones;

/**
 * Servlet implementation class ServletForm
 */
@WebServlet("/ServletForm")
public class ServletForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * Funcion que permite dependiendo del campo relleno vaya a al método que le corresponde
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html;charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			if (request.getParameter("logemail") != null) {
				loginUsuario(request, response);
			} else if (request.getParameter("nombre") != null) {
				altaJugador(request, response);
			}else if (request.getParameter("buscaNombre") != null) {
				buscajugador(request, response);
			}else if (request.getParameter("regemail") != null) {
				registrousuario(request, response);
			}else if (request.getParameter("buscaEquipo") != null) {
				buscaseleccion(request, response);
			}else if(request.getParameter("Cerrar")!= null) {
				cerrarsesion(request,response);
			}
			else {
				System.out.println("Opción no válida");
			}

		} catch (Exception ex) {
			ex.printStackTrace();
			mostrarError(response,"Error interno, disculpen las molestias");
		}
	}
/**
 * Método para buscar un jugador en la base de datos
 * @param request
 * @param response
 * @throws ServletException
 * @throws JasperException
 * @throws IOException
 * @throws Exception
 */
	private static void buscajugador(HttpServletRequest request, HttpServletResponse response) throws ServletException,JasperException, IOException,Exception {
		/** 1 recogida de datos */
		String sNombre = request.getParameter("buscaNombre");
		/** 2 buscar jugador en BBDD*/

		if(sNombre!=null) {
			/**3 devolver resultado por pantalla */
			HttpSession sesion = request.getSession();
			sesion.setAttribute("Jugador", sNombre);
			response.sendRedirect("resultadoB.jsp");
		}else {
			// lógica para login inválido
			mostrarError(response,"El nombre "+sNombre+" no existe");
		}

	}
/**
 * Método para que los usuarios puedan cerrar su sesión
 * @param request
 * @param response
 * @throws ServletException
 * @throws JasperException
 * @throws IOException
 * @throws Exception
 */
	private static void cerrarsesion(HttpServletRequest request, HttpServletResponse response) throws ServletException,JasperException, IOException,Exception {
		HttpSession sesion = request.getSession();
		try {
			sesion.invalidate();
			request.setAttribute("logemail","sesion finalizada");
			response.sendRedirect("index.jsp");
		}catch(Exception e) {
			e.printStackTrace();
			mostrarError(response,"Error");
		}
	}
/**
 * Método para buscar un selección en la base de datos
 * @param request
 * @param response
 * @throws ServletException
 * @throws JasperException
 * @throws IOException
 * @throws Exception
 */
	private static void buscaseleccion(HttpServletRequest request, HttpServletResponse response) throws ServletException,JasperException, IOException,Exception {
		/** 1 recogida de datos */
		String sEquipo = request.getParameter("buscaEquipo");
		/** 2 buscar jugador en BBDD*/
		if(sEquipo!=null) {
			/**3 devolver resultado por pantalla */
			HttpSession sesion = request.getSession();
			sesion.setAttribute("Seleccion", sEquipo);
			response.sendRedirect("CuadroM.jsp");
		}else {
			// lógica para login inválido
			mostrarError(response,"El nombre "+sEquipo+" no existe");
		}

	}
/**
 * Método para que los usuarios puedan iniciar sesión
 * @param request
 * @param response
 * @throws Exception
 */
	private static void loginUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession sesion = request.getSession();
		//cerrar sesion sesion.invalidate
		String sEmail = request.getParameter("logemail");
		String sPwd = request.getParameter("logpass");
		Usuarios usuario = Controller.getUsuario(sEmail);
		// deberíamos buscar el usuario en la base de datos, pero 
		//ponemos un ejemplo en el mismo código
		//IMPORTANTE si lo haces con la base de datos sEmail.equals("clientes.getnombre()")&& sPwd.equals("clientes.getcontraseña()")
		if (sEmail!=null) {
			if(sEmail.equals(usuario.getGmail()) && sPwd.equals(usuario.getPwd())) {
			// si coincide email y password y además no hay sesión iniciada
			sesion.setAttribute("logemail", sEmail);
			// redirijo a página con información de login exitoso
			response.sendRedirect("index.jsp");
			
			}
			else {
				mostrarError(response,"\"El usuario "+sEmail+" no tiene acceso\"");
			}
		} 
		else {
			// lógica para login inválido
			mostrarError(response,"El usuario "+sEmail+" no tiene acceso");
		}

	}
/**
 * Método para dar de alta un jugador en la base de datos
 * @param request
 * @param response
 * @throws Exception
 */
	private static void altaJugador(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/** 1- recogida de datos */
		Jugadores jugador = new Jugadores(request.getParameter("nombre"), request.getParameter("posicion"),
				request.getParameter("dorsal"),request.getParameter("nombreequipo"));

		/** 2- Insertar jugador en la base de datos */
		boolean bRes = Controller.insertarJugador(jugador);

		/** 3- Mostrar resultado por pantalla */
		if (bRes) {
			response.sendRedirect("resultadoA.jsp");
	

		} else {
			// Mostramos que se ha producido un error
			mostrarError(response, "Error al dar de alta al jugador");

		}
	}
/**
 * Método para registrar usuarios en la base de datos
 * @param request
 * @param response
 * @throws Exception
 */
	private static void registrousuario(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/** 1- recogida de datos */
		Usuarios usuario = new Usuarios(request.getParameter("regemail"), request.getParameter("regpwd"));

		/** 2- Insertar jugador en la base de datos */
		boolean bRes = Controller.insertarUsuario(usuario);

		/** 3- Mostrar resultado por pantalla */
		if (bRes) {
			response.sendRedirect("resultadoU.jsp");

		} else {
			// Mostramos que se ha producido un error
			mostrarError(response, "Error al dar de alta al jugador");

		}
	}
/**
 * Método para que se muestre una pantalla de Error
 * @param response
 * @param mensaje
 * @throws IOException
 */
	private static void mostrarError(HttpServletResponse response, String mensaje) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<HTML>\n" + "<HEAD><TITLE>Página de JAGD</TITLE>" + "  <meta charset=\"utf-8\">\r\n"
				+ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n"
				+ "  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n"
				+ "  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n"
				+ "</HEAD>\n" + "<BODY>\n" + "<div class=\"container mt-3\">\n"
				+ "<h1 class=\"text-danger\">"+mensaje+"<h1>\n"
				+ "<img src=\"imagenes/error.png\" class=\"rounded\" alt=\"error interno\">" + "</div></BODY></HTML>");
		out.close();
	}
}
