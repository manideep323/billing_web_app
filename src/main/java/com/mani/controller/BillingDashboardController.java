package com.mani.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mani.document.Product;
import com.mani.document.SolrProduct;
import com.mani.repository.SolrProductRepositry;
import com.mani.service.BillingDashboardService;
import com.mani.service.ProductService;

@Controller
public class BillingDashboardController {
	@Autowired
	private BillingDashboardService billingDashboardService;
	@Autowired
	private ProductService productService;
	
	/*@RequestMapping(value = "/billingDashboardBkp", method = RequestMethod.GET)
	public String showBillingDashboardPage() {
		return "billingDashboard";
	}*/
	@RequestMapping(value = "/billingDashboard", method = RequestMethod.GET)
	public String showBillingDashboardPage(Model model) {
		model.addAttribute("products", productService.getProducts());
		return "billingDashboard";
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/searchProductCode", method = RequestMethod.GET)
	//public Page<SolrProduct> searchProductCode(@RequestParam("product_code") int product_code) {
	public Map<String, Object> searchProductCode(Model model, @RequestParam  String searchText) {
		System.out.println("comming");
		Map<String,Object> map = new HashMap<String, Object>();
	 
		//map.put("products", billingDashboardService.searchProductCode());
		System.out.print("before");
		return map;
	}
}
