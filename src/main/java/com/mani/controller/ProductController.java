package com.mani.controller;

import java.util.List;

import javax.validation.Valid;
import javax.xml.ws.BindingType;

import org.bson.types.ObjectId;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mani.document.Product;
import com.mani.service.ProductService;
@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	

	@RequestMapping(value = "/insertProduct", method = RequestMethod.GET)
	public String showInsertProductPage(ModelMap model, Product product) {
		//model.addAttribute("");
		return "insertProduct";
	}
	
	@RequestMapping(value = "/insertProduct", method =  RequestMethod.POST)
	public String insertProduct(ModelMap model, @Valid Product product, BindingResult result) {
		String error = productService.insertProduct(product);
		model.addAttribute("error",error);
		return "insertProduct";
		/*System.out.println("5555555"+result1);
		if(result.hasErrors()) {
			return result1;	
		}
		if(result1 != null) {
			return "product";	
		}
		return "products";*/
	}
	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public String deleteProduct(@RequestParam ObjectId id, ModelMap model, final RedirectAttributes redirectAttributes) {
		String result = productService.deleteProduct(id);
		if(result != null) {
		redirectAttributes.addFlashAttribute("result", result);
		}
		return "redirect:/products";
	}	
	
	@RequestMapping(value = "/updateProduct", method = RequestMethod.GET)
	public String showUpdateProductPage(@RequestParam ObjectId id, ModelMap model) {
		model.put("product", productService.updateProductToPage(id));
		return "/updateProduct";
	}
	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public String updateProduct(ModelMap model, @Valid Product product, BindingResult result, @RequestParam ObjectId id, final RedirectAttributes redirectAttributes) {
		String status = productService.updateProduct(product,id);
		model.addAttribute("status", status);
		redirectAttributes.addFlashAttribute("result", "product updated Successfully..");
		return "redirect:/products";
	}

	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView getProducts(Model model){
		 model.addAttribute("products", productService.getProducts());
	     return new ModelAndView("products");
	}
}
