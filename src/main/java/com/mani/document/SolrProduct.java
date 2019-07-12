package com.mani.document;


import org.apache.solr.client.solrj.beans.Field;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.solr.core.mapping.SolrDocument;

@SolrDocument(solrCoreName = "products")
public class SolrProduct {
	@Indexed
	@Field
	@Id
	private int product_code;
	@Indexed
	@Field
	private String brand_name;
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public SolrProduct(int product_code, String brand_name) {
		super();
		this.product_code = product_code;
		this.brand_name = brand_name;
	}
	 public SolrProduct() {
			super();
	}
	
	
}
