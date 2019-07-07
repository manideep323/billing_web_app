package com.mani.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mani.document.Product;
import com.mani.repository.ProductRepository;

@Service
public class ProductService {
private Logger logger = Logger.getLogger(this.getClass());
	
	ProductRepository dao;
	public void insertProduct() {
		System.out.println("___________insert");
		dao.save(new Product(101, "doem", "hi", 2, 3, "30.2", "sf", 28.0f, 3465, "kdjf"));
	}
	//logger.info("insertProduct -> {}", ProductService.createProduct);
	
	
	public List<Product> getProducts(){
		System.out.println("__________________ser");
		System.out.println(dao.findAll());
		return dao.findAll();
	}
}
