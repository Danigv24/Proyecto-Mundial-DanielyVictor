package com.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class Estadisticas {
	private String nombre; 
	private String posicion;
	private String dorsal;
	private String goles;
	private String asistencias;
	private String nombreequipo;
	/**
	 * @param nombre del jugador
	 * @param posicion en el campo
	 * @param dorsal jugador
	 * @param goles, numero de goles del jugador
	 * @param asistencias, numero de asistencias del jugador
	 * @param nombreequipo, seleccion del jugador
	 */
	public Estadisticas(String nombre, String posicion, String dorsal, String goles, String asistencias,
			String nombreequipo) {
		super();
		this.nombre = nombre;
		this.posicion = posicion;
		this.dorsal = dorsal;
		this.goles = goles;
		this.asistencias = asistencias;
		this.nombreequipo = nombreequipo;
	}
	
	/**
	 * @return nombre
	 */
	public String getNombre() {
		return nombre;
	}
	/**
	 * @param nombre 
	 */
	public void setNombre(String nombre) {
		try {
		int chivato;
		do {
			Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
			// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
			Matcher mat = pat.matcher(nombre);
			chivato=0;
			if (mat.matches()) {
				chivato=1;
				this.nombre = nombre;
			}
		}while(chivato==0);
		}catch(PatternSyntaxException e) {
			e.printStackTrace();
		}
	}
	/**
	 * @return the posicion
	 */
	public String getPosicion() {
		return posicion;
	}
	/**
	 * @param posicion 
	 */
	public void setPosicion(String posicion) {
		try {
			int chivato;
			do {
				Pattern pat = Pattern.compile("[A-Z]{2,3}");
				// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
				Matcher mat = pat.matcher(nombre);
				chivato=0;
				if (mat.matches()) {
					chivato=1;
					this.posicion = posicion;
				}
			}while(chivato==0);
			}catch(PatternSyntaxException e) {
				e.printStackTrace();
			}
		}
	/**
	 * @return the dorsal
	 */
	public String getDorsal() {
		return dorsal;
	}
	/**
	 * @param dorsal 
	 */
	public void setDorsal(String dorsal) {
		try {
			int chivato;
			do {
				Pattern pat = Pattern.compile("[0-9]{1,2}");
				// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
				Matcher mat = pat.matcher(nombre);
				chivato=0;
				if (mat.matches()) {
					chivato=1;
					this.dorsal = dorsal;
				}
			}while(chivato==0);
			}catch(PatternSyntaxException e) {
				e.printStackTrace();
			}
		}
	/**
	 * @return the goles
	 */
	public String getGoles() {
		return goles;
	}
	/**
	 * @param goles 
	 */
	public void setGoles(String goles) {
		try {
			int chivato;
			do {
				Pattern pat = Pattern.compile("[0-9]{1,2}");
				// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
				Matcher mat = pat.matcher(goles);
				chivato=0;
				if (mat.matches()) {
					chivato=1;
					this.goles = goles;
			}
		}while(chivato==0);
		}catch(PatternSyntaxException e) {
			e.printStackTrace();
		}
	}
	/**
	 * @return the asistencias
	 */
	public String getAsistencias() {
		return asistencias;
	}
	/**
	 * @param asistencias 
	 */
	public void setAsistencias(String asistencias) {
		try {
			int chivato;
			do {
				Pattern pat = Pattern.compile("[0-9]{1,2}");
				// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
				Matcher mat = pat.matcher(asistencias);
				chivato=0;
				if (mat.matches()) {
					chivato=1;
					this.asistencias = asistencias;
				}
			}while(chivato==0);
			}catch(PatternSyntaxException e) {
				e.printStackTrace();
			}
		}
	
	/**
	 * @return the nombreequipo
	 */
	public String getNombreequipo() {
		return nombreequipo;
	}
	/**
	 * @param nombreequipo
	 */
	public void setNombreequipo(String nombreequipo) {
			try {
			int chivato;
			do {
				Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
				// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
				Matcher mat = pat.matcher(nombre);
				chivato=0;
				if (mat.matches()) {
					chivato=1;
					this.nombreequipo = nombreequipo;
				}
			}while(chivato==0);
			}catch(PatternSyntaxException e) {
				e.printStackTrace();
			}
		}
}
