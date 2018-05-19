<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Academico</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">
<link href="vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">
<link href="dist/css/sb-admin-2.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -
->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script
src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Lista de Estudiantes</div>
						<div class="panel-body">
							<table width="100%"
								class="table table-striped tablebordered
table-hover"
								id="dataTables-estudiante">
								<thead>
									<tr>
										<th>Nro.</th>
										<th>Código</th>
										<th>DNI</th>
										<th>Apellido Paterno</th>
										<th>Apellido Materno</th>
										<th>Nombres</th>
										<th>Email</th>
										<th>Dirección</th>
										<th>Edad</th>
									</tr>
								</thead>
								<tbody id="listaEstudiantes">
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/metisMenu/metisMenu.min.js"></script>
	<script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script src="vendor/datatables-responsive/dataTables.responsive.js"></script>
	<script src="dist/js/sb-admin-2.js"></script>
	<script>
		$(document).ready(function() {
$.ajax({
						url : "/Academico/servlet",
						type : "GET",
						dataType : "json",
						success : function(estudiantes) {
							var str = '';
							$(estudiantes).each(
									function(i, estudiante) {
										str += '<tr class="odd gradeX">'
												+ ' <td>'
												+ (i + 1)
												+ '</td>'
												+ ' <td class="center">'
												+ estudiante.codigo
												+ '</td>'
												+ ' <td class="center">'
												+ estudiante.dni
												+ '</td>'
												+ ' <td>'
												+ estudiante.paterno
												+ '</td>'
												+ ' <td>'
												+ estudiante.materno
												+ '</td>'
												+ ' <td>'
												+ estudiante.nombres
												+ '</td>'
												+ ' <td>'
												+ estudiante.email
												+ '</td>'
												+ ' <td>'
												+ estudiante.direccion
												+ '</td>'
												+ ' <td>'
												+ estudiante.edad
												+ '</td>'
												+ ' </tr>';
									});
							$("#listaEstudiantes").html(str);
							$('#dataTables-estudiante').DataTable({
								responsive : true
							});
						}
					});
				});
	</script>
</body>
</html>
