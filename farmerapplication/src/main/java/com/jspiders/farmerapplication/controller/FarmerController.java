package com.jspiders.farmerapplication.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.jspiders.farmerapplication.POJO.AdminPOJO;
import com.jspiders.farmerapplication.POJO.FarmerPOJO;
import com.jspiders.farmerapplication.service.FarmerService;

@Controller
public class FarmerController {
	@Autowired
	private FarmerService service;

	// Home controller
	@GetMapping("/home")
	public String home(@SessionAttribute(name = "login", required = false) AdminPOJO admin, ModelMap map) {
		if (admin != null) {
			return "Home";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Add form controller
	@GetMapping("/add")
	public String addPage(@SessionAttribute(name = "login", required = false) AdminPOJO admin, ModelMap map) {
		if (admin != null) {
			return "AddFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Add data controller
	@PostMapping("/add")
	public String addStudent(@RequestParam String name, @RequestParam String email, @RequestParam long mobile,
			@RequestParam String address, @RequestParam String gender, @RequestParam int age, @RequestParam int income,
			@RequestParam int familymember, @RequestParam String cast, @RequestParam String DOB,
			@RequestParam int totalFarm, @RequestParam String otrzymane, ModelMap map,
			@SessionAttribute(name = "login", required = false) AdminPOJO admin) {
		if (admin != null) {
			FarmerPOJO pojo = service.addFarmers(name, email, mobile, address, gender, age, income, familymember, cast,
					DOB, totalFarm, otrzymane);
			// Success
			if (pojo != null) {
				map.addAttribute("msg", "Data inserted successfully. ");
				return "AddFarmer";
			}
			// Failure
			map.addAttribute("msg", "Data not inserted. ");
			return "AddFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Search Page controller
	@GetMapping("/search")
	public String searchPage(@SessionAttribute(name = "login", required = false) AdminPOJO admin, ModelMap map) {
		if (admin != null) {
			return "SearchFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Search Data controller
	@PostMapping("/search")
	public String searchFarmer(@RequestParam int id, ModelMap map,
			@SessionAttribute(name = "login", required = false) AdminPOJO admin) {
		if (admin != null) {
			FarmerPOJO pojo = service.searchFarmers(id);
			// Success
			if (pojo != null) {
				map.addAttribute("farmer", pojo);
				map.addAttribute("msg", "Farmer record found. ");
				return "SearchFarmer";
			}
			// Failure
			map.addAttribute("msg", "Farmer data does not exist. ");
			return "SearchFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Remove page controller
	@GetMapping("/remove")
	public String removePage(ModelMap map, @SessionAttribute(name = "login", required = false) AdminPOJO admin) {
		if (admin != null) {
			List<FarmerPOJO> farmers = service.allFarmers();
			map.addAttribute("farmers", farmers);
			return "RemoveFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Remove data controller
	@PostMapping("/remove")
	public String removeFarmer(@RequestParam int id, ModelMap map,
			@SessionAttribute(name = "login", required = false) AdminPOJO admin) {
		if (admin != null) {
			FarmerPOJO pojo = service.removeFarmers(id);
			// Success
			if (pojo != null) {
				List<FarmerPOJO> farmers = service.allFarmers();
				map.addAttribute("farmers", farmers);
				map.addAttribute("msg", "Farmer data removed successfully. ");
				return "RemoveFarmer";
			}
			// Failure
			List<FarmerPOJO> farmers = service.allFarmers();
			map.addAttribute("farmers", farmers);
			map.addAttribute("msg", "Farmer data does not exist. ");
			return "RemoveFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Update page controller
	@GetMapping("/update")
	public String updatePage(ModelMap map, @SessionAttribute(name = "login", required = false) AdminPOJO admin) {
		if (admin != null) {
			List<FarmerPOJO> farmers = service.allFarmers();
			map.addAttribute("farmers", farmers);
			return "UpdateFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Update view controller
	@PostMapping("/update")
	public String updateFarmers(@RequestParam int id, ModelMap map,
			@SessionAttribute(name = "login", required = false) AdminPOJO admin) {
		if (admin != null) {
			FarmerPOJO pojo = service.searchFarmers(id);
			// Success
			if (pojo != null) {
				map.addAttribute("farmer", pojo);
				return "UpdateFarmer";
			}
			// Failure
			map.addAttribute("msg", "Farmer data does not exist. ");
			List<FarmerPOJO> farmers = service.allFarmers();
			map.addAttribute("farmers", farmers);
			return "UpdateFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

	// Update data controller
	@PostMapping("/updateData")
	public String updateStudent(@RequestParam int id, @RequestParam String name, @RequestParam String email,
			@RequestParam long mobile, @RequestParam String address, @RequestParam String gender, @RequestParam int age,
			@RequestParam int income, @RequestParam int familymember, @RequestParam String cast,
			@RequestParam String DOB, @RequestParam int totalFarm, @RequestParam String otrzymane, ModelMap map,
			@SessionAttribute(name = "login", required = false) AdminPOJO admin) {
		if (admin != null) {
			FarmerPOJO pojo = service.updateFarmers(id, name, email, mobile, address, gender, age, income, familymember,
					cast, DOB, totalFarm, otrzymane);
			// Success
			if (pojo != null) {
				map.addAttribute("msg", "Farmer data updated. ");
				List<FarmerPOJO> farmers = service.allFarmers();
				map.addAttribute("farmers", farmers);
				return "UpdateFarmer";
			}
			// Failure
			map.addAttribute("msg", "Farmer data not updated. ");
			List<FarmerPOJO> farmers = service.allFarmers();
			map.addAttribute("farmers", farmers);
			return "UpdateFarmer";
		}
		map.addAttribute("msg", "Please login first. ");
		return "Login";
	}

}
