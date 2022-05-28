package com.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class Selecciones {
	private String id;
	private String nombreequipo;


	/**
	 * @param id, numero del equipo
	 * @param nombreequip, nombre de la selección
	 */
	public Selecciones(String nombreequipo,String id) {
		super();
		this.nombreequipo = nombreequipo;
		this.id=id;
	}
	/**
	 * @return nombreequipo
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
	/**
	 * @return  id
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id 
	 */
	public void setId(String id) {
		this.id = id;
	}
}
