package com.mani.repository;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.mani.document.Vehicle;

@Repository
public interface VehicleRepository extends MongoRepository<Vehicle, ObjectId>{

}
