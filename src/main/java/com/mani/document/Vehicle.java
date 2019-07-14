package com.mani.document;

import java.util.Date;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="vehicle")
public class Vehicle {
	
	@Id
	private ObjectId id;
	private String vehicleNo;
	private String licence;
	private Date validDate;
	private int capacity; 
	private String ownName;
	private double noCases;
	private double edCases;
	public Vehicle() {
		super();
	}
	public Vehicle(String vehicleNo, String licence, Date validDate, int capacity, String ownName, double noCases,
			double edCases) {
		super();
		this.vehicleNo = vehicleNo;
		this.licence = licence;
		this.validDate = validDate;
		this.capacity = capacity;
		this.ownName = ownName;
		this.noCases = noCases;
		this.edCases = edCases;
	}
	public ObjectId getId() {
		return id;
	}
	
	public String getVehicleNo() {
		return vehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}
	public String getLicence() {
		return licence;
	}
	public void setLicence(String licence) {
		this.licence = licence;
	}
	public Date getValidDate() {
		return validDate;
	}
	public void setValidDate(Date validDate) {
		this.validDate = validDate;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getOwnName() {
		return ownName;
	}
	public void setOwnName(String ownName) {
		this.ownName = ownName;
	}
	public double getNoCases() {
		return noCases;
	}
	public void setNoCases(double noCases) {
		this.noCases = noCases;
	}
	public double getEdCases() {
		return edCases;
	}
	public void setEdCases(double edCases) {
		this.edCases = edCases;
	}
	
	
	
 	

}
