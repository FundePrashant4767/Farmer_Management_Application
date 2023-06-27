package com.jspiders.farmerapplication.POJO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name = "farmer_details")
public class FarmerPOJO {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "farmer_id")
	private int id;
	@Column(name = "farmer_name")
	private String name;
	@Column(name = "email_id")
	private String email;
	@Column(name = "mobile_no")
	private long mobile;
	@Column(name = "farmer_add")
	private String address;
	@Column(name = "farmer_gender")
	private String gender;
	@Column(name = "farmer_age")
	private int age;
	@Column(name = "farmer_income")
	private int income;
	@Column(name = "family_members")
	private int familymember;
	@Column(name = "cast")
	private String cast;
	@Column(name = "birthdate")
	private String DOB;
	@Column(name = "totalfarm")
	private int totalFarm;
	@Column(name = "Otrzymane")
	private String otrzymane;
}
