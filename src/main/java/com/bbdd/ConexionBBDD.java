package com.bbdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Jugadores;
import com.model.Usuarios;


/**
 * Clase que centraliza los métodos de acceso a BBDD
 * 
 * @author JAGD
 * @since 27/05/2021
 */

	public class ConexionBBDD {

		static Connection conexion; 
		int port = 3306;
		String host= "localhost";
		String db  = "mundial";
		String user="root";
		String password="0123456789";

		String url = String.format("jdbc:mysql://%s:%d/%s?useSSL=false", host, port, db);

		public void conectar() throws SQLException {
			conexion =  DriverManager.getConnection(url, user, password);
		}	
		 

		public void desconectar() {
			try {
				conexion.close();
			} catch (SQLException sqlex) {
				System.out.println("Error: " + sqlex.getMessage());
			}
		}

		public ResultSet ejecutarSentencia(String sentencia) {
			ResultSet rsResultado = null;
			try {
				System.out.println("Ejecutando: " + sentencia);
				PreparedStatement prepStatement = conexion.prepareStatement(sentencia);
				rsResultado = prepStatement.executeQuery();
			} catch (SQLException sqlex) {
				System.out.println("Error: " + sqlex.getMessage());
			}
			return rsResultado;
		}
		
		public static int insertarVehiculo(String sentencia, String sMatricula, String sMarca, String sModelo) {
			int iRes=0;
			try {
				System.out.println("Ejecutando: " + sentencia);
				PreparedStatement prepStatement = conexion.prepareStatement(sentencia);
				prepStatement.setString(1,sMatricula);
				prepStatement.setString(2,sMarca);
				prepStatement.setString(3,sModelo);
				iRes =  prepStatement.executeUpdate();
			} catch (SQLException sqlex) {
				System.out.println("Error: " + sqlex.getMessage());
			}
			return iRes;
		}
		public int insertar(Jugadores jugador) {
			int iRes = 0;
			String sInsert="insert into jugadores (Nombre,posicion,dorsal,idequipo ) values (?, ?, ?, ?)";
			try {
				System.out.println("Ejecutando "+sInsert);
				System.out.println("Datos "+jugador);
				PreparedStatement ps = conexion.prepareStatement(sInsert);
				ps.setString(1,jugador.getNombre());
				ps.setString(2,jugador.getPosicion());
				ps.setInt(3,Integer.parseInt(jugador.getDorsal()));
				ps.setString(4,jugador.getnombreequipo());
				iRes = ps.executeUpdate();
			}
			catch(SQLException sqlex){
				sqlex.printStackTrace();
		}
			return iRes;
		}
		public int insertar(Usuarios usuario) {
			int iRes = 0;
			String sInsert="insert into usuarios (gmail,pwd ) values (?,?)";
			try {
				System.out.println("Ejecutando "+sInsert);
				System.out.println("Datos "+usuario);
				PreparedStatement ps = conexion.prepareStatement(sInsert);
				ps.setString(1,usuario.getGmail());
				ps.setString(2,usuario.getPwd());
				iRes = ps.executeUpdate();
			}
			catch(SQLException sqlex){
				sqlex.printStackTrace();
		}
			return iRes;

	}
	}


