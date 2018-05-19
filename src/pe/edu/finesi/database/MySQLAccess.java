package pe.edu.finesi.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import pe.edu.finesi.entidad.Estudiante;

public class MySQLAccess {
	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;

	public List getEstudiantes() throws Exception {
		List listaEstudiantes = new ArrayList();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost/academico?" + "user=root&password=admin123");
			String query = "Select p.*, e.codigo " + "From persona p, estudiante e "
					+ "Where p.idPersona = e.idPersona " + "Order By p.paterno, p.materno ";
			statement = connect.createStatement();
			resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				Estudiante estudiante = new Estudiante(resultSet.getString("codigo"));
				estudiante.setDni(resultSet.getString("dni"));
				estudiante.setPaterno(resultSet.getString("paterno"));
				estudiante.setMaterno(resultSet.getString("materno"));
				estudiante.setNombres(resultSet.getString("nombres"));
				estudiante.setFechaNacimiento(resultSet.getDate("fechaNacimiento"));
				estudiante.setEmail(resultSet.getString("email"));
				estudiante.setDireccion(resultSet.getString("direccion"));
				estudiante.setEdad(estudiante.getEdad());
				listaEstudiantes.add(estudiante);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			close();
		}
		return listaEstudiantes;
	}

	private void close() {
		try {
			if (resultSet != null) {
				resultSet.close();
			}
			if (statement != null) {
				statement.close();
			}
			if (connect != null) {
				connect.close();
			}
		} catch (Exception e) {
		}
	}
}