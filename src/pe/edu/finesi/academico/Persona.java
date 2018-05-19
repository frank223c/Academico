package pe.edu.finesi.academico;

import java.util.Calendar;
import java.util.Date;

public class Persona {
	private String dni;
	private String paterno;
	private String materno;
	private String nombres;
	private Date fechaNacimiento;
	private String email;
	private String direccion;
	private Integer edad;

	public Persona() {
		super();
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getPaterno() {
		return paterno;
	}

	public void setPaterno(String paterno) {
		this.paterno = paterno;
	}

	public String getMaterno() {
		return materno;
	}

	public void setMaterno(String materno) {
		this.materno = materno;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public int getEdad() {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(this.fechaNacimiento);
		Calendar today = Calendar.getInstance();
		int diffYear = today.get(Calendar.YEAR) - calendar.get(Calendar.YEAR);
		int diffMonth = today.get(Calendar.MONTH) - calendar.get(Calendar.MONTH);
		int diffDay = today.get(Calendar.DAY_OF_MONTH) - calendar.get(Calendar.DAY_OF_MONTH);
		// Si est� en ese a�o pero todav�a no los ha cumplido
		if (diffMonth < 0 || (diffMonth == 0 && diffDay < 0)) {
			diffYear = diffYear - 1;
		}
		return diffYear;
	}

}
