package com.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class Jugadores {
	private String nombre; 
	private String posicion;
	private String dorsal;
	private String nombreequipo;
/**
 * @param nombre  del jugador
 * @param posicion en el campo
 * @param dorsal, numero del jugador
 * @param nombreequipo, selección del jugador
 * @author Daniel García y Víctor Rey
 * @since april 25 
 */
	public Jugadores( String nombre, String posicion,String dorsal,String nombreequipo) {
		super();
		
		this.nombre = nombre;
		this.posicion = posicion;
		this.dorsal = dorsal;
		this.nombreequipo = nombreequipo;
	}
	/**
	 * @return the nombre
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
	 * @return the nombre_equipo
	 */
	public String getnombreequipo() {
		return nombreequipo;
	}


	/**
	 * @param nombre_equipo
	 */
	public void setNombreequipo(String nombreequipo) {
		try {																								
			int chivato;
			do {
				Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
				// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
				Matcher mat = pat.matcher(nombreequipo);
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
