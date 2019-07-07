package com.mani.controller;

import java.util.List;

import javax.xml.ws.BindingType;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.mani.document.Product;
import com.mani.service.ProductService;
@RestController
public class ProductController {

	@Autowired
	private ProductService productService;
	
	

	@RequestMapping(value = "/insertProduct", method = RequestMethod.GET)
	public ModelAndView showInsertProductPage(ModelMap model, Product product) {
		//model.addAttribute("");
		return new ModelAndView("insertProduct");
	}
	
	@RequestMapping(value = "/insertProduct", method =  RequestMethod.POST)
	public String insertProduct(ModelMap model, Product product, BindingResult result) {
		String result1 = productService.insertProduct(product);
		if(result.hasErrors()) {
			return result1;	
		}
		if(result1 != null) {
			return "product";	
		}
		return "products";
	}
	
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView getProducts(Model model){
		 model.addAttribute("products", productService.getProducts());
	     return new ModelAndView("products");
	}
}
