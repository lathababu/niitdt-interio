package com.niit.interioshoppers.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="Product")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pid;
	
	@NotEmpty
    private String prodname;

	@NotEmpty
	private String prodcatg;
	
	@NotEmpty
	private String prodcost;
	
	@Transient
	private MultipartFile prodimage;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getProdname() {
		return prodname;
	}

	public void setProdname(String prodname) {
		this.prodname = prodname;
	}

	public String getProdcatg() {
		return prodcatg;
	}

	public void setProdcatg(String prodcatg) {
		this.prodcatg = prodcatg;
	}

	public String getProdcost() {
		return prodcost;
	}

	public void setProdcost(String prodcost) {
		this.prodcost = prodcost;
	}

	public MultipartFile getProdimage() {
		return prodimage;
	}

	public void setProdimage(MultipartFile prodimage) {
		this.prodimage = prodimage;
	}
	
	
}
