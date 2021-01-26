package br.com.farmaciadobem.farmaciaDoBem.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

@Entity
@Table(name = "tb_farmacia")
public class Produto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@Size(min = 1 , max = 50)
	private String nome;
	
	@NotNull
	private float valor;
	
	@NotNull
	private int quantidade;
	
	@NotNull
	@Size(min =2 , max = 20)
	private String unidade;


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public float getValor() {
		return valor;
	}


	public void setValor(float valor) {
		this.valor = valor;
	}


	public int getQuantidade() {
		return quantidade;
	}


	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}


	public String getUnidade() {
		return unidade;
	}


	public void setUnidade(String unidade) {
		this.unidade = unidade;
	}
}
