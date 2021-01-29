/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class EstabelecimentoModel {
    private int idestabelecimento;
    private String nome;
    private String email;
    private String senha;
    private String descricao;
    private String telefone;
    private String imagem;
    private String logradouro;
    private String bairro;
    private int numero;
    private String cidade;
    private String estado;
    private double log;
    private double lati;
    private String complemento;

    public EstabelecimentoModel() {
    }

    public EstabelecimentoModel(int idestabelecimento, String nome, String email, String senha, String descricao, String telefone, String imagem, String logradouro, String bairro, int numero, String cidade, String estado, double log, double lati, String complemento) {
        this.idestabelecimento = idestabelecimento;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.descricao = descricao;
        this.telefone = telefone;
        this.imagem = imagem;
        this.logradouro = logradouro;
        this.bairro = bairro;
        this.numero = numero;
        this.cidade = cidade;
        this.estado = estado;
        this.log = log;
        this.lati = lati;
        this.complemento = complemento;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public int getIdestabelecimento() {
        return idestabelecimento;
    }

    public void setIdestabelecimento(int idestabelecimento) {
        this.idestabelecimento = idestabelecimento;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public double getLog() {
        return log;
    }

    public void setLog(double log) {
        this.log = log;
    }

    public double getLati() {
        return lati;
    }

    public void setLati(double lati) {
        this.lati = lati;
    }
     
    
}
