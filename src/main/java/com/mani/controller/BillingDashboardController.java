package com.mani.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mani.document.Invoice;
import com.mani.document.Product;
import com.mani.document.SolrProduct;
import com.mani.document.Vehicle;
import com.mani.repository.SolrProductRepositry;
import com.mani.service.BillingDashboardService;
import com.mani.service.CustomerService;
import com.mani.service.ProductService;
import com.mani.service.VehicleService;

@Controller
public class BillingDashboardController {
	@Autowired
	private BillingDashboardService billingDashboardService;
	@Autowired
	private ProductService productService;
	@Autowired
	private VehicleService vehicleService;
	@Autowired
	private CustomerService customerService;
	/*@RequestMapping(value = "/billingDashboardBkp", method = RequestMethod.GET)
	public String showBillingDashboardPage() {
		return "billingDashboard";
	}*/
	@RequestMapping(value = "/billingDashboard", method = RequestMethod.GET)
	public String showBillingDashboardPage(Model model,Invoice invoice) {
		model.addAttribute("products", productService.getProducts());
		model.addAttribute("vehicles", vehicleService.getVehicles());
		model.addAttribute("customers", customerService.getCustomers());
		return "billingDashboard";
	}
	@RequestMapping(value = "/billingDashboard", method = RequestMethod.POST)
	public String insertInvoice(ModelMap model, @Valid Invoice invoice, BindingResult result) {
		billingDashboardService.insertBillingDashboard(invoice);
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
