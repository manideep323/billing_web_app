package com.fpix.controller;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fpix.service.IIndexService;
@RestController
public class IndexController {


	@Value("${flodersPath}")
	private String flodersPath;
	@Autowired
	private IIndexService indexService;
	
	/*@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView readFloderStructureAndConvetJson(Model model){
		JSONArray mainJson = indexService.readFloderStructure(flodersPath);
		model.addAttribute("jsonObject", mainJson);
		return new ModelAndView("/index");
		//System.out.println(flodersPath);
	}*/
	
	@RequestMapping(value = "/toc", method = RequestMethod.GET) 
	public ModelAndView messages() { 
		JSONArray mainJson = indexService.readFloderStructure(flodersPath);
		ModelAndView mav = new ModelAndView("/toc/index");
	    mav.addObject("messages", mainJson); 
	    System.out.println("::::::::::::::::::::"+mainJson);
	    return mav;
     }
}
