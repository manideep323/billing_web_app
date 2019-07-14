package com.mani.controller;

import javax.validation.Valid;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mani.document.Customer;
import com.mani.document.SolrCustomer;
import com.mani.service.CustomerService;


@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	

	
	@RequestMapping(value = "/insertCustomer", method = RequestMethod.GET)
	public String showInsertCustomerPage(ModelMap model, Customer customer) {
		//model.addAttribute("");
		return "insertCustomer";
	}
	
	@RequestMapping(value = "/insertCustomer", method =  RequestMethod.POST)
	public String insertCustomer(ModelMap model, @Valid Customer customer, BindingResult result, SolrCustomer solrCustomer) {
		String error = customerService.insertCustomer(customer,solrCustomer);
		model.addAttribute("error",error);
		return "insertCustomer";
		/*System.out.println("5555555"+result1);
		if(result.hasErrors()) {
			return result1;	
		}
		if(result1 != null) {
			return "customer";	
		}
		return "customers";*/
	}
	@RequestMapping(value = "/deleteCustomer", method = RequestMethod.GET)
	public String deleteCustomer(@RequestParam ObjectId id, ModelMap model, final RedirectAttributes redirectAttributes) {
		String result = customerService.deleteCustomer(id);
		if(result != null) {
		redirectAttributes.addFlashAttribute("result", result);
		}
		return "redirect:/customers";
	}	
	
	@RequestMapping(value = "/updateCustomer", method = RequestMethod.GET)
	public String showUpdateCustomerPage(@RequestParam ObjectId id, ModelMap model) {
		model.put("customer", customerService.updateCustomerToPage(id));
		return "/updateCustomer";
	}
	@RequestMapping(value = "/updateCustomer", method = RequestMethod.POST)
	public String updateCustomer(ModelMap model, @Valid Customer customer, BindingResult result, @RequestParam ObjectId id, final RedirectAttributes redirectAttributes) {
		String status = customerService.updateCustomer(customer,id);
		model.addAttribute("status", status);
		redirectAttributes.addFlashAttribute("result", "customer updated Successfully..");
		return "redirect:/customers";
	}

	
	@RequestMapping(value = "/customers", method = RequestMethod.GET)
	public ModelAndView getCustomers(Model model){
		 model.addAttribute("customers", customerService.getCustomers());
	     return new ModelAndView("customers");
	}
}
