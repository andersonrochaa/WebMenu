package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Conexao {

    static Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    private Connection con;

    public Connection abrirConexao(){
        try{
            //Carrega o Drive
            Class.forName("com.mysql.jdbc.Driver");
            //Gerencia uma conexão passando o caminho usuário e a senha que nesse caso é vazio
            //con = DriverManager.getConnection("jdbc:mysql://localhost/bdoficinaautomotiva", "root", "");
            //con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/bdoficinaautomotiva", "root", "");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webmenu", "root", "");
            //Retorna uma conexão ativa
            return con;
        }catch(SQLException e){
            System.out.println("Erro de sql: "  + e.getMessage());
        }catch (ClassNotFoundException e) {
            System.out.println("Erro Classe não localizada: " + e.getMessage());
        }catch (Exception ex) {
            System.out.println("Erro Geral: " + ex.getMessage());
        }
        return null;
    }

    public void fecharConexao(){
        try{
            //Fecha a conexão
            this.con.close();
        }catch(SQLException e){
            System.out.println("Erro de SQL " + e.getMessage());
        }catch(Exception ex){
            System.out.println("Erro " + ex.getMessage());
        }
    }

    PreparedStatement prepareStatement(String sql, int RETURN_GENERATED_KEYS) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
