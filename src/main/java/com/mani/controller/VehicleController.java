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

import com.mani.document.Vehicle;
import com.mani.service.VehicleService;
@Controller
public class VehicleController {

	@Autowired
	private VehicleService vehicleService;
	
	

	@RequestMapping(value = "/insertVehicle", method = RequestMethod.GET)
	public String showInsertVehiclePage(ModelMap model, Vehicle vehicle) {
		//model.addAttribute("");
		return "insertVehicle";
	}
	
	@RequestMapping(value = "/insertVehicle", method =  RequestMethod.POST)
	public String insertVehicle(ModelMap model, @Valid Vehicle vehicle, BindingResult result) {
		String error = vehicleService.insertVehicle(vehicle);
		model.addAttribute("error",error);
		return "insertVehicle";
		/*System.out.println("5555555"+result1);
		if(result.hasErrors()) {
			return result1;	
		}
		if(result1 != null) {
			return "vehicle";	
		}
		return "vehicles";*/
	}
	@RequestMapping(value = "/deleteVehicle", method = RequestMethod.GET)
	public String deleteVehicle(@RequestParam ObjectId id, ModelMap model) {
		String result = vehicleService.deleteVehicle(id);
		
		if(result != null) {
			System.out.println("attr");
		model.addAttribute("result", result);
		}
		return "redirect:/vehicles";
	}	
	
	@RequestMapping(value = "/updateVehicle", method = RequestMethod.GET)
	public String showUpdateVehiclePage(@RequestParam ObjectId id, ModelMap model) {
		model.put("vehicle", vehicleService.updateVehicleToPage(id));
		return "/updateVehicle";
	}
	@RequestMapping(value = "/updateVehicle", method = RequestMethod.POST)
	public String updateVehicle(ModelMap model, @Valid Vehicle vehicle, BindingResult result, @RequestParam ObjectId id, final RedirectAttributes redirectAttributes) {
		String status = vehicleService.updateVehicle(vehicle,id);
		//System.out.println(vehicle.getBrand_name());
		model.addAttribute("status", status);
		redirectAttributes.addFlashAttribute("message", "vehicle updated Successfully..");
		return "redirect:/vehicles";
	}

	
	@RequestMapping(value = "/vehicles", method = RequestMethod.GET)
	public ModelAndView getVehicles(Model model){
		 model.addAttribute("vehicles", vehicleService.getVehicles());
	     return new ModelAndView("vehicles");
	}
}
