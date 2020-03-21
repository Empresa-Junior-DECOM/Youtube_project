<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
<title>Listar todos os registros</title>
</head>
<style>
</style>

<body>
	<!-- cabeçalho -->
	<jsp:include page="../topo.jsp"></jsp:include>
	<!-- conexão -->
	<sql:setDataSource var="bd" driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:XE" user="mauricio"
		password="jane00" />
	<sql:query dataSource="${bd}" var="result"> SELECT * from DADOS </sql:query>
	<!-- corpo -->
	<div class="container">
	<div class="jumbotron text-center">
		<h3>Estatísticas do Youtube</h3>
		<p>Ferramenta de exploração de resultados de vídeos.</p>
	</div>
		<div id="sm-12">
			<table class="table">
				<tr>
					<th>Opções</th> 
					<th>TITULO</th>
					<!-- <th>Acesso</th> -->
					<th>TOTAL DE VOTOS</th>
					<th>CURTIDAS</th>
					<th>DISLIKES</th>
				</tr>
				<c:forEach var="row" items="${result.rows}">
					<tr>
						<!-- <td><c:out value="${row.id}" /></td>  -->
						<td><a href="${row.url}" ><i class="material-icons" style="font-size:24px;color:black">edit</i></a><a href="${row.url}" ><i class="material-icons" style="font-size:24px;color:red">delete_forever</i></a></td>
						<td><c:out value="${row.titulo}" /></td>
						<td><c:out value="${row.totaldevotos}" /></td>
						<td><c:out value="${row.curtidas}" /></td>
						<td><c:out value="${row.dislikes}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<!-- links -->
	<jsp:include page="../links.jsp"></jsp:include>
	<!-- rodapé -->
	<jsp:include page="../rodape.jsp"></jsp:include>
</body>
</html>