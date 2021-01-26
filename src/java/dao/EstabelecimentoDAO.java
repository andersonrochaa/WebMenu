/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Estabelecimento;

/**
 *
 * @author Alexandre
 */
public class EstabelecimentoDAO {

    private Conexao conBD = null;

    //Declaração do método construtor
    public EstabelecimentoDAO() {
        conBD = new Conexao();
    }

    public int cadastrar(Estabelecimento est) {
        try {

            String sql = "insert into estabelecimento (nome,email,senha,descricao,telefone,imagem) values (?,?,?,?,?,?)";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, est.getNome());
            ps.setString(2, est.getEmail());
            ps.setString(3, est.getSenha());
            ps.setString(4, "O melhor estabelecimento do mundo!");
            ps.setDouble(5, est.getTelefone());
            ps.setString(6, "NotFound.png");

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public boolean validarSessao(Estabelecimento est) throws SQLException {
        try {
            String sql = "SELECT idestabelecimento, email, senha, nome FROM estabelecimento WHERE email = ?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, est.getEmail());

            ResultSet rs = ps.executeQuery();

            String password = null;
            while (rs.next()) {
                est.setIdestabelecimento(rs.getInt("idestabelecimento"));
                est.setEmail(rs.getString("email"));
                est.setEmail(rs.getString("nome"));
                password = (rs.getString("senha"));
            }

            return password != null && password.equals(est.getSenha());

        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;

    }
    public Estabelecimento listarEstabelecimentoId(int id){
        try {
            Estabelecimento est = new Estabelecimento();
            String sql = "select * from estabelecimento where idestabelecimento = ?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                est.setIdestabelecimento(rs.getInt("idestabelecimento"));
                est.setEmail(rs.getString("email"));
                est.setNome(rs.getString("nome"));
                est.setImagem(rs.getString("imagem"));
            }

            return est;

        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;        
        }


    }//fim método listarPessoa
}
