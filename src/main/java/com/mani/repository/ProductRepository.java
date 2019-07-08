package com.mani.repository;


import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.mani.document.Product;
//@Repository

public interface ProductRepository extends MongoRepository<Product, ObjectId> {
	
}
