<jsp:directive.page import="java.sql.*" />
<jsp:declaration>
	static String url = "jdbc:oracle:thin:@localhost:1521:XE";
	static String usuario = "mauricio";
	static String senha = "jane00";
	static Connection conexao;
	
	public void init() throws ServletException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conexao = DriverManager.getConnection(url,usuario,senha);
			conexao.setAutoCommit(false);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
</jsp:declaration>

<jsp:scriptlet>
		String cpfmascara = request.getParameter("cpf");
		cpfmascara = cpfmascara.replaceAll("[.-]", "");
		long cpf = Long.parseLong(cpfmascara);
		String senha = request.getParameter("senha");
		
		// linha que gerou o problema (eu acho!)
		session.setAttribute("cpf", cpf); 

		String consulta = "SELECT * FROM usuarios Where cpf='"+cpf+"' and senha='"+senha+"'";
		Statement statement;
		
		try {
			statement = conexao.createStatement();
			ResultSet rs = statement.executeQuery(consulta);
			if (rs.next()) {
				session.setAttribute("mensagem","Usuário autenticado!");
				response.sendRedirect("../inicio.jsp");
			} else {
				session.setAttribute("mensagem","Usuário não autenticado.");
				response.sendRedirect("../login.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		//removeAttribute("cpf");
		//HttpSession session = request.getSession();
		//Object x = session.getAttribute("cpf");
		}
	

</jsp:scriptlet>