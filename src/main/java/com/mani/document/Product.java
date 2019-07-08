package com.mani.document;


import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@Document(collection="products")
public class Product {
	@Id
	private ObjectId id;
	@Indexed(unique=true)
	private int product_code;
	private String manufacturer_company;
	@Indexed
	private String brand_name;
	private int class_type;
	private int division;
	private String unit;
	private String sme;
	private float rate;
	private int hsn_code;
	private String safe_dist;
	
	public Product() {
		super();
	}
	
	public Product(int product_code, String manufacturer_company, String brand_name, int class_type, int division,
			String unit, String sme, float rate, int hsn_code, String safe_dist) {
		//super();
		this.product_code = product_code;
		this.manufacturer_company = manufacturer_company;
		this.brand_name = brand_name;
		this.class_type = class_type;
		this.division = division;
		this.unit = unit;
		this.sme = sme;
		this.rate = rate;
		this.hsn_code = hsn_code;
		this.safe_dist = safe_dist;
	}
	public ObjectId getId() {
		return id;
	}
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public String getManufacturer_company() {
		return manufacturer_company;
	}
	public void setManufacturer_company(String manufacturer_company) {
		this.manufacturer_company = manufacturer_company;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public int getClass_type() {
		return class_type;
	}
	public void setClass_type(int class_type) {
		this.class_type = class_type;
	}
	public int getDivision() {
		return division;
	}
	public void setDivision(int division) {
		this.division = division;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getSme() {
		return sme;
	}
	public void setSme(String sme) {
		this.sme = sme;
	}
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	public int getHsn_code() {
		return hsn_code;
	}
	public void setHsn_code(int hsn_code) {
		this.hsn_code = hsn_code;
	}
	public String getSafe_dist() {
		return safe_dist;
	}
	public void setSafe_dist(String safe_dist) {
		this.safe_dist = safe_dist;
	}
	
	}
