/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.CategoriaModel;
import model.EstabelecimentoModel;
import model.ItemModel;

/**
 *
 * @author Alexandre
 */
public class CategoriaDAO {
    private Conexao conBD = null;

    //Declaração do método construtor
    public CategoriaDAO() {
        conBD = new Conexao();
    }
    public List<CategoriaModel> listarCategorias(int estabelecimento_ideestabelecimento){
        try {
            String sql = "select * from categoria where estabelecimento_idestabelecimento = ?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, estabelecimento_ideestabelecimento);
            
            ResultSet rs = ps.executeQuery();
            
            List<CategoriaModel> categorias = new ArrayList();
            
            while (rs.next()){
                CategoriaModel cat = new CategoriaModel();
                cat.setNome(rs.getString("nome"));  
                //cat.setDescricao(rs.getString("descricao")); 
                cat.setIdcategoria(rs.getInt("idcategoria"));  
                cat.setEstabelecimento_idestabelecimento(rs.getInt("estabelecimento_idestabelecimento"));
                categorias.add(cat);
            }
            
            ps.close();
            rs.close();
            conBD.fecharConexao();
            
            return categorias;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(CategoriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;        
    }
        public int cadastrar(CategoriaModel cat) {
        try {

            String sql = "insert into categoria (nome,estabelecimento_idestabelecimento) values (?,?)";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, cat.getNome());
            ps.setInt(2, cat.getEstabelecimento_idestabelecimento());

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public boolean deleteCategoria(CategoriaModel cat) {
        try {
            ItemDAO itdao = new ItemDAO();
            
            if(itdao.deleteItem(cat)){
            String sql = "DELETE FROM categoria WHERE idcategoria = ? and estabelecimento_idestabelecimento = ?";
            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, cat.getIdcategoria());
            ps.setInt(2, cat.getEstabelecimento_idestabelecimento());

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();
            return true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
