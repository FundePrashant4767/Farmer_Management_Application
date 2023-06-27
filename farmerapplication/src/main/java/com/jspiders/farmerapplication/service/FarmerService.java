package com.jspiders.farmerapplication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspiders.farmerapplication.POJO.FarmerPOJO;
import com.jspiders.farmerapplication.repository.FarmerRepository;

@Service
public class FarmerService {

	@Autowired
	private FarmerRepository repository;

	public FarmerPOJO addFarmers(String name, String email, long mobile, String address, String gender, int age,
			int income, int familymember, String cast, String DOB, int totalFarm, String otrzymane) {
		FarmerPOJO pojo = repository.addStudent(name, email, mobile, address, gender, age, income, familymember, cast,
				DOB, totalFarm, otrzymane);
		return pojo;
	}

	public FarmerPOJO searchFarmers(int id) {
		FarmerPOJO pojo = repository.searchFarmer(id);
		return pojo;
	}

	public List<FarmerPOJO> allFarmers() {
		List<FarmerPOJO> farmers = repository.allFarmers();
		return farmers;
	}

	public FarmerPOJO removeFarmers(int id) {
		FarmerPOJO pojo = repository.removeFarmers(id);
		return pojo;
	}

	public FarmerPOJO updateFarmers(int id, String name, String email, long mobile, String address, String gender,
			int age, int income, int familymember, String cast, String DOB, int totalFarm, String otrzymane) {
		FarmerPOJO pojo = repository.updateFarmers(id, name, email, mobile, address, gender, age, income, familymember,
				cast, DOB, totalFarm, otrzymane);
		return pojo;
	}
}
