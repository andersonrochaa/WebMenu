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
import model.ItemModel;

/**
 *
 * @author Alexandre
 */
public class ItemDAO {

    private Conexao conBD = null;

    //Declaração do método construtor
    public ItemDAO() {
        conBD = new Conexao();
    }

    public List<ItemModel> listarItem(CategoriaModel cat) {
        try {
            String sql = "select * from item where categoria_idcategoria = ? and estabelecimento_idestabelecimento = ?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, cat.getIdcategoria());
            ps.setInt(2, cat.getEstabelecimento_idestabelecimento());
            
            ResultSet rs = ps.executeQuery();

            List<ItemModel> itens = new ArrayList();

            while (rs.next()) {
                ItemModel item = new ItemModel();
                item.setNome(rs.getString("nome"));
                item.setDescricao(rs.getString("descricao"));
                item.setPreco(rs.getDouble("preco"));
                //item.setImagem(rs.getDouble("imagem"));
                itens.add(item);
            }

            ps.close();
            rs.close();
            conBD.fecharConexao();

            return itens;

        } catch (SQLException ex) {
            Logger.getLogger(CategoriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
    public boolean deleteItem(CategoriaModel cat) {
        try {

            String sql = "DELETE FROM item WHERE categoria_idcategoria = ? and estabelecimento_idestabelecimento = ?";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, cat.getIdcategoria());
            ps.setInt(2, cat.getEstabelecimento_idestabelecimento());

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return true;
        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public int cadastrar(ItemModel it) {
        try {

            String sql = "insert into item (categoria_idcategoria,estabelecimento_idestabelecimento,nome,preco,descricao) values (?,?,?,?,?)";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, it.getCategoria_idcategoria());
            ps.setInt(2, it.getEstabelecimento_idestabelecimento());
            ps.setString(3, it.getNome());
            ps.setDouble(4, it.getPreco());
            ps.setString(5, it.getDescricao());
            
            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(EstabelecimentoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
