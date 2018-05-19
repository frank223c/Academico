package pe.edu.finesi.entidad;

import pe.edu.finesi.academico.Persona;

public class Estudiante extends Persona {
	private String codigo;

	public Estudiante() {
		super();
	}

	public Estudiante(String codigo) {
		super();
		this.codigo = codigo;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
}
