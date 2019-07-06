package com.mani.controller;

import java.util.List;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.mani.entity.Product;
import com.mani.service.ProductService;
@RestController
public class ProductController {

	@Autowired
	private ProductService productService;
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public List<Product> getProducts(){
		System.out.println("+++++++++++prodcontrolle"); 
		//System.out.println(this.getClass().getSimpleName() + " - Get all employees service is invoked.");
	       
		 return productService.getProducts();
	}
	
	 
}
