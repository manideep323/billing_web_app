package com.mani.document;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

import javax.annotation.PreDestroy;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.domain.Persistable;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.format.annotation.DateTimeFormat;


@Document(collection="customers")
public class Customer implements Persistable<Serializable> {
	
	
	private static final long serialVersionUID = 1L;
	
	@Id
	private ObjectId id;
	@Indexed(unique=true)
	private long code;
	//@Indexed(unique=true)
	private String licNo;
	private String custName;
	@CreatedDate
	private Date createdDate;
	//@Indexed(unique=true)
	private String tinNo;
	//@Indexed(unique=true)
	private String gstNo;
	 @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date   validDt;
	private int stateCode;
	
	private Address billingAddress;
	private Address shippingAddress;
	//@Indexed(unique=true)
	private String docNo;
	
	@Override
	public boolean isNew() {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}


	public long getCode() {
		return code;
	}
	public void setCode(long code) {
		this.code = code;
	}
	
	public String getLicNo() {
		return licNo;
	}
	public void setLicNo(String licNo) {
		this.licNo = licNo;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public String getTinNo() {
		return tinNo;
	}
	public void setTinNo(String tinNo) {
		this.tinNo = tinNo;
	}
	public String getGstNo() {
		return gstNo;
	}
	public void setGstNo(String gstNo) {
		this.gstNo = gstNo;
	}
	public Date getValidDt() {
		return validDt;
	}
	public void setValidDt(Date validDt) {
		this.validDt = validDt;
	}
	public int getStateCode() {
		return stateCode;
	}
	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}
	public Address getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(Address billingAddress) {
		this.billingAddress = billingAddress;
	}
	public Address getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(Address shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public String getDocNo() {
		return docNo;
	}
	public void setDocNo(String docNo) {
		this.docNo = docNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", code=" + code + ", licNo=" + licNo + ", custName=" + custName
				+ ", createdDate=" + createdDate + ", tinNo=" + tinNo + ", gstNo=" + gstNo + ", validDt=" + validDt
				+ ", stateCode=" + stateCode + ", billingAddress=" + billingAddress + ", shippingAddress="
				+ shippingAddress + ", docNo=" + docNo + "]";
	}
	public void setId(ObjectId id) {
		this.id = id;
	}
	
	public ObjectId getId(){
		return id;
	}


	public Customer(ObjectId id, long code, String licNo, String custName, Date createdDate, String tinNo, String gstNo,
			Date validDt, int stateCode, Address billingAddress, Address shippingAddress, String docNo) {
		super();
		this.id = id;
		this.code = code;
		this.licNo = licNo;
		this.custName = custName;
		this.createdDate = createdDate;
		this.tinNo = tinNo;
		this.gstNo = gstNo;
		this.validDt = validDt;
		this.stateCode = stateCode;
		this.billingAddress = billingAddress;
		this.shippingAddress = shippingAddress;
		this.docNo = docNo;
	}
	
	
	
	
	

}
