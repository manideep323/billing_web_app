package com.mani.repository;


import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.mani.entity.Product;
//@Repository
public interface ProductRepository extends MongoRepository<Product, Integer> {
	
}
