/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Alexandre
 */
public class ItemModel {
    private int iditem;
    private int categoria_idcategoria;
    private int estabelecimento_idestabelecimento;
    private String nome;
    private Double preco;
    private String descricao;

    public ItemModel() {
    }

    public ItemModel(int iditem, int categoria_idcategoria, int estabelecimento_idestabelecimento, String nome, Double preco, String descricao) {
        this.iditem = iditem;
        this.categoria_idcategoria = categoria_idcategoria;
        this.estabelecimento_idestabelecimento = estabelecimento_idestabelecimento;
        this.nome = nome;
        this.preco = preco;
        this.descricao = descricao;
    } 
    
    public int getIditem() {
        return iditem;
    }

    public void setIditem(int iditem) {
        this.iditem = iditem;
    }

    public int getCategoria_idcategoria() {
        return categoria_idcategoria;
    }

    public void setCategoria_idcategoria(int categoria_idcategoria) {
        this.categoria_idcategoria = categoria_idcategoria;
    }

    public int getEstabelecimento_idestabelecimento() {
        return estabelecimento_idestabelecimento;
    }

    public void setEstabelecimento_idestabelecimento(int estabelecimento_idestabelecimento) {
        this.estabelecimento_idestabelecimento = estabelecimento_idestabelecimento;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
}
