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
public class CategoriaModel {
    private int estabelecimento_idestabelecimento;
    private int idcategoria;
    private String nome;
    private String descricao;
    private double preco;

    public CategoriaModel() {
    }

    
    
    public CategoriaModel(int estabelecimento_idestabelecimento, int idcategoria, String nome, String descricao, double preco) {
        this.estabelecimento_idestabelecimento = estabelecimento_idestabelecimento;
        this.idcategoria = idcategoria;
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco;
    }
    
    
    
    public int getEstabelecimento_idestabelecimento() {
        return estabelecimento_idestabelecimento;
    }

    public void setEstabelecimento_idestabelecimento(int estabelecimento_idestabelecimento) {
        this.estabelecimento_idestabelecimento = estabelecimento_idestabelecimento;
    }

    public int getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(int idcategoria) {
        this.idcategoria = idcategoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    
}
