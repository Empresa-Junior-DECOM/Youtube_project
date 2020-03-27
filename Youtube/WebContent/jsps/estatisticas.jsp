<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- cabeçalho -->
	<jsp:include page="../topo.jsp"></jsp:include>
	
	<!-- conexão -->
	<sql:setDataSource var="bd" driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:XE" user="mauricio"
		password="jane00" />
	
	<!--  query -->
	<sql:query dataSource="${bd}" var="result"> SELECT MAX(totaldevotos) from DADOS </sql:query>
	
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
				<!-- <c:forEach var="row" items="${result.rows}"> -->
					<tr>
						<!-- <td><c:out value="${row.id}" /></td>  -->
						<td><a href="${row}" ><i class="material-icons" style="font-size:24px;color:black">edit</i></a><a href="${row.url}" ><i class="material-icons" style="font-size:24px;color:red">delete_forever</i></a></td>
						<td><c:out value="${result.rows}" /></td>
						<td><c:out value="${row}" /></td>
						<td><c:out value="${row}" /></td>
						<td><c:out value="${row}" /></td>
					</tr>
				 <!-- </c:forEach> -->
			</table>
		</div>
	</div>
	
	<!-- links -->
	<jsp:include page="../links.jsp"></jsp:include>
	
	<!-- rodapé -->
	<jsp:include page="../rodape.jsp"></jsp:include>
</body>
</html>