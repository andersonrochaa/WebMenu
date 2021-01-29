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
import model.EstabelecimentoModel;

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

    public int cadastrar(EstabelecimentoModel est) {
        try {

            String sql = "insert into estabelecimento (nome,email,senha,descricao,telefone,imagem,estado) values (?,?,?,?,?,?,?)";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, est.getNome());
            ps.setString(2, est.getEmail());
            ps.setString(3, est.getSenha());
            ps.setString(4, "O melhor estabelecimento do mundo!");
            ps.setString(5, est.getTelefone());
            ps.setString(6, "NotFound.png");
            ps.setString(7, "UF");

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public boolean validarSessao(EstabelecimentoModel est) throws SQLException {
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

    public EstabelecimentoModel listarEstabelecimentoId(int id) {
        try {
            EstabelecimentoModel est = new EstabelecimentoModel();
            String sql = "select * from estabelecimento where idestabelecimento = ?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                est.setIdestabelecimento(rs.getInt("idestabelecimento"));
                est.setEmail(rs.getString("email"));
                est.setNome(rs.getString("nome"));
                est.setDescricao(rs.getString("descricao"));
                est.setTelefone(rs.getString("telefone"));
                est.setImagem(rs.getString("imagem"));
                est.setEstado(rs.getString("estado"));
                est.setCidade(rs.getString("cidade"));
                est.setBairro(rs.getString("bairro"));
                est.setLogradouro(rs.getString("logradouro"));
                est.setComplemento(rs.getString("complemento"));
                est.setNumero(rs.getInt("numero"));
                est.setLati(rs.getDouble("lati"));
                est.setLog(rs.getDouble("long"));
            }

            return est;

        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }

    }

    public boolean updateEndereco(EstabelecimentoModel est) {
        try {
            String sql = "update estabelecimento set Logradouro = ?, bairro=?,numero=?,cidade=?,estado=?,complemento=? where idestabelecimento = ?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, est.getLogradouro());
            ps.setString(2, est.getBairro());
            ps.setInt(3, est.getNumero());
            ps.setString(4, est.getCidade());
            ps.setString(5, est.getEstado());
            ps.setString(6, est.getComplemento());
            ps.setInt(7, est.getIdestabelecimento());
            
            ps.executeUpdate();

            return true;

        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
        public boolean updateEstabelecimento(EstabelecimentoModel est) {
        try {
            String sql = "update estabelecimento set nome=?, email=?,descricao=?,telefone=?  where idestabelecimento=?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, est.getNome());
            ps.setString(2, est.getEmail());
            ps.setString(3, est.getDescricao());
            ps.setString(4, est.getTelefone());
            ps.setInt(5, est.getIdestabelecimento());
            
            ps.executeUpdate();

            return true;

        } catch (Exception ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
