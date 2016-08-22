package com.team1.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "quanlymassage")
public class Massage implements Serializable{

	private static final long serialVersionUID = -7988799579036225137L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column
	private String ten;
	@Column
	private String diachi;
	@Column
	private String PR;
	@Column
	private double giagoc;
	@Column
	private double giaKM;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getPR() {
		return PR;
	}
	public void setPR(String pR) {
		PR = pR;
	}
	public double getGiagoc() {
		return giagoc;
	}
	public void setGiagoc(double giagoc) {
		this.giagoc = giagoc;
	}
	public double getGiaKM() {
		return giaKM;
	}
	public void setGiaKM(double giaKM) {
		this.giaKM = giaKM;
	}
	@Override
	public String toString() {
		return "Massage [id=" + id + ", ten=" + ten + ", diachi=" + diachi + ", PR=" + PR + ", giagoc=" + giagoc
				+ ", giaKM=" + giaKM + "]";
	}
	

	
}
