package com.mani.repository;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.mani.document.Customer;

@Repository
public interface CustomerRepository extends MongoRepository<Customer,ObjectId>{

}
