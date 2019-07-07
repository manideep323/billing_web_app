package com.mani.service;

import java.util.List;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mani.document.Product;
import com.mani.repository.ProductRepository;
import com.mongodb.DuplicateKeyException;
import com.mongodb.MongoException;

@Service
public class ProductService {

	
private Logger logger = Logger.getLogger(this.getClass());
	@Autowired
	ProductRepository dao;
	
	public String insertProduct(Product product) {
		String Result = null;
		System.out.println("00000"+product.getProduct_code());
		try {
			dao.save(product);
		//System.out.println(dao.save(new Product(101, "doemhgjkfj", "hi", 2, 3, "30.2", "sf", 28.0f, 3465, "kdjf")));
		}
		catch (org.springframework.dao.DuplicateKeyException d) {
			//d.printStackTrace();
			Result = "product code is exists please try with other code";
		}
		catch (MongoException e) {
			Result = "database excption please contat development team";
	    }
		
	return Result;	
	}
	
	//logger.info("insertProduct -> {}", ProductService.createProduct);
	
	
	public List<Product> getProducts(){
		return dao.findAll();
	}
}
