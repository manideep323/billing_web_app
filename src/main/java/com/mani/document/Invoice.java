package com.mani.document;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="Invoice")
public class Invoice {
	@Id
	private ObjectId id;
	private String invoiceNumber;
	private String vehicleNo;
	
	public ObjectId getId() {
		return id;
	}
	public String getInvoiceNumber() {
		return invoiceNumber;
	}
	public void setInvoiceNumber(String invoiceNumber) {
		this.invoiceNumber = invoiceNumber;
	}
	public String getVehicleNo() {
		return vehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}
	public Invoice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Invoice(ObjectId id, String invoiceNumber, String vehicleNo) {
		super();
		this.id = id;
		this.invoiceNumber = invoiceNumber;
		this.vehicleNo = vehicleNo;
	}
	@Override
	public String toString() {
		return "Invoice [id=" + id + ", invoiceNumber=" + invoiceNumber + ", vehicleNo=" + vehicleNo + "]";
	}
	
}
