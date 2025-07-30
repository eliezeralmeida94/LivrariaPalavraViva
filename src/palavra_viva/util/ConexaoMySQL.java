package palavra_viva.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoMySQL {
    
 public static Connection getConexao() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/palavra_viva";
        String usuario = "root"; // ou o usuário que você configurou
        String senha = "root";       // coloque a senha que você usa no MySQL

        return DriverManager.getConnection(url, usuario, senha);
    }
}
