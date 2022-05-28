package com.model;

public class Resultados {
	private String jornada;
	private String EquipoL;
	private String EquipoV;
	private String resultado;
	/**
	 * @param jornada, ronda de eliminatorias
	 * @param equipoL, equipo Local
	 * @param equipoV, equipo Visitante
	 * @param resultado del partido
	 */
	public Resultados(String jornada, String equipoL, String equipoV, String resultado) {
		super();
		this.jornada = jornada;
		this.EquipoL = equipoL;
		this.EquipoV = equipoV;
		this.resultado = resultado;
	}
	/**
	 * @return jornada
	 */
	public String getJornada() {
		return jornada;
	}
	/**
	 * @param jornada 
	 */
	public void setJornada(String jornada) {
		this.jornada = jornada;
	}
	/**
	 * @return the equipoL
	 */
	public String getEquipoL() {
		return EquipoL;
	}
	/**
	 * @param equipoL 
	 */
	public void setEquipoL(String equipoL) {
		EquipoL = equipoL;
	}
	/**
	 * @return equipoV
	 */
	public String getEquipoV() {
		return EquipoV;
	}
	/**
	 * @param equipoV 
	 */
	public void setEquipoV(String equipoV) {
		EquipoV = equipoV;
	}
	/**
	 * @return resultado
	 */
	public String getResultado() {
		return resultado;
	}
	/**
	 * @param resultado 
	 */
	public void setResultado(String resultado) {
		this.resultado = resultado;
	}
}
