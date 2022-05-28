package com.ies.baroja;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import com.model.Resultados;
import com.model.Jugadores;
import com.model.Selecciones;
import com.model.Estadisticas;
import com.model.Usuarios;
import com.bbdd.ConexionBBDD;

public class Controller {
	/**
	 * Devuelve todos los jugadores de la tabla estadísticas
	 * @return
	 */
	public static LinkedList<Estadisticas> getEstadisticas() {
		String sConsultaEstadisticas = "SELECT j.Nombre,j.posicion,j.dorsal,e.goles,e.asistencias,s.NombreEquipo FROM "
				+ "estadisticas e INNER JOIN jugadores j ON j.ficha=e.idJugador INNER JOIN selecciones s ON "
				+ "j.idEquipo=s.id";
		// Objeto con la lista de jugadores
		LinkedList<Estadisticas> listaJugadores = new LinkedList<Estadisticas>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaEstadisticas);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Estadisticas jugador = new Estadisticas(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("goles"),rsResultado.getString("asistencias"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 * Devuelve la lista de todas las selecciones
	 * @return
	 */
	public static LinkedList<Selecciones> getSeleccion() {
		String sConsultaSelecciones="SELECT id,NombreEquipo FROM selecciones ORDER BY id";
		// Objeto con la lista de jugadores
		LinkedList<Selecciones> listaSelecciones = new LinkedList<Selecciones>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaSelecciones);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Selecciones seleccion = new Selecciones(rsResultado.getString("id"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaSelecciones.add(seleccion);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" +listaSelecciones.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaSelecciones;
	}
	/**
	 * Devuele los jugadores de Alemania
	 * @return
	 */
	public static LinkedList<Jugadores> getAlemania() {
		String sConsultaAlemania = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=1";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaAlemania);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Arabia
	 * @return
	 */
	public static LinkedList<Jugadores> getArabia() {
		String sConsultaArabia = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=2";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaArabia);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Argentina
	 * @return
	 */
	public static LinkedList<Jugadores> getArgentina() {
		String sConsultaArgentina = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=3";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaArgentina);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Bélgica
	 * @return
	 */
	public static LinkedList<Jugadores> getBelgica() {
		String sConsultaBelgica = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=4";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaBelgica);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Brasil
	 * @return
	 */
	public static LinkedList<Jugadores> getBrasil() {
		String sConsultaBrasil = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=5";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaBrasil);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Camerún
	 * @return
	 */
	public static LinkedList<Jugadores> getCamerun() {
		String sConsultaCamerun = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=6";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaCamerun);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Canadá
	 * @return
	 */
	public static LinkedList<Jugadores> getCanada() {
		String sConsultaCanada = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=7";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaCanada);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Catar
	 * @return
	 */
	public static LinkedList<Jugadores> getCatar() {
		String sConsultaCatar = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=8";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaCatar);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Corea
	 * @return
	 */
	public static LinkedList<Jugadores> getCorea() {
		String sConsultaCorea = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=9";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaCorea);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Croacia
	 * @return
	 */
	public static LinkedList<Jugadores> getCroacia() {
		String sConsultaCroacia = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=10";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaCroacia);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Dinamarca
	 * @return
	 */
	public static LinkedList<Jugadores> getDinamarca() {
		String sConsultaDinamarca = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=11";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaDinamarca);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Ecuador
	 * @return
	 */
	public static LinkedList<Jugadores> getEcuador() {
		String sConsultaEcuador = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=12";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaEcuador);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de España
	 * @return
	 */
	public static LinkedList<Jugadores> getEspaña() {
		String sConsultaEspaña = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=13";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaEspaña);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Estados Unidos
	 * @return
	 */
	public static LinkedList<Jugadores> getEstadosunidos() {
		String sConsultaEstadosunidos = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=14";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaEstadosunidos);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Francia
	 * @return
	 */
	public static LinkedList<Jugadores> getFrancia() {
		String sConsultaFrancia = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=15";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaFrancia);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Ghana
	 * @return
	 */
	public static LinkedList<Jugadores> getGhana() {
		String sConsultaGhana = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=16";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaGhana);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Inglaterra
	 * @return
	 */
	public static LinkedList<Jugadores> getInglaterra() {
		String sConsultaInglaterra = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=17";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaInglaterra);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Iran
	 * @return
	 */
	public static LinkedList<Jugadores> getIran() {
		String sConsultaIran = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=18";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaIran);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Japon
	 * @return
	 */
	public static LinkedList<Jugadores> getJapon() {
		String sConsultaJapon = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=19";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaJapon);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Marruecos
	 * @return
	 */
	public static LinkedList<Jugadores> getMarruecos() {
		String sConsultaMarruecos = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=20";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaMarruecos);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Mexico
	 * @return
	 */
	public static LinkedList<Jugadores> getMexico() {
		String sConsultaMexico = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=21";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaMexico);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de PaisesBajos
	 * @return
	 */
	public static LinkedList<Jugadores> getPaisesbajos() {
		String sConsultaPaisesbajos = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=22";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaPaisesbajos);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Polonia
	 * @return
	 */
	public static LinkedList<Jugadores> getPolonia() {
		String sConsultaPolonia = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=23";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaPolonia);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Portugal
	 * @return
	 */
	public static LinkedList<Jugadores> getPortugal() {
		String sConsultaPortugal = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=24";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaPortugal);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Senegal
	 * @return
	 */
	public static LinkedList<Jugadores> getSenegal() {
		String sConsultaSenegal = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=25";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaSenegal);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Serbia
	 * @return
	 */
	public static LinkedList<Jugadores> getSerbia() {
		String sConsultaSerbia = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=26";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaSerbia);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Suiza
	 * @return
	 */
	public static LinkedList<Jugadores> getSuiza() {
		String sConsultaSuiza = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=27";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaSuiza);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Túnez
	 * @return
	 */
	public static LinkedList<Jugadores> getTunez() {
		String sConsultaTunez = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=28";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaTunez);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de Uruguay
	 * @return
	 */
	public static LinkedList<Jugadores> getUruguay() {
		String sConsultaUruguay = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=29";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaUruguay);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de SnowEleven
	 * @return
	 */
	public static LinkedList<Jugadores> getSnowEleven() {
		String sConsultaSnowEleven = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=30";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaSnowEleven);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de DaniTeam
	 * @return
	 */
	public static LinkedList<Jugadores> getDaniTeam() {
		String sConsultaDaniTeam = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=31";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaDaniTeam);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele los jugadores de No Convocados para el mundial
	 * @return
	 */
	public static LinkedList<Jugadores> getFcNoConvo() {
		String sConsultaFcNoConvo = "SELECT j.Nombre,j.posicion,j.dorsal,s.NombreEquipo FROM jugadores j INNER JOIN selecciones s"
				+" ON j.idEquipo=s.id WHERE id=32";
		// Objeto con la lista de jugadores
		LinkedList<Jugadores> listaJugadores = new LinkedList<Jugadores>();
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			// Lanzamos la consulta
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaFcNoConvo);
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Jugadores jugador = new Jugadores(rsResultado.getString("Nombre"),
							 rsResultado.getString("Posicion"), rsResultado.getString("Dorsal"),
							 rsResultado.getString("nombreequipo"));
						//Lo insertamos en la lista
					listaJugadores.add(jugador);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
			System.out.println("Número de jugadores=" + listaJugadores.size());
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return listaJugadores;
	}
	/**
	 *  Devuele las estadisticas de un jugador buscado
	 * @param sNombreJugador
	 * @return
	 */
	public static Estadisticas getJugador(String sNombreJugador) {
		String sConsultaBusqueda = "SELECT j.Nombre,j.posicion,j.dorsal,e.goles,e.asistencias,s.NombreEquipo FROM "
				+ "estadisticas e INNER JOIN jugadores j ON j.ficha=e.idJugador INNER JOIN selecciones s ON "
				+ "j.idEquipo=s.id WHERE Nombre='"+sNombreJugador+"';";
		Estadisticas jugador = null;
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			/**1-conecta a la BBDD*/
			miConexion.conectar();
			/**2-lanzar la consulta*/
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaBusqueda);
			/**3-recuperar los datos*/
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					jugador = new Estadisticas(rsResultado.getString("nombre"),rsResultado.getString("posicion"),
							rsResultado.getString("dorsal"),rsResultado.getString("goles"),
							rsResultado.getString("asistencias"),rsResultado.getString("nombreequipo"));	
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
			/**4-cerrar conexion*/
		} finally {
			miConexion.desconectar();
		}
		return jugador;
	}
	/**
	 *  Devuele los resultados del equipo buscado
	 * @param sEquipo
	 * @return
	 */
	public static LinkedList<Resultados> getEquipo(String sEquipo) {
		String sConsultaBusqueda = "SELECT nºjornada,EquipoLocal ,EquipoVisitante ,resultado FROM partidos "
				+ "WHERE EquipoLocal='"+sEquipo+"' "
				+ "UNION "
				+ "SELECT nºjornada,EquipoLocal ,EquipoVisitante ,resultado FROM partidos "
				+ "WHERE EquipoVisitante='"+sEquipo+"' ORDER BY nºjornada;";
		LinkedList<Resultados> listaseleccion = new LinkedList<Resultados>();
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			/**1-conecta a la BBDD*/
			miConexion.conectar();
			/**2-lanzar la consulta*/
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaBusqueda);
			/**3-recuperar los datos*/
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					Resultados seleccion = new Resultados(rsResultado.getString("nºjornada"),rsResultado.getString("EquipoLocal"),
							rsResultado.getString("EquipoVisitante"),rsResultado.getString("resultado"));
					listaseleccion.add(seleccion);
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
			/**4-cerrar conexion*/
		} finally {
			miConexion.desconectar();
		}
		return listaseleccion;
	}
	/**
	 *  Devuele el usuario y contraseña 
	 * @param sEmail
	 * @return
	 */
	public static Usuarios getUsuario(String sEmail) {
		String sConsultaBusqueda = "SELECT gmail,pwd FROM usuarios"+
			" WHERE gmail='"+sEmail+"';";
		Usuarios usuario = null;
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			/**1-conecta a la BBDD*/
			miConexion.conectar();
			/**2-lanzar la consulta*/
			ResultSet rsResultado = miConexion.ejecutarSentencia(sConsultaBusqueda);
			/**3-recuperar los datos*/
			if (rsResultado != null) {
				// Si hay resultado recuperamos los datos (como un FETCH de un CURSOR)
				while (rsResultado.next()) {// Creamos un objeto jugador por cada fila de la tabla(cada jugador)
					usuario = new Usuarios(rsResultado.getString("gmail"),
							rsResultado.getString("pwd"));
				}
			} else {
				System.out.println("La consulta no devuelve resultados");
			}
		} catch (SQLException sqlex) {
			System.out.println("Error: " + sqlex.getMessage());
			sqlex.printStackTrace();
			/**4-cerrar conexion*/
		} finally {
			miConexion.desconectar();
		}
		return usuario;
	}
	
	/**
	 * Inserta nuevo jugador en la base de datos
	 * @param jugador
	 * @return
	 */
	public static boolean insertarJugador(Jugadores jugador) {
		boolean bRes =true;
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			int iRes = miConexion.insertar(jugador);
			System.out.println("Resultado = "+iRes);
		}
		catch(SQLException sqlex){
			System.out.println("Error: "+ sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return bRes;
			
	}
	/**
	 * Inserta nuevo usuario en la base de datos
	 * @param usuario
	 * @return
	 */
	public static boolean insertarUsuario(Usuarios usuario) {
		boolean bRes =true;
		// Primero conectamos a la BBDD
		ConexionBBDD miConexion = new ConexionBBDD();
		try {
			miConexion.conectar();
			int iRes = miConexion.insertar(usuario);
			System.out.println("Resultado = "+iRes);
		}
		catch(SQLException sqlex){
			System.out.println("Error: "+ sqlex.getMessage());
			sqlex.printStackTrace();
		} finally {
			miConexion.desconectar();
		}
		return bRes;
			
	}
	
	
	
}
