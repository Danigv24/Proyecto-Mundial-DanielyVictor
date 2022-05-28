package com.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class Usuarios {
	private String gmail;
	private String pwd;
	/**
	 * @param gmail, email del usuario
	 * @param pwd, contraseña del usuario
	 */
	public Usuarios( String gmail, String pwd) {
		super();
		
		this.gmail = gmail;
		this.pwd = pwd;
	}
	
	/**
	 * @return the gmail
	 */
	public String getGmail() {
		return gmail;
	}
	/**
	 * @param gmail 
	 */
	public void setGmail(String gmail) {
		try {
			int chivato;
			do {
				Pattern pat = Pattern.compile("([a-zA-Z0-9]+)\\@([a-zA-Z0-9]+)([\\.])([a-zA-Z\\.]+{3,50}");
				// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
				Matcher mat = pat.matcher(gmail);
				chivato=0;
				if (mat.matches()) {
					chivato=1;
					this.gmail = gmail;
				}
			}while(chivato==0);
			}catch(PatternSyntaxException e) {
				e.printStackTrace();
			}
	}
	/**
	 * @return pwd
	 */
	public String getPwd() {
		return pwd;
	}
	/**
	 * @param pwd 
	 */
	public void setPwd(String pwd) {
		try {
			int chivato;
			do {
				Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
				// TE COMPRUEBA QUE EL NOMBRE SIGA EL PATRON
				Matcher mat = pat.matcher(pwd);
				chivato=0;
				if (mat.matches()) {
					chivato=1;
					this.pwd = pwd;
				}
			}while(chivato==0);
			}catch(PatternSyntaxException e) {
				e.printStackTrace();
			}
	}
}
