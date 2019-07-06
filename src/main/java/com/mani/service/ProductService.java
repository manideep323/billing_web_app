package com.mani.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mani.entity.Product;
import com.mani.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductRepository dao;
	public List<Product> getProducts(){
		System.out.println("__________________ser");
		System.out.println(dao.findAll());
		return dao.findAll();
	}
}
