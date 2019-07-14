package com.mani.controller;

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

@Controller
public class BillingDashboardController {
	@Autowired
	private BillingDashboardService billingDashboardService;
	
	
	@RequestMapping(value = "/billingDashboard", method = RequestMethod.GET)
	public String showBillingDashboardPage() {
		return "billingDashboard";
	}
	@RequestMapping(value = "/searchProductCode", method = RequestMethod.GET)
	//public Page<SolrProduct> searchProductCode(@RequestParam("product_code") int product_code) {
	public String searchProductCode(Model model) {
		Page<SolrProduct> findByProductCode = billingDashboardService.searchProductCode();
		model.addAttribute("products", findByProductCode);
		return "searchProductCode";
	}
}
