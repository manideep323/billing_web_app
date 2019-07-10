package com.mani.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mani.document.Vehicle;
import com.mani.repository.VehicleRepository;
import com.mongodb.MongoException;

@Service
public class VehicleService {
		
	private Logger logger = Logger.getLogger(this.getClass());
		@Autowired
		VehicleRepository dao;
		
		public String insertVehicle(Vehicle vehicle) {
			String result = null;
			try {
				dao.save(vehicle);
			//System.out.println(dao.save(new Vehicle(101, "doemhgjkfj", "hi", 2, 3, "30.2", "sf", 28.0f, 3465, "kdjf")));
			}
			catch (org.springframework.dao.DuplicateKeyException d) {
				result = "vehicle code is exists please try with other code";
			}
			catch (MongoException e) {
				result = "database excption please contat development team";
		    }
			if(result == null) {
				result = "vehicle created sucessful";
			}
			
		return result;	
		}
		//logger.info("insertVehicle -> {}", VehicleService.createVehicle);
		public List<Vehicle> getVehicles(){
			return dao.findAll();
		}
		public String deleteVehicle(ObjectId id) {
			
			String result = null;
			try {
			dao.delete(id);
			result ="vehicle deleted sucussesful";
			}
			catch(Exception e) {
				result = "error occured";
			}
			
			return result;
		}
		public Vehicle updateVehicleToPage(ObjectId id) {
			return dao.findOne(id);
		}
		public String updateVehicle(Vehicle vehicle, ObjectId id) {
			dao.delete(id);
			dao.save(vehicle);
			return "vehicle saved succesfully";
		}
}

